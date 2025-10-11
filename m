Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CD134BA46
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760157594; cv=none; b=JynMylbGreAPwhnYUmWn31Prmb0tUkvBVRyry7ekSjREJkdOU3EqKs2FrJBfDXEaloR0jIU/fhtPbEg01bvHWjF2siI5vWf1KpY4L7FbzW85nSUjrlsdMZ71gMPuPHlVjl3+NGYisODxtGIyysWfB7emF8AmJvYu0GI2A1e9ozA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760157594; c=relaxed/simple;
	bh=JAZ90xuks1/zkDHjYiGsv12BuQ6knT9uY3fnzkHw3aU=;
	h=To:Subject:From:Message-Id:Date; b=idrp7gcDG/3CS+J3L2gBFAXjvpMbWt8jErfj48Iy7/dJAw+qhNjUclWEG8ZTmzGsdtpXKf+TNVzSmrsrtEARKLZ4qNGsa0uftfkhRLa9HiZ6+h5nEewIy1kjQTmfa6HbEzp95DyHV4kDOqdGcmVsmM9DYL6SEUVUniBfahocyUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPdZYPlL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPdZYPlL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51A1C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760157593;
	bh=JAZ90xuks1/zkDHjYiGsv12BuQ6knT9uY3fnzkHw3aU=;
	h=To:Subject:From:Date:From;
	b=cPdZYPlLGyXPL+QH9c3EjlSaGCCOSED1gu12VqyppyacDXfcDrKPfyBRl8KMN9KUy
	 G8XCngK6b/nIHWrLUKvfjXJ2gT493Hd48bv8uq8SNoZN0ugyIfNrJjaJTewFRrkzjE
	 wLsXoxspJPx/c/QPJ97XojD2y1TFGJ5LshHXFpm3FQOtn7PFndOCNG6HXwoxpb1Pto
	 MqShBjiWybY8LMSbODxRa77kH58FT6WYLnmLdDeNctT5dDS84qLYGkDe/jY8ISyuIP
	 T3M0yKS0mmnZFgsGbne86dqSTjsQWiRogLqH0eKlBwTWRl9jQCL1h3EUrpF/OvVYaa
	 tqlSs2/aD/pUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A20ACCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015759359.24123.13006624493688960191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66a0c8718102079bd6d3d85014da515b4bfa3639651a9fe07886f66db166bad
Date: Sat, 11 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760157593
