Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4753909A2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790842235; cv=none; b=jXJ8uV9c++Z9wgmyjq8MPdzo5uvkTLn7Gz5F6zS9amd0sBU4eyxwVVGBLrnk2HK9y46a6SRVPFd9XuIL2Kq74p2QWsCP1Y9r+BMigj7T+ZkNf9jUNJChvq2NN9/sqCcNzV5AEfAb8QAfiaQmZQSw/gBWqAF5bmAI3EM1FJfpQdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790842235; c=relaxed/simple;
	bh=qDXPW29Zc/UbraRPF2H9CW3cIA5i1/uOjxRI6ZmkHl4=;
	h=To:Subject:From:Message-Id:Date; b=Y2IM9NOG5/RSIir0yBX3Atbrqv5G7o87SpeqJB/OKqIJhfreBwlLer36yd+g2MGo+SFu8JKUllqHjnmoimGVn32C8CfDUZ/8sYpwB94tbEoYOb56PVVY/2GxIcXX8f/Cu1Zy0F1hCKlfPM0sPJRcMFrtHnssqfN0yJ/J3vUFdTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jX3ra2+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jX3ra2+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECC8EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790842234;
	bh=qDXPW29Zc/UbraRPF2H9CW3cIA5i1/uOjxRI6ZmkHl4=;
	h=To:Subject:From:Date:From;
	b=jX3ra2+IU9SWp6OZhG+ZJPtMLXUi/ZgKix+i6O2pyyqqRj8KsI86t6HYrYCawZ9oC
	 ZBRK/q7H1Ul4sUuMK0vpcmdb47b4jzYFMPMr9I2w9M8GSEPGSm50VDyzWq9YsxyCTs
	 2IdrCxWSj95d652CdQ41nUr0Wmq9VO1Wlmfyb7UrUh9nXBIgHJc7wkll/BvmnMnH1i
	 yMIH2vx3gquNnWArePWGbUbtP9IZR8IcQpgVeft9aWLcGE9/DfXMlGLnMYDaCnH5T0
	 cC86KIzBT0FGcQ+cvfyN+NJbtEctGmCEg1oOvyfaNYCO3UMtHpyhKGtDi+4UJHra9a
	 ff4mUgoU4LW0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3EFCA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179084223374.2526.15021143083824581220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c58ea072e50e74dc526d11e9cda8f72d6922ec31f1e5b399b80738346d153a52
Date: Thu, 01 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790842233
