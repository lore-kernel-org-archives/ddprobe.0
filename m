Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A89B3BB9F5
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783360714; cv=none; b=K8cZARjPfHYxIBuqzD/H7FTskKXKfTLMUps3cmEFHeocQbLCl7SHzFn2hQoxhQgsBivHaMcPzuyQJ9QOYhDDU32nAaIq8vyaQZ5FUVbclNRsqs8vEdMkdhEwHM6sH3o0KdAksTu3P+VhAuP9WuPv/eoFtU/t+UpBbqjizkDMMM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783360714; c=relaxed/simple;
	bh=OuFVR4OI1e7+O9W4qqiqg7sgQTNNjnNFLWXtQrkDTTE=;
	h=To:Subject:From:Message-Id:Date; b=jLBJoNbSLTu4XeVm0G4bDQaDJHcW4xrNNGD04TUosXsEnB+2LqYLZuEwLt9dG38MpVMqFALGjj+GA60q5yUXOW1S0Is6TVBoBuPvm9bdifryxc9IO1wndex5B5oHftpPOUmA6DJzRj23hbWCreM2s+BN+4X8NGqmctxSKN3p9Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5CAO7fV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5CAO7fV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93A7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783360713;
	bh=OuFVR4OI1e7+O9W4qqiqg7sgQTNNjnNFLWXtQrkDTTE=;
	h=To:Subject:From:Date:From;
	b=B5CAO7fVC8U6YYcnWHL1CWtV4FWmLyx67a9qZSv0zZVenzKjAGVzXFv8rvgCqDp9l
	 MhOKAiN0y+l22JOepgWPSJzqFt9nNIEvHrkYlQzGEF/HBglSazA3Iz9qto/XKcVsua
	 RLLmI/nOwo9B6uUlZbCNypDoYL/Lqbqoyjja+ktQn8cgsdJlBZmCmoeaCD8dLPLh4z
	 nvrMVz2DBivQ+P2GW5cB56ETjzI/FQ0hLyughbnmWaRhcJNKWjpUHu9LlNmY82SBB0
	 rddsQBG+wONrdyeJ8RffkJxEPb6bfTylN5XKfK403RieFufp7r/XksZS7FEFVmEUoG
	 OTWLmerztyjAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADD4C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336071369.1280.8252303396555626927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e493c25e5313500d92a3c5b8a2fa2403b9d5bbcf8b43893358dcd42b9f3f754a
Date: Mon, 06 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783360713
