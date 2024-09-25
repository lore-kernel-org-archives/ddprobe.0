Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398D5C8FF
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727228754; cv=none; b=T9cOvVdRd80zQCehV8eeF9hEYg/VQDD6SMqG7UrAW6zxHxWYQxibBRIOnXQgO9YeKA5LDJMbxAmis9ucbp0/ePUT/nXrav0CuoyRKn7W0fDPqmjdQHJkx6S27CFwPpRIFdCpSONnoZpgll/R5tyvxx+VQRRPzykpiKH5pi/1Qvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727228754; c=relaxed/simple;
	bh=Ga2sJgcSQ/hCQWhfrjpx0vdzNZVjV7s2oCiC97eCaTM=;
	h=To:Subject:From:Message-Id:Date; b=i35WCq+qlDAuWv1vV9jaorzof+NAHVRYWOif7q7XsScKmgK+vJyEr3Tnc+QijSI0YrxP8kQBmH5sRA+XiSyTTo5yKuZVIqAKllG4+7UAc2xDLP0IBw/4U5OMkINzfMZFbwLC1JB1xntRFh0X95EZx9GIf7jbCuynFdv9rWrtKFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWiwfGLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWiwfGLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71E1C4CEC4
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727228753;
	bh=Ga2sJgcSQ/hCQWhfrjpx0vdzNZVjV7s2oCiC97eCaTM=;
	h=To:Subject:From:Date:From;
	b=kWiwfGLcIwrRHiADd2R3gfvOXpR8xBue4X/smuitJlNRVLhkxkxnWYcRTnXPq0F0z
	 zYU2RiHB1fov5h0oHrk7OGBgjzMRxCCN128+vCQdrMUoTlRLdJmoL4E96AKFHjNR+T
	 EEbtynGwQyrMqoMtfc55y+Gnx3zvyENpMvKjJkb5TSVaNnZWsLwz54HgNqNTiOte28
	 I01GmWLGV3NeKY05jIPdpAo0YTlNOBnis+Lz0Ksy9b0d+jnW63TNfF6OUCRgAwvjHq
	 sTAmKCSmx8sS3rymbEAU7SmjoXXi1BVi934QvdwVUbAKlyRRy6SU2oIKtLNUBiGmE9
	 WasmrAYwDafew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F3FCF9C71
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172722875359.26998.8097384016517741659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baba7e2bf198f64b3e57d1d8bca50a84b7f33206ed47eee02bbe513bc3e54407
Date: Wed, 25 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727228753
