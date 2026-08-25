Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BC278F2F
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787628034; cv=none; b=dMco4jxVq7upMh1f9B0yXO6FuCpujFqrjbEsiRbRdllPWvdVg46KfsQ5hkUU5o+zayFY2RyItZa+myBVsQgEsbVeTRjfBb0rHobslSbmBcCr9Wd7I19goREq7AkegmyK4fn+UTNIkytHnY5+Fw6yEGyCCqy63p4ZM5yvJaWVr3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787628034; c=relaxed/simple;
	bh=20RR0UKoynNVAFHkwZP4uxgfrAySImMrz915yFGZ5go=;
	h=To:Subject:From:Message-Id:Date; b=dYcZYgijT/c//KCOZr5nhuEZWNDDVFKePBQO9zfsSOKSsB+bAam/wWHfIdGSNEURg+a7ysgM5etK3EUYZpl9WR5bw/5l1xyJgBib6v9G5cGHhnVJ6H8KqTsy8VSVXfL3V80heFsQD6HQV+MmDvlTjwp04E8qLq/Lh4bRFXJRzRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXmyOw3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXmyOw3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4268C19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787628033;
	bh=20RR0UKoynNVAFHkwZP4uxgfrAySImMrz915yFGZ5go=;
	h=To:Subject:From:Date:From;
	b=pXmyOw3Jm0YeH2mEckRlKIRZ8xcbX4r4jT0b3tKvMy5xCCxQqlUftFwl03h5lcYOr
	 4AXEdJttWcbdKXqvIMF3wCgEOO2fausFCHB7YkaLHy29Sl7Pev2OYsQ4zvbm5gkA75
	 n8PPm/lll3N6WetyvlwE7TGRRs2mwvn+B9044GG2BrlGNBzICXEvv/nRJAFpODcLYG
	 cSBR4gcQpdLtNcC/NuaTY6Py5+FTNtFEL00YAOBTNy1S91ULt1YydUM2gF8AQszAa2
	 kR+o7JmI0Itoxn+T0tPU7F/+2dQdahg3O9OQiN1W+DCke2xiB6q7PU0lGs/EOcmoqT
	 me5ixMufDIczg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AFCC5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762803368.2847.15243575446698951905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f82d0248d70a5ee0753fb99fad9b7f1ec40b160fb3c0bdc9538e0dda91aee8ad
Date: Tue, 25 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787628033
