Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DE724469A
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755259794; cv=none; b=BPrUZRr9MHQpyFtwOe1hqSI6QMHAke+A8RmmO41grGHRUq2oma4kWF4aLSX4tsmwiVl0ZrirQqRxcCQysxSpFoKfWJNHYNfIRFZw6NUzkWowfhm1DQJWEL3iNsn5rbSH6C6I7dGpPre1iLQevGGUPnc2qlbZhE1IGFsEawUMPXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755259794; c=relaxed/simple;
	bh=CJGb6R7INBRSPh4+zeT/0S41Zg1JNfnNxLqUe4JVpMk=;
	h=To:Subject:From:Message-Id:Date; b=oaFPpq8nz9xeqghuSEAemCSqmVgDDeVeXdBSaMlT26516GrFGmSLKAo1x5luqCwL6XNXxoIprjqksReTcjDXFLlSAaAMGBsrh8+ksIdPAhiIVmVuOlf2MW7ZDLBlBZGusOiXEDmqF47mIvbadEG24CPvmPHdAav4J++Cd03FU3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgyCtTGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgyCtTGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48F9C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755259793;
	bh=CJGb6R7INBRSPh4+zeT/0S41Zg1JNfnNxLqUe4JVpMk=;
	h=To:Subject:From:Date:From;
	b=YgyCtTGcZs8pcEDunMmyvVFY649GPD6PlQyg09ZCFTQ861bsE1+nF5ufiBfG9w+Uq
	 gmuIzpaih41QZpwt7cZdl13ma9678kU8mY8dXQxzECK1XgS9j6LO9h14loJAUtg8gI
	 XBSeP+8Ad0u9t+CqqsUim76ddv8FC4NIDjESKUJteSbWlVmjD9XERNaDz+4gqBLPvb
	 qtEcBkp8p8KjGjOdUdDEZQyd6QHl+/RN0Kw9ojIHjSvy/tkxoY89pI2mEAHhPUQGKc
	 1ru3L6FTQTcdlnkapTthxcKPZynOYKvRDfanoqCgGJoJM/9BmZJvwU0P4zCNZsjnH/
	 wF1D3qZ6Y/Bpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914F3CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525979358.29763.15200121596363946473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f57a9831cb56ff5cc493022d6130e134bc1aa479aef45f3d853b5daaeda3016d
Date: Fri, 15 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755259793
