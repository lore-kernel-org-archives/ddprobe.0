Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19ADB2D3A66
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751645394; cv=none; b=cvt2g/szj4jNfbhFadyMK8jAztqBcUA/6UFFV0ayO92GCmV0D+7aa027ClFx5PD4XoiG2zq0lRZI8njIvHj3caguMp8ds30dgHndTTkzVDen3LGaKGjZCA4c5sS2O3HiVELNabEU1vkw5UgFCZsq0XCaGsH3Q1WHyYYiit48Yd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751645394; c=relaxed/simple;
	bh=HF7bnuLOdqpLbfokw65HYNBTuxXDmol8FVNu+2U4BNA=;
	h=To:Subject:From:Message-Id:Date; b=qNB2eFwPXFlS4IFOCZ6foBTwr8o9SOn6qc7OmBNiQKZ0KwZ0kiiSIA2iZ59njdP30ygbEFxEk0hvE/0SZLytv2frfUv8JALqEpWJ44daCpuRaXaSZaD0Pb8HZfj7O7bf/Y04+uTzN+piyDeBQB5haTc6Aeaw8DJNdMpRmNtyFO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIHo8ejY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIHo8ejY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E32BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751645393;
	bh=HF7bnuLOdqpLbfokw65HYNBTuxXDmol8FVNu+2U4BNA=;
	h=To:Subject:From:Date:From;
	b=XIHo8ejYeeEkNFzhpc13+g3+ze3NNrgnRl2Vh3ZW88++oUqMJlZ6MaGmHfi0OzLxO
	 kDzjOfauH64ZoiVdNSHJwTWhKfi5B+ZPApD56IW9bY7B7IASMUN4tfeBLQVf4TFb4r
	 owQWIwim8EKP9mBa4+7J3ONMhnaVIoskmw7AQHkbvsW6iO3Yp14lInNWFnUTRHGD46
	 NhzBqLHLRwzSRBUwldDz6ADqYsVsG1KWzrUj679GRVtF3XyKKR61B3xL7sb4uVciHO
	 pnADSWUoNqQwzLsx77C/9AsJW9GtdQ3Ly63F86tEof5w65fFVfzFr6u2mbS9gaCZhX
	 zOQe13pXGQ2gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F38DC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175164539357.13758.18194434121262344423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1488d27b956d2a2d048b145d3322026c2e237dfac95c0d9247db5c3fee2a63
Date: Fri, 04 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751645393
