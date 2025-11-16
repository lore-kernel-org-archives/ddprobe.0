Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3116317D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763335914; cv=none; b=NeusmZ8xk1oOcLXNoMOjNjk0KCgKA3hEpCcuj6Q83HrrhGB7lmd+LnR4bLo6gu8OGj/D/uOPfVZxO+5OhVPvFftEozng47a24NrmhLvEFSaULTEqy4g5dYJYOLmFEvdRV3hsXPXwiZ/cHyyQntMud12JROF7nUPO1NhdVqy+i+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763335914; c=relaxed/simple;
	bh=waH/BUAM7L24L6zcNYoyvZvodVcqFw9qaAxXT3rpNyw=;
	h=To:Subject:From:Message-Id:Date; b=sFmUgRkED7arsU9XJ462G5Rt7XihveW/eZf+W8PffnL1MoMMWE2OjR6RI5Bwd9tyJ5cf5MgoKvyeFRNTzbNwzj0PUacM2EHBUl2EwAoXFxT1v2RVsjHLyujqjZA1H0VGnku8u/y9PQS1YF3RAFv68g3CxKX8Vxik7bjDMbLoEc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udcNgEUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udcNgEUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8391C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763335913;
	bh=waH/BUAM7L24L6zcNYoyvZvodVcqFw9qaAxXT3rpNyw=;
	h=To:Subject:From:Date:From;
	b=udcNgEUAUHYiLkus7opE2h6IbtWTcSda8ClOGYfft2PNmFPXJo9r+1jc2dlUmvByM
	 vxsk2krdxLMuumXLEIvDXeb0rKnW9BYZ1zwCv+jezABFEqpmITuMpofzt5qmG9wydT
	 MaDNXu33Zprz5GXUDPbvstIZEiLx8OZ5R++TLmRYYosCDimZ8ZcH3VIfonLHC+JJaA
	 asZtFU44HRVhVRbuDygJgMPXn3OlkmclG8CdlbVqfQmnjXxCcEs4M29y2ehmItZS2/
	 aU0FWtTgrgC7EZkvhcDj7+39C/NV7MWAm+PDhNx6xyJa6/QSxTTI1b57i53NBs2FWQ
	 if7kKxlaMReuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99587CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176333591359.11472.15460799754086777823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d230c556e4f1658293ba345bca11a675745bca3c4520f53fc16c3a09ae45ee80
Date: Sun, 16 Nov 2025 23:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763335913
