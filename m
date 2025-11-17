Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2834326D67
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763422914; cv=none; b=MmGyNlYWAG3UoQz2dr/e+CfpFHhJb7tF6EKw4UASSeUsa37RDnGgRxjTZkvwUXRq/6QMPCZCvfaBaQN+tV3+kTjpkQG8pPU1EPGgKdV2ckL7ANpqMhEVdZPNLKRpfOykuAhhjZcvsr+M0bA4SsRxzaFBYj0pLuyFCPnEnLos4qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763422914; c=relaxed/simple;
	bh=dSG15tQCXqSQgbP8KOUs+MFCufAnqC+yPCy3/BjG+hQ=;
	h=To:Subject:From:Message-Id:Date; b=C0BBdHyI76JCJ3zR8/Mp1cQzmzCmDoGg+ID5wXgeAmDRlj0KAD5LVEUXHKCrYjTCSOepSoqYV/Hu/nmMh+CoEAO+RJTy6OmRPMsZ8yTKfpAILKMU35MT5Vxjgz2eEtTbh5TWvnU8ndU0mZkUqihFtMvu1i3YANgk7vkx2PF878E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IE/GQEZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IE/GQEZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F08F6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763422914;
	bh=dSG15tQCXqSQgbP8KOUs+MFCufAnqC+yPCy3/BjG+hQ=;
	h=To:Subject:From:Date:From;
	b=IE/GQEZCp61CNvOrcaXpXAOejEAzbzKpsUQYO+YZ2LTmSLLPQXsYQExNjquK5AzQR
	 boFpt0skspxPTJAKUjogYUF0uH3E3UdIgHP71iaaHsW5gavfDc7EPVyG9B4cL+avSI
	 4H2SzSqJc6Ud1kq2cNXvEX+U3irfJ8TaDuCNqIGRxdTTuLLBfXnYumepDir2YXaWnA
	 ElB0sbaAfHey6r8Q/xn7XCZwRL22TMMpXpFkniU8PhZuHbYoq7j1ojLXFB0gMgaCez
	 MfSXk9ZN1v3HFKrfO2PN8OV55IQVRru3RtIWpnZ0sXviGEKHRQRL6mxhzp8LeNCpGK
	 z+SWWba2zfMaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F4CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176342291358.10766.13724707466314529389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227eec6d311c34a8474cfd435c684dc159104784a7f2bed97ab2a4110fa8b42e
Date: Mon, 17 Nov 2025 23:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763422913
