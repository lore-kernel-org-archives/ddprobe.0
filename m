Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E4E8F6B
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 08:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740731934; cv=none; b=nocdSxI0K85g1vC2MJwEFVZLB38iy+tnBYhMgdHX7tXHZkyW6RGaqhT2S8joF7+tEHNkHxUIMLsL/UrB9LrVRvmwSGEC6KC7b24fZsgXcUeHi+4fTTT7gYHnQKj3TU8AKBC7I5HFt+mP7eI/eFHjOnts22BZbKlSanl4jcFkgTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740731934; c=relaxed/simple;
	bh=t0zs42TraeKVY0YeRGOC7KL1y/IEH6nDI0CADljzB/8=;
	h=To:Subject:From:Message-Id:Date; b=iCMZ+BoQjOi8jOFIpS0Ox+A3KLZHqQ31+9GoU1Re0fHJadyFB60k5S1RLyjBXVKqWTn7f0jS8WLW7LHx/VrTIYO4SU13PHZ+nauVgQcAMh8AyCs60ZpwMC+XpbWkqmnCsz4eM98SzVC/qUm+7xdVOHJP0UoMnnksRritwsbAC4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEeAoXBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEeAoXBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8934C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740731933;
	bh=t0zs42TraeKVY0YeRGOC7KL1y/IEH6nDI0CADljzB/8=;
	h=To:Subject:From:Date:From;
	b=DEeAoXBDX9FHZCNuIGJ5qSoXx+1o3uVfsHbZWDCTkcJ/cjH6V0ZDK443RIctNCo7W
	 q3bJF9K2ciubbFWSk/G1AvVsSNrzhJjDTWtJEPQJp+MANPjUzbbkDt5w3z0DPpGRs5
	 7MAYZ7PA9bpwU3PpNZX78Glt2iQZk9QBAQFKJ1aLwVXUz300ungztSvDxG7NBdErVh
	 DQ+Le85N3Qz5v6LvoGTqarR8PiHezv0pAQJiUsi3ZRyM9G/RbZYDm5oax1PdNX+9TW
	 EwfbohEqaJzcCJa1tOHxmpmYDWUXULvZEiaYwPF+8+EPumNJAXIoKUwDnkVUKprEn9
	 H0QTKNU26r+Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E09C19776
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 08:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174073193360.2342.4993176219638362209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b774459254f10497f8059bea684171af1abbe526cf533657b2001920c05c14c
Date: Fri, 28 Feb 2025 08:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740731933
