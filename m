Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D17433E7
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759637994; cv=none; b=PvRa7ArKxgvsOH+UCmYLQyWhNtYXup2hz0aCzj2/dQ5TV8RTJfCWNrWP6xz5gbDxOwaHIi0VSzmPInUNvGZgaJXmvrg9kR21QDBpByMf3NFHBpsPRyQ7zr9x/AvZQX2hqp5L6c/TK9zwl8SDuYdyUxBd7DriOPY2cAKLmgcT6qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759637994; c=relaxed/simple;
	bh=7kwN5YAuYldTrIHQSHFqcNQvSJGPb3W6sDi9JGIHxsU=;
	h=To:Subject:From:Message-Id:Date; b=BpG22A0jKViEqGilPCFGPAwBVSNbRSfhVfCCderuT1gMKOC4Eyb/i5bT8H4JoINUsu17ORVJYraO9D3WS4/fx41tZbDVpW6Xa3z45bJrL/ScT1qEb1k0pAN3GA9Esh3ZTSF0W/+2GrddSfGQKEGwjtgueDQAtNUknwMuWM9sqsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIzvDE2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIzvDE2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1091C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759637993;
	bh=7kwN5YAuYldTrIHQSHFqcNQvSJGPb3W6sDi9JGIHxsU=;
	h=To:Subject:From:Date:From;
	b=eIzvDE2Vok1F9mRBt7EEqL2+2HMUHA1x5PPvayddsh4EImnbGH0JG607hNFVB2yR4
	 RMXpVHDb/ocH2XQcSGEJ7udXf5ZfqlyeVwIH7GBi2kR3GWaCd4s6o/iy79x9d2RkYu
	 Iho5yGzZHKYaqcpeVpWhiMjiAABhJeHOTcuRZ/rOvkwhDxawWm5KDnPu6AjM+As7hp
	 cFGwiMxXnUo5AtODZSgJ83jvmxZ2MP6HldBzeayMeQZog2i2KbqGeKx4IrKul2eLaK
	 ytviXVk5+uTIxv8qtaoXzDPOuQIcowjeVxS1Mx8cv8ueOdwW7yt7rfdjcPoNTzyLw6
	 kYrDOJr+4HUKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9875ECAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963799359.15115.14859781632813069586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde92eb7832f32313048ab0ec3cb46b3e15556d4e722e2e4918a00c38796c101
Date: Sun, 05 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759637993
