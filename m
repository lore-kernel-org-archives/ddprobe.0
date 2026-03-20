Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4B337DE80
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774002294; cv=none; b=OMt6si07bhi3C/51PeBHYn0KnjakSZ8MSvH+yCmOpp5AvREDoJ3W6HGFI2bhNWSfJkGqNUtCz7GCI3bLCrBQloC3Ix0EAUGy93+rjxibrTi7OKbXrylHAsHNvgVoSEkKHTVekxZpUHC/AM0V20ZZYf78CaE4PEIrK2aV5iM31q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774002294; c=relaxed/simple;
	bh=8pyIqNoYfUYTjdGL6EPGigHpS0i/vcoNnRwD7ie3cKU=;
	h=To:Subject:From:Message-Id:Date; b=Ee+nBtAd83xKSp65pDbQLc3vy+ZrOaXL7WUMH1FCfl+BbiPSW8MmDILHwOtVMPC8HgWYZNzrnwVFPbGpveoJtowdvRpCCHNAZPS8qz4WVY1ZjnTvEBt913id+tjO+6ELEsXnZwA7n7Tj2Q5E3jSINl2/6bg6CNZ4JIHObfDvsSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7UTlq4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7UTlq4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C241C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774002293;
	bh=8pyIqNoYfUYTjdGL6EPGigHpS0i/vcoNnRwD7ie3cKU=;
	h=To:Subject:From:Date:From;
	b=d7UTlq4VerqtU35mV9XtuR4PPFImr0a7MFsb/p9oGOUX8wH4ZL4vZYbHYC6Gzb7JP
	 qwkTiiwubbUVxPITg+wHAja6xdVXp9bifK3Qow7WgE2YSDL6JHuZCaEuPVkowmj9ct
	 Ch4BKA6TiEp5uhJZ99Mf9Q+jnw11G2kGJZcZnOqNMW3k3OYseLJYzg4WrP2fLk+bAU
	 KoUxfpJlthb70o83gJMCrJ7MaPRc0GBZfdcIUQmZzSpD53RGqqgHygtJ7YBWzkg3Se
	 R6qYxFErDpuf3OOeAb2zh6fkX55JRHKZJcjsiYJ2lW9vRtkRoUQlmlSHWo23vdbeTG
	 P1VHOXWgCSVjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC7108B8EC
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177400229357.5605.169970126060227690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5c5b7581980fd40e3f507ec2672b2782450d67037013fbabdb506eb7f48ab0
Date: Fri, 20 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774002293
