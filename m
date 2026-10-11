Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8F530C160
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791733234; cv=none; b=B/aFUikS7HxjzowIpoXHYgPsraNWjiVUY2kcSqMRU4tRlGN8oq00LXosKe9AwpyicViJ79MWzgtJ/xf/122Jz5Tw8uTduHW98+42NTTviyEECoiA4nWTEvpOrN0nXAsvrsusMrA5S39q5mSeAnYBFxu6lRHxwIH9npZOxwWhpLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791733234; c=relaxed/simple;
	bh=E37ZTH2E7hlQgmjS2cs6DdoG/LvNccGk4gvC0MyEjNY=;
	h=To:Subject:From:Message-Id:Date; b=kmgmUmMFYOpq8x/Qc3q1aL+t9qojUEsCBhDwyx5PSFY2MHOtUUF8dhjee0NlNB32PnxN7T9pvovPRcZ3CIU+c7c8M4evvSj4mASABWMQOLwY9UmtNdT2pOalorQ1OszVli6NMUFDhhGfSfc9gI3qp/LkuXdrg7Q0X7+yaiyQV68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCotnCJM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCotnCJM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E61FFC2BCFB
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791733233;
	bh=E37ZTH2E7hlQgmjS2cs6DdoG/LvNccGk4gvC0MyEjNY=;
	h=To:Subject:From:Date:From;
	b=jCotnCJMPQ4xEXTrYF6dtQlvetfU+lL28dPUk3/Dh5rfQQncXULA9Tvq2Wy1Gwhup
	 4nShyKTh5eX0UmGTCkZ5XFe6BTRoS4ownm4bxNmkkSWH8DtN7iuuLiu0xiVl7vVKOG
	 2DD7vUuYTK/96xcOJSJyP/0KTWR55pbwQik1qPvxRDv2Pg2kxsEfARm82N14by7odD
	 KRXgzV8w+nKIfNXCrB05C/oY7APAwjjvoEXX4DZk8++Lua5B34Y9vQDQ6K0eWL+kEG
	 FJ/b+zqjRyFH/htW9Bg8IOsxqbfN41U60nwvshO6XPO3sy8WwjpA2k0m8hFP5xv2Zz
	 hFkwYV3TYuiVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF849CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173323373.29912.12590734062468114091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b94df0c1e2ad09f4aabf89a6d12c4d00f5946e7c91501d772b0ca71cef92c1e
Date: Sun, 11 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791733233
