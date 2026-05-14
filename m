Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8963ADB8D
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778731834; cv=none; b=HxJQm5tQcqivFkrqbSqFpUf2Oak+x6BcaXsIw2lmf3RGJO/ExEBDo/PMSNOydY5ZlW2/ZqXhe3kbc2N7LtDEIZZt5SL86Z95t4KLziJJH82Kj39zSxa8h+zTr3HAGqHM1KQVhHaDK5untj55Y9sglqW+LAp8317sglXImoSVCAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778731834; c=relaxed/simple;
	bh=d3XhtBWdk3ydSfv2W/jlesvQ0OKyso44FvnzsjrnsHM=;
	h=To:Subject:From:Message-Id:Date; b=Oe9aOF5MXyzU+c5qQGss3tdD9xhgb3cvXoN4c/yTq7yZ7afh1IvlvqKcLdEZbEscVqRloNQgfilVuerpWLhVXslz8Cz1wQ16BLod5YoBH3MX9SVyGeClD+GjSsqfInyD7XDRRTty5HR/kO55v5iudsU6YepRRkDcSk5GULAhfm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6vVu9xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6vVu9xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5272C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778731833;
	bh=d3XhtBWdk3ydSfv2W/jlesvQ0OKyso44FvnzsjrnsHM=;
	h=To:Subject:From:Date:From;
	b=T6vVu9xe0qzEM3WmfAagftJLA3x3WXfswQu4mdjZEg0Teb1GmFSNm7AeQFLB/eGua
	 MvPGWhsSjCm3X0/niBxEQAyu0NZbB9pMKSseY8Fiz0/iGofs69dkP2O2vJGYuTPT2G
	 W85zz15PXEdUBAFoW2AP0wTTHPP3KHlQ0g5MvzHUs2rL/zd0Oc791+MGF5Rl6ZM+vP
	 UlzV7RUAoea/qJNiYQONsiUd48GiDZZbk+cBINSAwQC/DrK/qNbOHHIYCUQ8/VKXnL
	 8LboGIYLf0Esi0SOpPFuNH15cRowhoChXAMg5xXafaKJXsvavWC1WNsB1cMM3qwUpO
	 MMohgz8kUzA1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B571FCD4846
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873183370.31860.2861312780077588874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e883e1d6e7603cf480b3e1500708598352c9c77519b64f203cf06c937144292
Date: Thu, 14 May 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778731833
