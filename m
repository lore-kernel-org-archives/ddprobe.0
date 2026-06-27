Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DC813B7A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782539914; cv=none; b=C1lomRLmkh1nHjy4gW3XfIL0hgUjjMUIlmMmKZqeqe4ldnsfsHF4UhRoAtM6sGgvtysAiDXFHLsgS4nKfU5iGqdMfayMH0AQLXOR8JiAmMn3UjZb/4/ZiM4RcFCOQppBJcU/WF/r+66G0kcg4XWY9dNydVVpmirPihc3P1SR9p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782539914; c=relaxed/simple;
	bh=5hBQJ2NDEB3ap9+jxmPiXS3pRHDKJTJRS2Mo+qROYXY=;
	h=To:Subject:From:Message-Id:Date; b=PvCFYCauSMlCwyFaoa3wHLYAht/zZ2FtYTbNaGNKq5dxx5RZI2CAk65+eMnqW5yxkeD5u0gCRdGcblMOae/JdjaO4yVUTiwzNM+UGnuFHnRkowyetPWXIxttpA46FFt80dRByMjku5JUPPW5vi5o6c69c6z+Mkh4aufwOV0OBl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayuHfzQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayuHfzQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B45C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782539913;
	bh=5hBQJ2NDEB3ap9+jxmPiXS3pRHDKJTJRS2Mo+qROYXY=;
	h=To:Subject:From:Date:From;
	b=ayuHfzQ+hl+b6Uv5v+vwP45147AUfdkxpQ8FWD0Jfo9+y3wrn91hZ5N7kems4/lNI
	 o09aiBgbEdawozu5sv6gbUQcKu6Gxd+vfUmb2q9qSwMG9ePspFVQ3smuXZMhkU9fw6
	 FrC8uC/rBu7kIUOEs2Tr37hIA/rXAqAV16ItzrvarTa3TvX8ul4fxhxx8O3J7Hs2yj
	 tFcCgToXma1Ai5URQrG1OopzBiF8VafwgUiDGH66Utbbht4oKZXd5vh0gm4cus6xen
	 xGkSCgqIGoA+9F9V84IY5Pa00wru1nkQ8ZIiUltyhxRRPjla79tOH4nnkkwGkwMRmU
	 lQ8PL5usWf+Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BF6C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253991368.20087.7308773888319705148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da3edfc5960bf18f579733e7c49d171a27e40c8671683db6ee8fccc49c9efed
Date: Sat, 27 Jun 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782539913
