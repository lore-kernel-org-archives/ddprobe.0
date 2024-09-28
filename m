Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2658D4A1B
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727495754; cv=none; b=gv39qV/o5QqP4GBZ1aXwaT9ZQ4mr9PeofP+2ebOaLnAriZFcQU0m5rgoXJ1FFw6i2Y6hsplVHDjoU9TsDUpsIFP8sEAFg3V7S2d9mb6dKxn44aQcfOMCv9hW/yr9/H3zhOUG+zmGpPWBPGx7OHdFCT/39Tbl1HofEmD9yCdGuYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727495754; c=relaxed/simple;
	bh=ns6pVdVPI8cXmb4kXD77FPq7UowyRpQOsfilQYObCr8=;
	h=To:Subject:From:Message-Id:Date; b=qPyq1Bno9hiEuJTEM+IAfNLQjLdKmPUV4iQhk+CeVZS9gWao40j1fFEMmuRiGGV9tS4RJwlDuQSRtdWXUAN7nrhOsiMppWnNTBmcTbWcuhVk90lDyyGsEc1l/U7k1S2PYawe6NRW208zUZQIvdQlDjwv4pomxk5OkNeUTScaFCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRuoFi7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRuoFi7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE71C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727495753;
	bh=ns6pVdVPI8cXmb4kXD77FPq7UowyRpQOsfilQYObCr8=;
	h=To:Subject:From:Date:From;
	b=JRuoFi7zOENxJgAUq1kSQRkuw65FFXsBvjyNMFHP08la6i8Ki9TrqrKArg3DIbBlm
	 KHNXcD2LvyhMWDH3mOG4JdcZLlCC2G7+42dXY2zlPOwZNkjwijfV5HxN6cRdOw5MKO
	 qQqjejcVyAlmjxX0QuEaLV4azLwLVOTdyAzOe9g2bAaId84EBIKUasSEVfFCWPmN/c
	 aHLu8YkTVXGI+cm2NDZwfN5iG6MoehW4eSRLLhYpzYHnaT15F/0mzV/f3Yeo3nYkEg
	 GCzUf10obygNBFVbFXe49HS+x65PItAhQLLl20lLsJBIY9AakLi65vSDR4yoGdvoMk
	 mk7cIwEXRGpHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D4ECF649A
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172749575360.7240.2090409322069502205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec0fe18eb9782761b20e7f65afc1e8942d5dd860c6045f6278f29372b3a6fce
Date: Sat, 28 Sep 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727495753
