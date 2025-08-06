Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B85282FA
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754506794; cv=none; b=OLZ57DRlT17aBfoubpHjziXY/hIJ/H26djYEvRQplb7tKkgpKcAEC2mtRRmZPVZ2Bs8yh5uFn3FxwFXClf2Q/LJGTuhOHaOGmzGVbRqPeLbBE4Ln7QrolQV4RbTeGwukRnZUpMbjq6dRfx3v0ELXmTazdsZSye0vFf74IYXhQxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754506794; c=relaxed/simple;
	bh=AsTyYjVNb6ME2ETxcFfdZSrLRTOoQuCUQnWCJDBbDu4=;
	h=To:Subject:From:Message-Id:Date; b=Pu/ZwgSV6j/DaicwnNN2TqgYJyxjcq7DSMcRz68+HSJ1dKidDaLcO+0j04Bb9pv9QQ25gCpVYSgEPkfF3tkmTK6GIM9cxdSbKtvhzCSpyp7f9p4ehzZmFaszm8wpjupDu5H9K4NfEFqZI13a17zCJHN6On01BBkpl6L6p0+mbko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCeSAE7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCeSAE7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C8AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754506793;
	bh=AsTyYjVNb6ME2ETxcFfdZSrLRTOoQuCUQnWCJDBbDu4=;
	h=To:Subject:From:Date:From;
	b=JCeSAE7dVFkSeB/dySVURXqQPLOb3+X5bsDl47BXrRLB0RhowWeKXpPAl6JJeBagg
	 gW9WZlgKeWp3349mVOBnexHMj0qQaZFU3VrKgruuKFEbOn9Bop9T58Y6fSV8TsQyvT
	 ZGsw3e/PUWGtPm8YmtYQw6oIDO+emw1mr6sVRznU4UMBR9KAaP+I5FNZ3YUyRlncat
	 wUJWmzu9qojR4sNPE3YZPk0LeGg6Pv7tOlEZeffwSqeJ0VlNxahhcL+IpI20EpwiGD
	 5Dps5stpZ7T6AXBCqW9lYgR/FKRQtsf+DrDnnOkueLDoQImbwdKvP2W6z9O9zHMrQg
	 oOXvvfCD/oWGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD57C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450679358.8645.14936932770521428665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13fd828c4f34b28c6f43263537cea2c7a1ec1657e335fc05d1e2a361efd576a0
Date: Wed, 06 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754506793
