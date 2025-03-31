Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F67621CA1D
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743457794; cv=none; b=m9wRIAko5KPVmheuOAFke4LnYwMQ52aMWiR0inxDKyymhAHt4LMw+yrzC600tlLqOnwx8mP48u5KAqrVK58knt5gUBT2OjLFwP4VTyETVCaUAuafpZ3WAF5LJVUUjdj9jBBmINmtq870QC7ZiPN4mEe4GVId+Yfzjm7ksFxy1uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743457794; c=relaxed/simple;
	bh=2bbsTwYZFt/UW2PFd9a3m5/fJFaVyFw1IoQfQH+zRCY=;
	h=To:Subject:From:Message-Id:Date; b=r0+tPWI+i7Lq0VZ7a59gmAUWwno27/sWBiFy2ow8S76T8YeIdndJjTuSOmjsPOs8Uu2Va92TpUtXe7aW7H/bp98Nmeg337X8d4PISH93LWKxcsl7kGevuEpo3WN8VOgFME7sUGdknrIM3KOWc7LP2+9tVLLVC6GhN+fYvSQJpjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6ShdV+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6ShdV+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBCCC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743457793;
	bh=2bbsTwYZFt/UW2PFd9a3m5/fJFaVyFw1IoQfQH+zRCY=;
	h=To:Subject:From:Date:From;
	b=d6ShdV+ZSJNEvUrqZP8VR7BYMXOJmV1HENBbrtvyNcaQfZBIUSMWSgPyG0Aw4eEdK
	 MJV1ImCioQ97gvrDrJ4AZYPUsbyu5tS9EOLdAs8MmVN1ZODnMnEyGc9h6f8HsqPtl0
	 mnN6sDbLWp0j2MyisH1j4yf0+AAE9ge2NpTlDE6IVtt85sxtiMIqf4QWlWk1Sdutqf
	 WgyqPsAVrbShlxaWEp7w2+JEsh8F80qDT0j3mVG4iz9pTeGPZM45Sye+RLSYqZpzpY
	 evD+130lwYr/rrWmn84yhMshFNxD/UmogBlklFfNlGV8jJB+W0o/tJoAkY8W6zWTmq
	 K+qWPa1iPinuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A0DC36014
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174345779361.2890.11670917847130401431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324011eb663a91f68ae5337124f1d9c9a2ba92de6278f67b02ea4d87e5891a4c
Date: Mon, 31 Mar 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743457793
