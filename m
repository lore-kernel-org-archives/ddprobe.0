Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A041F5F6
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753003793; cv=none; b=dK3QdMncEEtZ6emKfdICnDU3StNBKs4VEkLWmLVVBrmj+tAJrIuaUlBqSUNets/I9t0jWp2TqM9WYTnlvx826PYXoajHsKUJlaQ1LKX1hqP3ijHAcwG4K439YTvdYjBzwgQlb68nfez8+ApuCimSRpLFnjKDi5KGxcpC8gSDLUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753003793; c=relaxed/simple;
	bh=ZbNr5qklR+sTucL9OXiVddYJrnvEVdwCHUWzNsHFZYY=;
	h=To:Subject:From:Message-Id:Date; b=r1UAXY4zvVKnSk6DYb1+QHd2xPPg5sXrSRAa4UzaG/qG3sf9SMBO4iyqFmZ1tUSZ1+OhtJATG3u1rZVqzmFDJp7GL1hkD5jJMSRWv2sWvllLDlouLvbe9AG4NfBi6z7BxUVgb1fmXW2fPBObAp2Y1VWt/wPXwvWBvBCQUwJ6JMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHO7qePn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHO7qePn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5279C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753003793;
	bh=ZbNr5qklR+sTucL9OXiVddYJrnvEVdwCHUWzNsHFZYY=;
	h=To:Subject:From:Date:From;
	b=DHO7qePnxmQjjXx2DlxU/ITZfbrpn7CLuAFXr+3XbUloRxbq7evIWLA0SrYK2zWud
	 u4NqzJY2Mf2HurvgVcMomQWjaolIDCXIJaqeUBnu/k2hYei2zWzEcISxOTgwyscxmD
	 8ZXPF8sjftAzV83v5ugoFRpihCH8up1LCHR46TJ/srBlTS+Wo+vqhZg/LkHi7X2gJA
	 yHVXrmbl/UvuKsRyuFsN3lU0P9fcrYlDMI7Tn62a5UESIuFiFc1SxdJiWXwM62yfOK
	 XVdeQWXiV7dJhiyWrlKYOIsknqKDIKnKFnLrOC61+9HcMx+V27oxNPaGgmeF5Gh2zt
	 fUEJy/WNsB45g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C37C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300379358.4078.17027966985511763715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c8b3cdef7981b61ff3f5190b9f0e41e32ceb481aac66e864630a7eeef37803f
Date: Sun, 20 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753003793
