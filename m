Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEF2199237
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765597974; cv=none; b=WXjyta3jgJnDnt/fiHpAk48rPEA7SGbbsLsGqq+yQPps7bdT4s99ogynNqU4zcS0TYATgwG8qerPe2p7eajSgPanIvpeiVhtwgUD2RcotpUawAJCZMGLzDRwvyGvkePQBGHt+SdbV6etRkzGrqrOxuS9LNHTjntPrPC/YYsIfAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765597974; c=relaxed/simple;
	bh=vxF6FydW+yexr+IE+sHm9hvdfyNw3h6dfaJEi+qbTFA=;
	h=To:Subject:From:Message-Id:Date; b=clPjv+XRkopELYlRVg3uAsgVdP3CADAfx4Q0bjYd3FcefLZTcdYIdynuXEo8j6cUsEKZGIdyux8TeIxAzwj1BE+NpQTMH/qxUgQ5vngpeMrQXYlcEpRq+ts3T1tGZjtK7HWh29ytZtFl/gCslaf1GFgyV8c0qrlnMaUE96U72xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwPvmXhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwPvmXhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F15C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765597973;
	bh=vxF6FydW+yexr+IE+sHm9hvdfyNw3h6dfaJEi+qbTFA=;
	h=To:Subject:From:Date:From;
	b=qwPvmXhkJevewet5OVUQJKAsogYsBDSZUms2t6M7WZyzwT8srkNfQ+4hr9uej2Kgw
	 Y7PhHp7hQ3FqiDWK1uxtoEf/DgRPn/rQNX2w9Tbcnv3WOdKaseeOcey/fpBx83nYaE
	 3IRgvKtCZVvhe5sw5PVAN3NEpV4xzZQcgozKkNITjQNMhr4vC+PXqIAWFtbFZt4Taa
	 CfhsgPFHgjOt3Lm8W2P/Dr2+LYK4apvoTQ6v6q4xNGeyHEDWfN9nIXgaZedQUl5Uj4
	 4gKCFpZHRKcaiIMEFNU4JKL9genSaWfUjGVBcisNLQBBdtJaPnmC1Jwc5DIVIGcpQj
	 7jqWUWVRWBF/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92204D59F6D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559797358.28258.8063787949367461217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b77c4d530643d461e0d32b062236c81e2b2e6d5749b4eab9b7b60d946e3a059
Date: Sat, 13 Dec 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765597973
