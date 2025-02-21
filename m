Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D4A1EE028
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 20:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740170934; cv=none; b=ipB1K6Vm8QstpakCVEdUQQY7BRHIpJJsKH1To3FthJFx8d6s4yK7vbQnSNmUH2nT9rYpI2tVyjpndD1pjsaiCV60HwiQtojgDFn281NWqvJfLM2dNZHXnR0KlR2V3DnDct4RdPrjO0wb/jRC97/c04qYBXYxIyr530ZESZgd+HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740170934; c=relaxed/simple;
	bh=bG22BkVESBMEnuaDHvZlhRriM/4+oi/ZZJQrA/APkr0=;
	h=To:Subject:From:Message-Id:Date; b=MYxQur+75pE+6KHsJDZAzty7Rr+6aBa14ubjeVJP9TCcNnpWT+9KUlufuKhBtrOD3SiwaRu4fd7A9K/whNvLMiSlNS/9xxCNJacdmU4g7hmLA8ZoodZ8TW5plwrzgVXQPbXDms/QpmS1I2djPjX86bES20GToHNhNTUXi18fhvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/6RYSxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/6RYSxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A266CC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740170933;
	bh=bG22BkVESBMEnuaDHvZlhRriM/4+oi/ZZJQrA/APkr0=;
	h=To:Subject:From:Date:From;
	b=i/6RYSxMmq+qmB2oP2d+D1MxoGkvKVnnTB/QaxlqTv3LOCZaODpXuoeYj5UYZr8Fo
	 x+MON0Q6btto06aFk9YzlF8VvhfuyLIGvfEIyvjCekJsFAw7kCBYmMSueMnXk6u3Gd
	 YPgn1/iyl/DdJwSYd7M/FYzsSQJszhe75UE1zEQDMvGVRhf4vL9lwkrqcIYUFXowKy
	 Gr1emKzGS7Wt8/Z+4yIvtzN4mXqnLEu56lHfvVPaXUMNKwIwG3NRxN7y2H6ZzhPsm0
	 w17a65T0D5NxLXjvWHjnDLolmNb/LxRo27KzvxChhIPQ9t1wcul9l2htfFLdbmslAc
	 4WnMj4qiprgXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908B9C021B3
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 20:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174017093358.17412.6772802164325122420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a801397e502d809a5efcc549902e35222b6c70f8ef7351b6e8aee56acd83fc0
Date: Fri, 21 Feb 2025 20:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740170933
