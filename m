Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6B913C3D5
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716887663; cv=none; b=SJQDlI1e2Zrqgb/LWZSzwRJJniZeEMIAWIymeL5DUzVlD1Jdi0xQ/6QfvC3BXu8hSxZRygDKYz5KhLapOJofhvlc8i16TcEJOgF5p1/evr1Tq2aLMomGXhdSANUJ53jIRtfMXJh1+74fL+8fqHbf6ynJ4qZxZ0bzfWFiP73oQ18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716887663; c=relaxed/simple;
	bh=2cMvSP3fZx/cuyUmMXfBI8GkhP0Hob+QnaezdJiPfog=;
	h=To:Subject:From:Message-Id:Date; b=d5va5Ieju3vLtYhm4gWp75edV1z9E+qRG9kEn2bot0k2MVZfRejgK/Nc4cufdtk36+dtqjY95VXNdwlRs7KEze4h+HUkelB8CkqEYDo5ARmZZdiZvnNXhJVPkXmUqcLXWe7MRjKDy+PRU5I1n81sVCiSOQ4cOL+lMzLo9N5IMrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIsKifxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIsKifxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF2CC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716887662;
	bh=2cMvSP3fZx/cuyUmMXfBI8GkhP0Hob+QnaezdJiPfog=;
	h=To:Subject:From:Date:From;
	b=rIsKifxQTokZMT2Ve8AUxwbRwJR9HHBxfXk9ssakQ4tmSoctzl+O9w07M/vg7qRJH
	 8cT9wXirfGMTSJ9Qy74j4t0pVskfuPuVy71pzebgg4WO9ZJYvsu+UD6kw/JKABf3pj
	 St2sPUWW/+e0+CZaN6pvxSnqMDJph+m7Va6j6OJU2pXtW8AM6kCYJowJO2HhqiWsMF
	 DaidFD4vF0BMNX4rMkAeTQKrgWtPKEzlk8QcZbp6x2+uuSmz2HI9nv1AtxMR/NWzEU
	 invVSiofJLxMRoMKyLBTHvJqH4yHEkYzB/2fLxR0eHW1oR/vDOT1lZU4+6TWlTk0c2
	 Bd9Eluyud+s1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F46C25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171688766280.18412.12546526259558741563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49516153de21167f5d192b4571043a9ac0d4001cd16ea6a7d5f71765ab8929bf
Date: Tue, 28 May 2024 09:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716887662
