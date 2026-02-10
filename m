Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A77A031DD96
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770729234; cv=none; b=fQpZ5fJJyUOxQN5jS5Gg1tf/1j3WMEf9Ls6ZcHIg4QPAl/fFZncCy8KoXDi13F6zU29mACWnq+8KwImfg5Vls0tIFvkZVrz6XVx6EBiPjN+ns20dzTn3WdN2Gr3uz/XNqZydJWYw/CACncIHfoYJzMI1jys6sy0QODwu1uQdLSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770729234; c=relaxed/simple;
	bh=B70KHyMZWpyKlfkQIvdPTQNT+mUmIHrHEnBETvRlSBI=;
	h=To:Subject:From:Message-Id:Date; b=ZrmkwaySm6XWjnJoo/FOM1t/A1Qsfg9AUALo96Vi4s13moCGgl6+4crecq4yT+K6OrFSeu0i7LnkwvXQnmwQK3RZLiJKELkpD80ZuHxIUvqj6H5vuogZ5PY/CufEPtTMpFaQQ8rFLQTSvbA+GpDLhb1fSMvpAu3Bp/knXDKot/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqcUqqTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqcUqqTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2D675C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770729234;
	bh=B70KHyMZWpyKlfkQIvdPTQNT+mUmIHrHEnBETvRlSBI=;
	h=To:Subject:From:Date:From;
	b=sqcUqqThlPSgYt1TxT/3H3JJ2c/+8Rc3viTPcBjt4qQNDAqXy+hCQY5xQwU6cBx2O
	 O+xvCY/tsU2o7EVOXH+Fq8/0h2524OOyDRbqjaXv7ykotKRLuNXFmBiu1GkpkbMJUd
	 evudrwjhbYcdfwlbHl7w6o5vqDgxZCHwSs10wTPY+psS+n+/yoiNbhYQPK77a4UgNx
	 1tdD3GBAr8ftlaSu1tqZZ6Sc4RMeDWYOynm7I+5XGmy9OqvCx6Pe/wYqGAfNsEPANw
	 hhqxYwpgBKMWqbTellrhXxqA5OMnoyvayCLoiwuXjl3FiywbcEKZTlYVjc+i/Wlzbd
	 MUHAjNFZ6/R1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0922CEA8113
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:13:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072923399.7691.4835692572167332459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 546009c49024e456a6b6e9e7fc54a6b1d3c0837b6660e442024fbd3c80897776
Date: Tue, 10 Feb 2026 13:13:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770729233
