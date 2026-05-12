Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676F8477998
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778566235; cv=none; b=echDYWc87AND5vsvdYeL53+An5SIqZd8BmisH27Z6tfyn4Bq3gDH4Ccc67aPmxjol3lR/BESgfTM8W4t0A7s/3xBWMa7W+w83SLXfojuDsw547/R32q1un6LOVQZ8TGBV7s39/5nNV27fEdrV1HXWC3SuFPMv7iT68gfEqxSP7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778566235; c=relaxed/simple;
	bh=clkLkwHCiItJ4m+Ns81UPCWb8NT2rIt3MgvHLxFm9NA=;
	h=To:Subject:From:Message-Id:Date; b=eHbsUwlMe+kPvoFtyN6HrHKuZbvewr5gQKD9U+Qa8BzY/pqRHFieZDkZrz0CiGnR+AmZYrUfbGj5sZgaDbsBC9yrxxQgYWvMsjWvRtMd4j76WQaSYf5bw4Xpsq7awb5k6zSc/NtGrtJx8GzsbgaBPcgRBzAov87ZwNh8kEv6sEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1+I9q4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1+I9q4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8AC9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778566233;
	bh=clkLkwHCiItJ4m+Ns81UPCWb8NT2rIt3MgvHLxFm9NA=;
	h=To:Subject:From:Date:From;
	b=X1+I9q4ykOjEZEftMkbfxmiBLRwdGow73nirH2/zrGeqMMPxs9absoe0ga/SsksPR
	 MEMqkNntL9RtvsKttYZYiCeVcfchueypsfnwrpdN7YFt+2jQYj2JAJOjA6hb+Yj7Ff
	 C71YFEI87LFaKDBzDQnoBCN/cR6+fenxtL45jRH67mJZXbU+c1ODxS+Nsk863pZkEC
	 BqzNxbETqsbVTBBBo2hyNbh41yDscwKYoD3wSk9JPUyyyl/xi255yoiHIj/qM1kVY+
	 iDGxcx4rjx9p/JNE5e+o0OiD39id7JUZZVsnK/kGAyb4Wd3eZv7ULR8Mli7ZrC3aw9
	 RrmB3m0PVSnZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB106CD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856623369.6701.15072427205490814080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ed2467e613328f7fc65a55b5102f5c55a0ee760926072ff5589f49295d7c75b
Date: Tue, 12 May 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778566233
