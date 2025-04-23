Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEBC52F88
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745438994; cv=none; b=mFHRfR7vdqT331oQO08gC4ylrNWIWUgEql1/miEWJFvLPvsO69+0rhZCNAWJAqArfTDCmqejesDQvfoN7142z1yza491AFmCJd4FVcGp52BWH9v8UMX9Ec9Jqg5bBhSQoDrV+JYibEeAvnagarkHzySuc0qEAhkxO6X64KpU6Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745438994; c=relaxed/simple;
	bh=OAZ41sRWlYW/iJJs3uKZ7lbX1qd3PNtj/qQvA0zjYeU=;
	h=To:Subject:From:Message-Id:Date; b=Xh+HeGbSmGRX/k/N52owzZcwiRo7y/qQV0povo1zUR7ZbVLPbzmaP3Z1OdAFT4R7BOCo7Wni07xWUfSUrC9e9+Rh+W9yrYxoK5qqpAHlZp/gNa0JivIcy0ZK6nwAj8giv2/sCFn4Alt2KbshcrJgB/Aim3vK9tJgsHnYsuIbH4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHM+jCo1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHM+jCo1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEFBC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745438993;
	bh=OAZ41sRWlYW/iJJs3uKZ7lbX1qd3PNtj/qQvA0zjYeU=;
	h=To:Subject:From:Date:From;
	b=aHM+jCo1q0nQyJNwNlcr5XOxK70Nc+Evv9H18HF91xAo7rBr2XV88wGlXwplR6ZzW
	 PhxuBFmIFCPM5v6eCm10O8L9jDStJGojT1NpaAdozwNJwQrvuNbrrxtTh6cTkv1Bje
	 wBj74fciDupfABi1TJ9W0EYo0CTJ4fpC//uxg038qVPNGr7ubVLamBz6mQ6cZS6+it
	 Xsjwlr7zPs8k1BA50hVNhzhTioBPk5KkbMWRuRtmVc5EHjMggnzHhVBLzlpr2o2Gtf
	 c8zkv5hdJDC5TApChA9MyS8kpakGKhGxOx4KyYrycCTV1zqF3VjEfBPL35qAG/bpDM
	 3+G8hlXpDLuLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA4C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174543899357.869.6535378798700632224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f692c9ab958e3651317b92818a38bb2866500b2669755b4b22e906853bbcdece
Date: Wed, 23 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745438993
