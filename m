Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04533CFF72
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791136834; cv=none; b=ox3XaUUnJKSQfsmwPZv3JfiM464rQi58BAK+4VsiP84+vo9tYhoC9+xhMO3VEITNDgkKT6aTzSm8eqfUtT26jI+PBjH4J+ELkhozfI3fEtObbclihgWv5r/A4KEVqeYwtAProDQhge0S7HhOQUmJ2c2uiKYgRdn8k8st3N5bUCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791136834; c=relaxed/simple;
	bh=m2zFfql4xDX9+bF0MFLnezOo/OqNKV5mwKNlJwIkIlQ=;
	h=To:Subject:From:Message-Id:Date; b=F67w6+IQ/1lD5hVvrrgwYWlEeCI4sT4Cgo19dHwB0GnvhVUYz5EaUpPjEVwqALsGrw91cccRjPMH3zUTkfAy7PvOH2t8k3Sgh5wzZS+cKSZ+Qp5CN6sEOQNBSYbuBoUv4XuBV3wgxml7yPCA2yBUKfhzszKMGvQN6BW0bPvQMZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PB4Lt+HL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PB4Lt+HL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA667C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791136833;
	bh=m2zFfql4xDX9+bF0MFLnezOo/OqNKV5mwKNlJwIkIlQ=;
	h=To:Subject:From:Date:From;
	b=PB4Lt+HLA4swUIpVnhyjhvevcKuVET5yo9YqKhG5mRwtspu5Xjgn/1gP2w0cJSt/o
	 C3oKPWuwIwYiGmKfpm0WF0a28KfgZ5CSN6DhYun/8lgzpPvdSUFG3L9a63DWGxDQKF
	 O+7ePTupjEwbKSHzOJ/IroeY2yuysByfgC0Xfy95o/GGFA3sjXAgbvdcTkeqDL+rb+
	 O68r5jF0gahWymPK6Wjv9G49NpSCTh9wQDBeeydoK8AWnAjQeG6gl46KRhQUcnrGDp
	 kE1chS92TqqCQgQw7N4IVCnxDrAEzLKj3p9ITY10km37RyOoYDTxEMwIECOd9CGacT
	 ICxLcAqmDjd+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50D0CA5FF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113683370.7687.2008833388853004413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83a6c26c04b273b7d4fd47f36bed92476762e12c3fa29022fd62f6ead62b64d
Date: Sun, 04 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791136833
