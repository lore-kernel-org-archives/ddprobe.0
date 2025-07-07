Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515982E3711
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751848194; cv=none; b=dWLb5vQ2efhUbU4SvPKTeccXTJLFufvoVC7o2Lt5ENUaITncLfxKS3Y/Nu2Vd1XrCSckwFud8M1YXL6RnCVqY7f1VrPKR8MZPOi3xW+Tatc6OWbcV27X02Jn9b3WZycnsLhNRO4392wL/M790EoKuluRsYBMTipkJ3KJCGhVZnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751848194; c=relaxed/simple;
	bh=JBNUXTi0pB4/TauYpVY/zfHoI7DFAhSPsnWrUYq2L/A=;
	h=To:Subject:From:Message-Id:Date; b=jnv8obdDnowQAI8bqWVyzPcji5+MOXLq3udXVDQxHOE1Eg16+XB9/dml4EzMcVl5BLxjgRNdv3sa03KP/5ZalaWufJvz0YZ9tyETWgayOgK6JKWQEC8nRDjck+T4YiODwyatfpyLj2pzXZkB8j5wNoPb/W9HASwKV3AMzG877Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHRCwPXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHRCwPXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51CDC4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751848193;
	bh=JBNUXTi0pB4/TauYpVY/zfHoI7DFAhSPsnWrUYq2L/A=;
	h=To:Subject:From:Date:From;
	b=NHRCwPXtE5+jj3DEv3HMvYpbZDbhUhU/IPkZ8kadGNdpltw0x0gv/rGpwAgPCJ/44
	 23LL/MQsGAFL3uSnxeELLI7cMmYR4qtLE8DJAxhA6HZPY74a+MEGpjtPlSDXx0Zv5P
	 cvPSvgSbajXGLMC06JQYvNZSOWICvgmIQSrm+9DmWI0buuTPacLqA51VvlBn0ByRyX
	 WKeT7c0DdIU8Jr+T8t531Y+Bjjmcv3SjRU7JBonfyWkTxDXlS4bCMpUsLiXfgJG9Cf
	 2hFYbz7apC80LITabdKSFtYRDHKXmpzfIQygb3/nuA+BJPiFgZc4uT+qbTI4bRsoic
	 /+zz92Ei46+kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911B7C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184819357.1770.13329934683875653608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b87cda0b0c57854bb77b327f1dc9c163487b63d6fd716dd49dc8f61d2a6b05
Date: Mon, 07 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751848193
