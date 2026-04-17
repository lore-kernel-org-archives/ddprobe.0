Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2710137D11F
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776463654; cv=none; b=Da7Xxq2L9fLjQcJh1ZLff/+dP/OsoEdnqzITxHhOhrc/rPVOhOr/6v3BWvWfelRV0fDaWA8v4kLR9dKUzhcCHVFCQqE7xNlIpKe4ndRn3U0U5/tj/z4wmmD8YsqOB2XyHp6MGlk3W1inuj4GHgIJp4KjAF05DFXDLS2+k3GEj68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776463654; c=relaxed/simple;
	bh=JSwFLytoqiWetLkCqqqxP8Omkrn5/jB6df9YbjFJ1NY=;
	h=To:Subject:From:Message-Id:Date; b=YAdlDFnrQmNVf3x47rhSBx7krazJwEcc/ceHe/utOO35FGjTTknkqLkS2QZB8OOn48VknjcMpownIlXwKEIlse3e4v+qdhMu1Rex6iW2KYENNMw1sPaeStSXTSQw/MLEHOcpRlNQlkHOzhL1nA5M38C7S12kcekUmX/4vyCXj2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJtnq9bQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJtnq9bQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34DBC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776463653;
	bh=JSwFLytoqiWetLkCqqqxP8Omkrn5/jB6df9YbjFJ1NY=;
	h=To:Subject:From:Date:From;
	b=SJtnq9bQWa4GX/q5LWpyuOfBHIDmr6mNYJ6nCqenL6tdenzqEZsqE9BB0zqhDywNI
	 j3GEncMFthlRFliUaBX9qZrlJnlewirWk7SCzZ4PEcNFH6ePtMjuA3XkOiuAvgDWZ/
	 5cKwfZviJOcvLzsOeVhNPv6KLUsxLo7kf+QFnVk9FcIjV21fmIf6Fpa3UHXKxQlVR3
	 PzheROZW0qYMfCEKp7Qc9ovu8yQlaR884+MdADBVTW75SERMIVFHt10LVhZ0xJn/QD
	 ZcVH8lf02tN6poDKoQisb/OYL0377G9N2TSHrOsEYicwwuUWTSSE8Es6pesMLsW6w5
	 OFpxHbjvulBMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01A9F99C6B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646365368.10160.496702145006677375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c1434c20ec7cfc13f9ac3743a21ffb1acc4e02d3edb200f8c998792ac8b1db
Date: Fri, 17 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776463653
