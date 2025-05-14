Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FFA1B3956
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747262994; cv=none; b=P3ql4cRzkeDX9tV3SdTjTL5MVvnSu04+zJ79Aus0VvFV6q4dwQdR5Y55DMjiGvvirtB8v8OsDdvjg9MvbRWEcwpFuuH/uYAyEZi9/OVnoWbPecH2ronEXtuLuzOYlxfJzghmWdSyejSy2Ulwe6XB+5K3BX54Q8QxksYbhrXpISs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747262994; c=relaxed/simple;
	bh=HcUTNooZuOHZmGMzBLnoDttnEheL0C6B3+IylZrdDr0=;
	h=To:Subject:From:Message-Id:Date; b=NxVdCJRe1UWR9gRy1E7I08G6gTvESmqcBrJlsneQglofros2Qt33cu7p4rbR+gRu2/UNJsgr2MA4pFq+CAv2oEWxPCvKJBEUMBoY390rKcq7Kfn+U27IoUU9IjP4JE6q4rKCQOnxXP2+3PjHheH9lhFna4ZLE8a9Y76HehTXlqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pw31C7RR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pw31C7RR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFDB7C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747262993;
	bh=HcUTNooZuOHZmGMzBLnoDttnEheL0C6B3+IylZrdDr0=;
	h=To:Subject:From:Date:From;
	b=Pw31C7RRRT3TTAOYx8Eb1aEMZRZmlu9FYI+0xh3nl0X3PTNgmWRCafj5DS96NWVUD
	 EEFnt85IPlyLxUv7e9Pyej2GDv5ziH44UAwPRelchdabWRuCszI+czPdpF44zoEUcO
	 rUhaWuMf97GhxLEDCef0ASxfIs4TuboRmj3AIvYpiGkVCJLbNmaxvgBUmnKdmhvEnO
	 xgy7zfxQ8CMBibjKNSrcZem6LI2IyeC0kBxN4xQsg+OYMBOHSdyAyGxhJw8O7N/taX
	 gnEqJ1JLRudV48ze0TY4YUWNm7y/CTFGA3BVt8dMHOhZiJKopA2OfgHS8gsr2ysebw
	 AkIWbtAnrFPxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9EFC3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174726299358.4499.7632713125296724379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36cff545b6d8d62cb67dec888da653c71675fa69cf65ed5d087506f07df9ef3f
Date: Wed, 14 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747262993
