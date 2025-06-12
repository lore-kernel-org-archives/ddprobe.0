Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AF98F5C
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749689994; cv=none; b=BDvF3kwLgtMXFwv8Soo2XbJCoZ5qbDO0Atgxi8qmlWnN7urI2esOClYZ0ni09AV/WOIjdHAtFEB2LCcIjTaKaRkKGr1t/V9PsnGZVtaLOFff4StpJMzDnoN5IZFGiMoP/wPr2/g3PvbyaAr3Y3i66r5i4UUygxkl0L5Uzj5HJD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749689994; c=relaxed/simple;
	bh=QZ/6DQvM4g0fk5ovEnlZL+iPizenrwrc/eJov5YU7VQ=;
	h=To:Subject:From:Message-Id:Date; b=UICxkvT6a0LK/VU8s9xC/SJEPqdSdLEMa2Kthi6T7UG0eOrdom0GRWd5ylrTtLyjvf/ZHyKOEhbngQB8MKTIl+nKV3gXnRIgDXvpsHVVKwX2XQVuNXpVL/QqTNWLk+nz+USLAaNswfgADU60Jkq7nO4ucuq32znxvGqyn4RReg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGVf+z9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGVf+z9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A443FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749689993;
	bh=QZ/6DQvM4g0fk5ovEnlZL+iPizenrwrc/eJov5YU7VQ=;
	h=To:Subject:From:Date:From;
	b=hGVf+z9JLj4E9ul1nyGHjDhcB8f1inMFdCBgWUS0Xej2F9RhwnpyXumS3EN0+JdLJ
	 gkoXGbGUjUDV3NYQyKbw+Sf24ettHXy8F6LGU/l2tA53OUQAbrBbUVSLP1uB5bexD6
	 ne97arg917rZ1ln03xfIeAnwQjelZ/q3hcD6Nq10vFlsd0zUTZD42Ghs0TYxmNgXUb
	 HSFG0zbKYu7zrMW7TkUU3+NwZacU/5ob8KUUhJ3P5DHwOAIXu9SqwFTH36UffNBEiU
	 5tp0pCO44SZDIjU155HICFGepfZT5u2s2q+a6FahdXEa6+hETP85si5IEDVJfp52/Z
	 Wlw7OKNCx2edA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FA7C71135
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968999358.2004.18067080013681288973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2dc68b7ca18d94c45a853fcff1673cbb0b88d9dec6df68dbd49fbbb81bded01
Date: Thu, 12 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749689993
