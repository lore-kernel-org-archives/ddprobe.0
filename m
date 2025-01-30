Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9574431
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738205754; cv=none; b=aKLuf5qm2jYu/Nt2lXg0xWEgw9UTU+yfEIQb87Y0pZQWc+OVI9crGkkvGt+n/V4mVg/MXTEhOo8l1ejoN7G2oHjfHRH0iz62V3BoAeZoAvGAn6RuY5RHDG+8lPsbPBb73Nd18qdVBbFq+JN+qFnWKD6ThcICHesEIjm+l0kTH4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738205754; c=relaxed/simple;
	bh=16Eq4ajr25OrZcyg2HMeAnwO+b2o7VOStuxwqSF2y4g=;
	h=To:Subject:From:Message-Id:Date; b=c9fWcIvXlGq4znYOAtV4RvxU4FdePRWxQNx8OL++ucNdvH8lnSGuC23bYHc0mWNg7HQ2VxqE8UCu2ThXwNXjE39qCTQjd2o2xRF6PoqlnbWUaCn8AfNXiB8ygRbJ44b3OV+2/gSY1S3mBpPKAjI4iPifbuiKJGsfP8g5K3edihw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axrHd83Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axrHd83Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EF5C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738205753;
	bh=16Eq4ajr25OrZcyg2HMeAnwO+b2o7VOStuxwqSF2y4g=;
	h=To:Subject:From:Date:From;
	b=axrHd83Q9q7noHyFFZEhRaldpA1JmfaltchM5+86p6atV6WfQyNeXL6rFVeJHvo9f
	 ql4P2bPKwowCJOGlIhnY6cVGDGs2atwhZ9HlwJNAiqfpigbCn5ZloVsoryJMy8+DU6
	 JmoP5fXTlsZS/B7As/QcVyc+M31fLpsR7YoE5ps1WjwC9MoNEg8xf3sZKEBiy+i99m
	 Gd7E/GSJW+jUI/1CNlKK8Ap2BaDGr39+QoGofWW5hDuinMUOsY5o/WR6VHdtHEkOYV
	 l5o4Stawe/ELFLGHxh2Konr0yswoFZteS+tXVBQ86s2dvmxE3xVUX5GUtaxa7YIRq3
	 R638q5cN6HNSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9BBC0218D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173820575363.10484.10794610626013327766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036ff138f74ef5f50b1a9663158d6fc66a9efb5d1c3601cc48f6f6cf7d7345a7
Date: Thu, 30 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738205753
