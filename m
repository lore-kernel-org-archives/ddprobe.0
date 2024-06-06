Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36668195F19
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 13:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717679243; cv=none; b=luNlRMn0Djd0ZXFR3XRFSyG12EsySNjPqUv1gQjPBIt63z4FTK0I5ZX8GPaf+gkxeASvp2gdX8S1TtYkAgj9xV+c98tJR93iw4N/RVEgmjPXA0n4UnwkVVIahSNgAThSXLmK4xI0xyyZzkgVyrkSwwDswkLkmk8TiKYzUlp6vBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717679243; c=relaxed/simple;
	bh=WmVoUCzmZ2Eh6iE2is+fkOTFv2VhsfShEhtp+BiD54U=;
	h=To:Subject:From:Message-Id:Date; b=X6BQY/dvlz+r1x1QOZawswORihp397KS6nzI6+qEp1gmJcwtOYqe+mIuHolyKWM+wOJHokAKLSQ0B0wgc3Yct8+M2qwKx2YWP1iqc3AnaOkZWpd5DGMTXJaZ78UsXcu2Z8l737zic32Ybk2uDtWqxWRNh5OYTVyFZzvGomd3BFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujme/bD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujme/bD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08C95C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 13:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717679243;
	bh=WmVoUCzmZ2Eh6iE2is+fkOTFv2VhsfShEhtp+BiD54U=;
	h=To:Subject:From:Date:From;
	b=ujme/bD/ELPPXlDUliXxqaxOERu1ZH+HK/AcHDeCrJhJfKe3iXo4nWwRBECcVUls4
	 S0VeN6uld2fp2gkGBEv12ry4/SGye3U5zhvoN/f1IJdzlpLmSS90TyNRsq60d8TqDJ
	 dNVswDsi+r6TmDHMviKXGmGJpoQCVHObrYgQgNRnoSP8ogCuEjZjxaCdsp3CjLh6/w
	 +niQM6Iw1m/Pe97ZZOSqsAGhZePkobRPp3nC++fx6jLqhRLxLki5mFjECvssp2c7LN
	 dm/rP9zX35lyq69URNdzeYwvF86BnciFVZy1FnrlTN4D0qYG9EBU4AOaGUQPpFeuC0
	 MKe1GENweTZPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE607C27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 13:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171767924287.11221.18018545447241889713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b139eec265a2ee68aea26e3cdaf6b8ded9968c4b0e2b5c49b7388b5981eaa707
Date: Thu, 06 Jun 2024 13:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717679242
