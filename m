Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4922036EC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746446394; cv=none; b=b33CYRCPluGvY8hZxCeUAIyWe2G3JHMdDbVm2ZnIm5fCe/mKRq2Yt0nz60QMgs7gKTXUitR1quQTWUJg8f1C/Q1kkI5lu/01OsN/3xfmbOcGbCNRYZrrYXPGMRkGcXyeqliqIHPX5F51y9QIVBEgQo3vqjMDd+SofoPLPx1hNrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746446394; c=relaxed/simple;
	bh=AKg3H4T70H7553/k2POkAEL3izwjNj8Rep6ceFvPOSQ=;
	h=To:Subject:From:Message-Id:Date; b=TCjICjmpuZyxx5oxzrMbTpqG/oH0JM0r5mk1QoDdGUiwge/BWCLm5dBms4Om+AR5cL3tvX9OnFQdTbcy/7vdAJfHytsbomTnQ93nBdTIZ9HmaqqLYk6QkerY+SyMEMBP/z78/fnd+86HfBwyvjFWsGswbAjOoE6BTKoLqahxkaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bip9E1Ia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bip9E1Ia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFC0C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746446393;
	bh=AKg3H4T70H7553/k2POkAEL3izwjNj8Rep6ceFvPOSQ=;
	h=To:Subject:From:Date:From;
	b=bip9E1IaJSLEbI8NDqHtaXa6vuhx6/1rtxaaeD02G7DSm2B3LaqmGU1hxphn2ENYo
	 CGfJzBMynSFBTSEjhNJJsAuJjbsRrhnP2tWlyDgXVchY8Kro5TvC/rocYEt7z6abU/
	 FeMOpUcX93kEkzmN2y8jG89stmtkwuQxM1Cbr0VKL74hTDZtfjYKv/RlV0G7iEBtVU
	 0UeL+tN72SR5BjRndVtq2BoIrYLI2mG21NOW18h5pkObGAxnb5ZFlyGG6hVMlXtmuK
	 r/cxDh0BJK8krHV+md3Y1GE7nnAFuNbk3f3NJDAoAFswRajGWzD32zHREnFOl2oDxe
	 7a7PvAk5Hnk6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E543C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174644639357.8932.10706624539961359429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 808a2a9e93751294ab8df1af8e6162960ce8064de1186080e275c9cc2acdbeae
Date: Mon, 05 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746446393
