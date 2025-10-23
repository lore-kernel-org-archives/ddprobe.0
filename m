Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D6135B138
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761252594; cv=none; b=Jb79VaOaolHtYjTMP6MmkdlAqfrr5pj480eAd2w8GJWDJ+VxO5al4fUFdLoHPCbtwRQIbjqmu1VT3j8HkAeroC2/3XuPtcy5RoP6GIcmLM6aoeGfnuIlgHayGUHPlQsW+3Daa74kDEpfVGx2btPpOwPQoVAZio8ZGj7pUM0ll+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761252594; c=relaxed/simple;
	bh=M6e9qgEqNSilGeKp2K3n6b/SAwihxaAN85BoT8EAxG0=;
	h=To:Subject:From:Message-Id:Date; b=hZ9obth1BQZe90vMklWl/+EPk8FXRdWSTC44I43tpPOXqobAtM9ADN/ZsCNcdmN57ZgjumkezA0GNr76xLZEMpQpCtFtiyD75QjR3ropPZQdmo5Xu/2zHZYVovRjTP0hveam7HCrW3Xj2rtECgdbCMEbJ45Ta822WXEu/3whOBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3Tu4DTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3Tu4DTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26F9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761252593;
	bh=M6e9qgEqNSilGeKp2K3n6b/SAwihxaAN85BoT8EAxG0=;
	h=To:Subject:From:Date:From;
	b=p3Tu4DTXJV+ZqQwQWx7yKNpEPloTpfUd3MNK+G18xIR6MAkNxa5mgVEau7PAb1OfE
	 Uoj5XEtELZ4HKItIiMhgMiR4MNOJi8GlC00UhpoAqFB+RT/ZxoaH8VA/TbKpaRdzEd
	 jEwPJgDIaLMH7xInCDnZ6+AvDpXqB8n/m9eSEuEThjQk7Lm8b7FjkmrDhxauVUlR9W
	 v+w5JUKxyF99yUspEFaWcPLDPogFLmNrGsXnBQ3Zs5RnIpDZy0EnsC/WPkNp+S2NsU
	 +XpfN98q9vEjp+lPEA58eUFLjxY3RWx8sDqBv/94LmKW81rbivrgueN1C9t2vODALb
	 JcgLpKLKK1asA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91719CCD1BF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125259358.20125.4547391119049737057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d36af25047fbb7137d956e3a3637505916ff27a61d58e2542a052f2d185985
Date: Thu, 23 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761252593
