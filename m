Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2EA43C1F
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739854134; cv=none; b=mcPuRVos0yQvgJXrNSsrTysksfPghUTWgPa27zD9IoiBx8AHGaMGP1U9+jZiX1WBwet9QDTx8pXwu0w1Oil3QV02bdC097BUUErBut6kXQzBnqs6X/msQjeeJfec3mqSLKsTEPU+kntLPMtq3tzsBbjTmswxT+DEGkOTdMs2/BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739854134; c=relaxed/simple;
	bh=/zCgAY13crI9WWBb5T1q5hwXZjrFGuEpbq6LptaPvKE=;
	h=To:Subject:From:Message-Id:Date; b=SFZGiQjyd35t4NJgSmzY4U+z0bBc8UBtQCwcWJLhma1UVUFALiWwgeLa9I2JY0DXoPKjcXMTcXCqNjQT9cMIXOe7Bb05qCAT77EWmwX/Gsr7LLPb27Deh59MzxG2+y7jNGTh0Sa+lOWtG6LbdkALQufZVcComX4pxNY1vvlgfOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qA9kB/qn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qA9kB/qn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6046C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739854133;
	bh=/zCgAY13crI9WWBb5T1q5hwXZjrFGuEpbq6LptaPvKE=;
	h=To:Subject:From:Date:From;
	b=qA9kB/qne0nN9PmdhSrG5bz3EuUf0/O7lC1Wd/ZVdY35I3lnIC6nqhEWJ29KIrxhM
	 pL+8CddRzBMKHstqxxDTzNfAPECF7hRR+bu9VBKD0WoGU1hr6uONCLUCZ0HXs9o+VD
	 0JRqapTpPMRIb80HICyNflI+B2/WvzGXuDLubm5Kpg/tTy+7OfCssi2WvzWo+IDoS1
	 jYt1SnkhQSOzA4f4UtE8M1dAt18y4vnqh82CnjeAeMCdSsq8hurr45K4rAI8px+cMa
	 8gJng/ro74Jd8ovsYlYV84cjjfV1uof6xiq65uj3/FVgYrOmAhz/LbwXZiWoe/7e0A
	 6W/JOhsKVu0Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E324C02198
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173985413360.7903.9204424792104989844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86faf402f2de6f607f9bbf9029fc882ca31ea62087896c3064d9896e1c455ab
Date: Tue, 18 Feb 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739854133
