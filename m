Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDA064A
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 04:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718166503; cv=none; b=eZA33UrgcbqKe7rxk1tUpTEQTSF5UJuw60gDUJPTvF6hHQDMU8bFDOjJCd1OFEEgr/P5CTnoHe5hQ9l+MxNP1onpWGCuTHpbyXafp8zzhVf/EueU/NeUenYvVrgckwnsS80PnZ8b1rqDiF/5N05TO/WFc5Lnk8wF8wStoaF5odE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718166503; c=relaxed/simple;
	bh=6McJ1UG9jplWZRKaUbdWy1mrH32NbAKTwHHQjVM5S/8=;
	h=To:Subject:From:Message-Id:Date; b=UT2ICWYKXMdW3EmSB/Gfg+QIYmx9Hb7pi1TNWBWOpDbrGY8/4SPVp48kX7O9D3UT0g4wKuSde8UpRVSS8Qww0adUQxKHNHhyuFOc448pp44z5/VExK5XZzjydBoH4YiZkXZIdMaTAMb8Qz2ovrU82twudZZu82sxOSSk9psPE5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6SWJ3B8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6SWJ3B8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6385C32786
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 04:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718166502;
	bh=6McJ1UG9jplWZRKaUbdWy1mrH32NbAKTwHHQjVM5S/8=;
	h=To:Subject:From:Date:From;
	b=G6SWJ3B8+BIykv+/1qa1N/z55gvLxX5UmfSXeZ7ZpUj6FmEyP6tjDcl5yBpLlpBgr
	 XPvwsmUYec6njLeUlG6IExSS6ALTwv9VlpJ+XvNj/X1WkLvis6E9/E3i8/twhGvQMK
	 iMhhQ8M07eT8lOs0f7eQ65Hu2OQDksZ10cqDNY1SgTfLQxB5YNzzoOs2wpCUyPNUAI
	 Cbu6eGzAiT3/IXKiPJfNypdt4NYNt22hdFzV5q79FdXGl2CPlRfQYc/u96utL6blE5
	 XybkLfa2wHfcf6OJ+Bnf/hcdV8+d3w/ICxBmd+7IxQjLVmkA9GaP3LiWRv5f43PY3W
	 ehZc5446nPRTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2A73C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 04:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171816650282.11232.14257336006862518906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72814adc049f974e92bdd4a868682a739b5c01ca936cf4d71a6687a5508c4e16
Date: Wed, 12 Jun 2024 04:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718166502
