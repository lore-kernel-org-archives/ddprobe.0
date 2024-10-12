Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA1A1F5FA
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728737754; cv=none; b=g9YKsvWxQkPiNvAU9+9dYCLG1Uhdub2Suak8LBX/PJ5rfa3O2QxHewwSUzE/pUzxRLCxAs5ORxrcqsKOPtIsbo7NvM82UFfa55hzeKpWmPGnqKZMQWydgihlKSmxoX5kdE+LY+vyyAUIq54+y0pyCiWkUuAgqUPMraloMy0TgPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728737754; c=relaxed/simple;
	bh=Jz7HWeZ93VqWH/xIUiFADU5SH98nLgjLtdPSfuRf3eY=;
	h=To:Subject:From:Message-Id:Date; b=FRXzq6Y8K8TMhewGE51/cROGBQRmG4XN2lDANsQNjfPAAMeZdvrJ3lGPdEV1gwPTKHsTfFmHJjYrsgNahopRz5x4E/9QLs0Jx9A9oRy1zfkvPbPkakiP+BN5Dt8ZU4fB48tOB2d3CciYt4wxH0xzLGU1ady3McRUWamD2OWcD8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxTzbM1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxTzbM1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF77C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728737753;
	bh=Jz7HWeZ93VqWH/xIUiFADU5SH98nLgjLtdPSfuRf3eY=;
	h=To:Subject:From:Date:From;
	b=mxTzbM1nQlHvVq7XBT39TIgUtOAbcI8Lpm3IKF+I17L3CCqOgGCD+YwsqCdvYpNTT
	 X/QGN1O0/AMT68sCjhJdPBJURqE9vxs/FjzKNemygSkvN84GJDAFKdnswNM6dRm3g+
	 ZvmJ+9x7E8RlJe8/DEuqItbXghx6VMrtZ2ufBtVc34mS5j6G4NIJZy3JtlWftJgdNv
	 oZ/QsKfg6ifMxy/ucjNhwy57Zkq+eAPGKcUeAODPZuw3rx+qAa57zlK0r27yQW3PM2
	 LDTrCI+B9hKVcUA+h4S7ibosLm3FFKhrp88FfuMRYkkgrcFIAQ0+WQzyB9RUoSvN4L
	 u2HAd+6QhvJSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B69ECF2566
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172873775359.9006.14948285453121536951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301f1031f4121422a8cdc748ca7d74e0bcaf35df700bec5b2c4fef0f3bba620a
Date: Sat, 12 Oct 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728737753
