Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293503624AF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776499654; cv=none; b=l8G/kHFhywlZddyRCdp1evkyARKQVk3hazu4oIlfOj24xYKragUTz2OjxHPa2UuXB+rrw0R0BEPxDY9hg2MVx50LWUb2r9ZKXThpmV9c0Ljk7lKdozyx8icfBYGQugqe9T9EW6sJLCn6vOWIJUgMQwECHspwy/MTUOWr8qgr77k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776499654; c=relaxed/simple;
	bh=LXcVs/PQmo+xOp85GGM2y6ULLWrrWVUOfCwjRaUrZhY=;
	h=To:Subject:From:Message-Id:Date; b=SdrTQDLkbzORIaVdvp0zXzR2VCPbkDo4Rf9obc7/ZZbWVFlgau1PKrH4XJNZVC8V67vrrrXp5xelMD0acud7aAR2YZuu0yKOi1DK3xfJ1x5zdPV+ud2nJVVH6tBPuimQkbxSHVGNW8fhCTtD/Bi4IAh+z8KziPCEq39E3BveL84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcgpc8oV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcgpc8oV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96E4C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776499653;
	bh=LXcVs/PQmo+xOp85GGM2y6ULLWrrWVUOfCwjRaUrZhY=;
	h=To:Subject:From:Date:From;
	b=tcgpc8oVfsX495hYyd5n0/8xaRlYnDJNFQqcRuPhUQjfLy/KuZi69oFL55cJpty4M
	 tnzCgLfuJwI3xdPEeRs6BSCrCQicEw6lj4CxmDM/C2furBCCbME45UXew/leRJtD4x
	 w1FLSba/4rITL+221YZBeHMXY/kktVDxHMF6S7oMKC4x3bsLY/Jo8MB07lI6BAyu2D
	 bVSqzYJEk6hMy1z8YnUbemgVLvZUrQujFVcqoCEbdOaVQRF1+UbwWZEGvCVHUnELY3
	 ns1p+C0Q0wYOcBei0vdUtvtogOAHdOWvuy4rlN9KM5zmq9En49vKUOgH1E5ddpMhZV
	 C6SS0tdrRIGoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9537F99C78
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649965368.11257.2999783993200616343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5611f3036664b76a0629622e3386ad318aa781a2ea2d9373843e17fb831c4316
Date: Sat, 18 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776499653
