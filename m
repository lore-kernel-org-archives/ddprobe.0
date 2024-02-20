Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDEDC52F68
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708401496; cv=none; b=snKAPtxBGUNjmuOEA4pjHB0IiaSeO9QTNpXgA2f7MYdLRmkNwOWbdf0QPDUVKc45KokxFRozHc1sVMBkvw9wamyWJpGPPvdORDsPDoIeVRdRO2CsW6j0XA/96858LKz4z0ABR4euCKnZDAMGITEEWC2lAEfSaot7aS+4SlaTzzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708401496; c=relaxed/simple;
	bh=pCEotJYw/UbOt69fPthy2Jb26JgkTo3OKBW/i1zGSpA=;
	h=To:Subject:From:Message-Id:Date; b=Fg6K0QSfK8FxVntwiGPsffsD6xAWgEOaMkzp8+rhf27MhgSn3HZQc5hKEcoumaWhScScOPSUv0FKAVO9AUIzA54S1jDM7AgRPaUxaFOkMhsjRvLVboAQcOndLpIxC8MP9YO7/h+cSSTuyyWI3pglCR2SeMbNz3jyCn2klFraH5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCTc/8nH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCTc/8nH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7577FC433F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708401496;
	bh=pCEotJYw/UbOt69fPthy2Jb26JgkTo3OKBW/i1zGSpA=;
	h=To:Subject:From:Date:From;
	b=NCTc/8nHUcWqNIXtj3yrSgg1VF0GJ58JYoizaYHaO0CImqbpjnXOVbvYf0z8NVde1
	 i6UVmNuVMYtD9zkm1e5YqnU0PDVJSS7iUD1Snb2CLKSxncRmGifOGDvu9N3MjApCcx
	 IN9lq3xrCzIbNgU3ryzDohT/uCRUYKkGPyW2ijUjfkcV9KJsmrFwK7SrClC9UmfeS5
	 jUua+arYhU5FQjb+oVXfI3ZMOK/6GonvH9G5kP2ftci3dGpLY4icNGZqaiQweO85wN
	 qYelNYzN8eR67XNqcTetNsd+idJyWBWi3V8/7jgYXRVsK6o40ExifM3z7cfww0cF2Q
	 J7gsbPdrUEreQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE3BC48BC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170840149637.26314.8546742271085003437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1492856a49b1ed2620f1fb3eed235d4f76e199d2145a0e2bffe0964d4491c1cd
Date: Tue, 20 Feb 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708401496
