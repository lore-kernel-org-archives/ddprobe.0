Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5471465B4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781075134; cv=none; b=o5M5/dFDXf7RdKpo6kuirM1BFXdkZtWSq0phFGdy/Q7vnwzUSLRN9D1hQ0taaFbgX0lGciDyWYtjUNJJbBCIoATnEicI2CkwuTbh8aYc6GaQFbF+dH4OZooiz5SR1VmDLidZMLBF8gbvny7hAQbsHoszYI+uDt8b4kVFmSBC1yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781075134; c=relaxed/simple;
	bh=YWTGdTwiVSuRTarrOPt2PV1DszwRnsOQFiFBeeDwMVU=;
	h=To:Subject:From:Message-Id:Date; b=LqHF1vhJDqwX+hVwX1sVPCXkOfOkasiPyKMSRPQ5lvxQL5araFA42GGSN6Kem/a2T9J5H4TrUjT4wIITWEruEAxa/WW/evTQaywaVQb+x0r1+HFJl+160yzIcgeEWuU3twUaFCW9eX+a/CphidrgeIVcFAH/weZUXfo7aOBNKFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OweSlzf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OweSlzf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C744FC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781075133;
	bh=YWTGdTwiVSuRTarrOPt2PV1DszwRnsOQFiFBeeDwMVU=;
	h=To:Subject:From:Date:From;
	b=OweSlzf9XhafAqR8orMj7tNCPPXa8EPy68n5uP60CKrSvwMJdyO+OUYveWZlaHM8L
	 u5XlYMR2vAxuKt5XA2SReJ60uPT6DAlUaPCrAvMloK2vmhCwNxFcLVR+ya7EH47zt/
	 kSbwS54+2AQc7zeM3crU8fyLWqKGD2fjfzMtioLd4gYpGNIIpX1P1pAnDAqQjKV9SB
	 b3uh2THHIfshv83mUCii/Gj/ogsZo0jYSH2aPv7MDKSVGIOEYk1BhTcmpWJZ/GSReX
	 udT50h5suZJP0LBtud105W3cWGv9QoDi8TNCKJMoi7h2NxXS4N7VdJ31XkhmapO853
	 qno6of/uWGFmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA85ECD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107513368.26855.14466610775479392896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6794cf42b3972e9260d49ed53d866eb3d62c828cadb3996eec423644171fd2d3
Date: Wed, 10 Jun 2026 07:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781075133
