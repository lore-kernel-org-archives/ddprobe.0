Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B478DF72
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762073994; cv=none; b=KDasnGAK1AoGcgYajfzrWMrgYkgH0Uh6QHLMnWgK6ic3xNFWdldIK0lCCMcaoVKxkmyO/CleZhKj7C8BYPOEwoR1KbpjsAKrxEFTn/6h7nYGrwYhLiAUw1cyv5H9rqlBDFd12Uu/b2xuCCQ67NrDAn2kURppi6wsICMvUr0mLoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762073994; c=relaxed/simple;
	bh=8bLsuMKQ1XZ5lt1gqX5DtFovb7yW/lxybT41WajJxGo=;
	h=To:Subject:From:Message-Id:Date; b=S0enU6X9RKNcqkGFI+9JPerpzzpWv7fwe+rWzj+FOxxBsyIqQGuCN1oevc3T97gdQdaIKAigiX7nYIZWsZ6aIkN6n0dfevMB6j0J4bO3d5SSMNGu2gEvpgzVHeTybYHZ6UnLQlU9MEyrHxGD8zMOTsXi67ZV4OwsRJiCogHq7V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CobHRhyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CobHRhyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B188FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762073993;
	bh=8bLsuMKQ1XZ5lt1gqX5DtFovb7yW/lxybT41WajJxGo=;
	h=To:Subject:From:Date:From;
	b=CobHRhygoZQDVtEUHsH2xIGaYjO0IKmCdlxow7xJC9SNxlNT0NptVawRR303QhiHW
	 T4DyHQnqBe5XUCmBssXEfkuaaOv/PJJNqVjc1LG8rXFgh0HxG+f25KLkIk0/7pE6CS
	 F5g5g10qnRoZiTZIUO9spO774FEcASNaA/Jywwpf9nSSeidnbyrnu3Q3nMUY9HXQ0z
	 g01+iz0+kRDz+MuaxjFy7gpr01YShhOIxCDVymAKRQXMOAGAEO+jAZEIZUPCdJdmDN
	 ApVulHJbzuRdQEU5DmP8v/Lziw5FxSlzuJH0sfsc9hN44MbZcCzu4hcwUpMs7WnJtN
	 FS7tPg7hc//2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B114CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207399359.20470.12164994129725437323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e035613925975aac8b2bbefdcfd87622e5e18d90fb6fa6a48851970dbac73c3
Date: Sun, 02 Nov 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762073993
