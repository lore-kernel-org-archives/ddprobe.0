Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E6F330D43
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764838974; cv=none; b=CRgy1JYrODz/F4FVBnCuQQn8xEjG+c22nWg5CEa1o6oyxXcS9FdexdY68ZZqhplC7QPGxx6HfBum4v2gWAjWv+RS4gJ82OcVA9rtC/zfoy4cusGyO7J87lpWoJjLilYrcf9QfPEE4xQAeT5G4GObCz6Ah722/GXkr4fRNQ5houY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764838974; c=relaxed/simple;
	bh=EXZ08lOxR1Xi091BlThkHq5xghCjMHSYisHC7JL5N2M=;
	h=To:Subject:From:Message-Id:Date; b=Ubgm15R3N9aOB3zwDmeTIADlkdHDuVWygW5HJcdcryCHFYfJNpSNmvqc+ata/bIGMmh7c8WmzPHqci48hGdzx700G/tZii0FYWR0OZSU2tXY75iTbPKq1LZU8vS3+BMkjcYRzg3Q7errZ9cKvfb/lfKmxIi8WbcRuuzQsDpyUrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFmBbTGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFmBbTGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E44E9C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764838973;
	bh=EXZ08lOxR1Xi091BlThkHq5xghCjMHSYisHC7JL5N2M=;
	h=To:Subject:From:Date:From;
	b=tFmBbTGPaiss4psFzPWTea3i1lEsCKd9ueMFPN28Z0rgGYdqFqUm2OmClI1mevgkn
	 ywNbtAs2j1xKqCxfI0P5u29ery9dHSb/L3BUUxX/bvDUevnQZXs2Yt7fEnre1DOnsH
	 i0Je7rVLCwt6Mo8+zyoVxMIoIfsMbvi0pbCe3Qzc2gTa5GWZyhHmTjol6cNVZfv0Xm
	 p63n7juAOppsQ9tHY7+OCmXhAUFUPfd17LT0peB2pmESyjrQi7qOSOhhWiC2CrEC4j
	 iUrWm4snav2T6XWzXxZeiXOrgTS+thYAG373SiyWvEj/nY4x8lNxK5zq8dz2PYAWD1
	 fI3azYvwBtw6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9069D1D899
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176483897364.31014.3248015703929279915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e5a56c626fce8ea34f87cede334916a8c82ea0283f1168c980fcca02d52194
Date: Thu, 04 Dec 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764838973
