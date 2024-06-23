Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A3EE23CE
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 10:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719138743; cv=none; b=EFP/4h66Zfx/KREfPfSHZ2gxpcD9pHr8ReIX90dkk5VbGervQ36v5IpTfKjZvPB3v5kl4rC1NAweUsdWTBwKgvAioaQpd0DiZbWT0d3ZMAzL/n20ELNniaqPVSE0cu1E3scRipDgdXRGYKCgGLZ1ujWBskccsih44cBNaUxtVUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719138743; c=relaxed/simple;
	bh=XTGeP87l+jYcXztCb3i2HyFKGGG2BafAywJxedZhfGg=;
	h=To:Subject:From:Message-Id:Date; b=b6oTSxlrHItus6EbFNejCZy0qcrkVfVHbf0Qa2HuQ8xK0UBFqTAq0kBBYLo6clp2TQi1hWoeQ24TFNeJn6KhAx/jkVpBHsc9Rb+m3QJIpGikvibQUDOEuJLWLhObNPcKTfnN4eT3nR2DZVZApoIrUbExyeJ9AovEmNmCDbqGEYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ne+fctBP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ne+fctBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8745C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719138742;
	bh=XTGeP87l+jYcXztCb3i2HyFKGGG2BafAywJxedZhfGg=;
	h=To:Subject:From:Date:From;
	b=Ne+fctBPOjYFUzATv5tQEAtkppvyh1h+OrNNdDDegg++q7QaKaqxyRwEEV5NRoY0x
	 5putQ0/josii0wIrWbU9hldNefQqicBkjVtwtOOEJoaQ4Q+muzMjDXtslNJOFzXv42
	 uaqazvowH4OVhMXcB9YL2Rgxif9G/xMlZb/vE8hzMUEo/OWYKtvdJ59kGQBFjwjeQz
	 TS+XfElFppjqZhLVVlGP0KZdTpkQqYx1ozHpj4TNHPK2I0fycJPsId7WKqbv7vmRjg
	 X+fYnWctSA8QMzNcY7cWI9FHT89b07GGe/iu65yYTRcRsr9d88HbtX/uCQLwXYApWE
	 Sa9Mr7a0aPH+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB63C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171913874280.32012.16259301884197036884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767d7e6dadf8d8ece9e8e706e900b7734a8eedac0d4044fcdb5c9c340b60bc9c
Date: Sun, 23 Jun 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719138742
