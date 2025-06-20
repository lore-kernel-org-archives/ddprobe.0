Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B86136988
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750438194; cv=none; b=ZWz/pyMIiq0u/o/tGnCcUxYiazml3sa/ijEdPSjsvJn/EFshIVY5ktINuUAWWEYQpj+U4vCbiUYV/F3C89K517PMgMaduAyViCCFMO/99cwQP5uvjGar8I8EgHHLMCBavSWuvxx8DLEf9T69ErEyycEQQlg/WDHx5X97bPf2bQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750438194; c=relaxed/simple;
	bh=XEX2pamhTNnv/LVkDAEyaLu37+wb/C/USo4B6gNdJPE=;
	h=To:Subject:From:Message-Id:Date; b=LfoaBVPeRqOBgM7+i9exjtCRvaToKJTlZrH1Pk2iUEkc2xlvc96WZdmdmsgl1wha8LiptocFtCPyBYsV0ubjorxgzU7g90bR8K1qCaZyt2Bu4T+Nrjyvuz5X1mHMfUOWntd/941v23ktjmaIUSpvUTNWKX3EvqsOtiPpaA9+j2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTLfagGQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTLfagGQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0027C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750438193;
	bh=XEX2pamhTNnv/LVkDAEyaLu37+wb/C/USo4B6gNdJPE=;
	h=To:Subject:From:Date:From;
	b=oTLfagGQ0esjIaKkQJj+AJfuJCbok6jRHTXDvu+NTgJ5sr4K82kcbA5nvtGjYPoly
	 yK0nRz7K2SaNF8nh24/DBRkQIvkTHi7ypRJNNNonPY5GG3f6efMvKm5+ZeB6Bz0AD9
	 fq66ZsHyX9blbOVaAZp854IDjrZmeYiy+FX0CoM1v99Ad4M7PHtez2p6HyHis1hYZ0
	 HzfVOwtc/j0STTRcb/bEyiGwsYWjABc83PUvHIR3A8+Kq4YMz+beJFiZeWubfmW3Sz
	 hPqcZO8sk0b1S8t/Kwk0Sre/jp6Tu+F0u/nNdPQNEdcYO2Z3ix4wrrsxsiI4Cj1xG3
	 eBM1r0pNRND4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7EBC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043819357.23339.10774824902582226391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae5712fa2b6d0200ea8cf2f0d4110919a4169683d61ab136789dcb3600c2b0a
Date: Fri, 20 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750438193
