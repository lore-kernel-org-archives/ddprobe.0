Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92D86AF82
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708627696; cv=none; b=ni0pYPw+HIyB00oCXXiQCosRv7MK4gRaovYiWv8bmIbkVuZtSt8vqYAbBZCYoZKUTAI4k2UUV9NzHcLEjldrKjPMxE3cAZ5K48OQwYUH7Za/0/nuodBTUQNKAYzCz6YB1boxa0dugWvOVy2NHT42sOldcnBrEnrpuXJNuo2/kKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708627696; c=relaxed/simple;
	bh=MNFZIRabFx5ZdQ2dDeHY+4kzw5vUvLBXLIGx5j4g6pk=;
	h=To:Subject:From:Message-Id:Date; b=D5MIAu/ZYsrA4oldTmp1eCXccjNM+F0gZ2g0uvceRQl+hDh2M36aQnxcm4TIPruAHWTX4l0xUNGNBi3IjESfyLejOGJ+RVSqTganjGLcXKreNY9yXAPpULQAM54zVb7CdLubef87vHC9noQJNELF83ZeOiuqdDS74hc003DRTfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZX4ohRbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZX4ohRbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 788F7C433C7
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708627696;
	bh=MNFZIRabFx5ZdQ2dDeHY+4kzw5vUvLBXLIGx5j4g6pk=;
	h=To:Subject:From:Date:From;
	b=ZX4ohRbtQHJw7k+AiGDeOcMb9A+kJazk6+NmrLhDJV0R4NrN2QtWdGfVh37OSXGD+
	 5WwfmwA9E3yWvQF3ZtmlgC8LHbdOKQEOlk38e22dbLA2a5//fAGu/01H5yME71mAxd
	 FPUeKO1B4NoEH0x9j/OdHvHqW9+kdxvdkliBH88i18KfhgtJRT6ojpL8qzyES3/GtT
	 X52KTxF85lcJelHHxENCe5P4a8C22yA/DnDi8035SbN5q8kBAdsWF2P2Citc74MYaG
	 G4l7fbqIh1mHJ2Sga79OwyIUgMtK4izI2mad5lDAOdgbDAsNoaCKOkOAym9udxJtNC
	 uIwWBcKh7SdDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61079C5478C
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170862769638.2249.14774976618150493080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0ade9a6834cd1779d4d9f95cc1556d1f871283d8d9ee28fe9d5826e41f1b9d
Date: Thu, 22 Feb 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708627696
