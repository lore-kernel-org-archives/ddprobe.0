Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9AB2F2D
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754186994; cv=none; b=DSnAEV7Lz69RIOx3/g8GSZelaamPfMlgDYlHjA4cbexx5bULTS4zedhD0CO2dXa1maUwsq0jK2p9APvOyod5xNWOSToRPdd7VgfcDMCCj97lhMVaEALsa45bmqPpC5dVMNYYJ7nNNVLOwR9457QZ0QjypA4OLG0ed38lXwYSZqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754186994; c=relaxed/simple;
	bh=6cKhjFla3fSJZn3lj1/684yETb9PGBezHba4dCxDzrY=;
	h=To:Subject:From:Message-Id:Date; b=a3n8YVf10x7jrm219DI9v8L56oDOIQs1odUhYWVgkkobmWuh+hq6Dg3JFdcgoixO3PB+rii1pIzcF8nPAIcWW/VfyicXqSeWR7BrcOCBIh9354bPgfMqBWtc2Vh2C5HmESSLVrJ36J2FbPpwPrGC9fqeXf8TNPDywpol12K7vTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqX2TS9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqX2TS9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D96C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754186993;
	bh=6cKhjFla3fSJZn3lj1/684yETb9PGBezHba4dCxDzrY=;
	h=To:Subject:From:Date:From;
	b=HqX2TS9coLcAofJ5aLSOz8AfebB1C+8ybly2c4h5AgQ0oZYfL0vOOOtJumu7wKXR4
	 SDQKTB2Z1YHDgWkieVIcp+I3f17uMNWJ+a2ZcsecCx6lX/quKJpgsmRYkicI2kLQ5k
	 LvYwwS3o0V7Ua/RfSSzRIz1X0HQfFJ/qdkmrW5abv24P10/czCkrQXUtNUwxsXVGTH
	 0TR/8oOph7cqJgV3BsXYhOD3o5TMLbRGnPd7vYJ+sJovr9dwso1E5igbvKWtwS/y9S
	 Y9t4JIRLfxGEIQrk4YpvzHRUAzgqkvTbQzmHjFPIgua5i0Pr8QMAwYHdGthu5qFlc1
	 92djzveIVHKbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B47C87FD3
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418699357.3453.12629825457444777714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b0dde3a574ef5f2de494088e0e21dcbf5273016e98ccb9c5f0ed4a6be93e88
Date: Sun, 03 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754186993
