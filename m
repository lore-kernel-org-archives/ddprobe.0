Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262644A21
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785676834; cv=none; b=VDJB2UJfGuUbkuv/MYOLiGUvMXR17pGpDtiXXfD0yru5PBe3Rwit5M6gGFKEXRiDEqcHbcun+Y4TQOMaDrMIIPH65vuavbm0qOTaUaNvRrB9nA3dmZYlE0X4No9zxbOg1yahXSt/3dBtdLESDBaUD8mo8C2UjGc5EdwWN4wawv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785676834; c=relaxed/simple;
	bh=wNubjazyYntUkwI8BsVBVErBQprwqhkMC0pMwP8Oxtg=;
	h=To:Subject:From:Message-Id:Date; b=NsCWKaMtl0TnuIGJ2OH/lj3D2Uhs0sGCXSCdCtrDbMxvcJptO7KuxAFtECI79gI1q1j4DB4dmrFe8hiTK09C/flZl4qbKc4YnUZuAfonFmzxlzNVRtP8M6osrA1+/KCcb/yYVe5XautIq+dqLBURQJNc8t1SSu9UmoDa2mEAuZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qp0Pl68t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qp0Pl68t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22A9C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785676833;
	bh=wNubjazyYntUkwI8BsVBVErBQprwqhkMC0pMwP8Oxtg=;
	h=To:Subject:From:Date:From;
	b=qp0Pl68tnrjmqBU2i+8jLvU+VXF9l3yd+wZLJRQ3FwsdL/ekXSfy81wRIMxwclx4B
	 EkFt1yFwyzskMERMeOTmB5JEbNuBHsRedOTw7gOVy1hm1OZ0c8XMi743vwdjRV97uB
	 dDUEzFChBGQgw3rJCGJBxRVWNWaX2BEbwpqzvpigLQ5gZthu29EMRUel2lFYitVax7
	 J5XQCVKz6wxZhuAgwGWMetO6a8QUjpHa0yMZzstJCXSyqYVHy1cki9EKEfFfaU6NbI
	 SQkWdBenvZVzGtuT1toVjDgRhv+qoSbRUz8m9Z2TEkMQrAB4rWRgN0sS1z2gnEPjiR
	 ZbV+IyJjqGV5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFD0C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567683368.32447.11600592829829738391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca49efc91b0181c9363a02b8228a8283bc6b33ca416a23139c9f2ba4ebeb500
Date: Sun, 02 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785676833
