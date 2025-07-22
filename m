Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E16282F5
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753190394; cv=none; b=SvPr7V4JKNdGCpxb4ATrAVqYVgVRFCecdYpN3AWsCqBo108bzkHuXaHuBOQLtnySP9CjRXzzACTWJKnqbi5/oLUKaIRKSZFI9NSmCOXr8Q6cywboVXPirkBUkYj8BBdxzgFZCVwmXia2bZBlPruCso6nGl+10RPmZqBtJEk4tkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753190394; c=relaxed/simple;
	bh=oyPRZH383OcqxpeyvZyCL/nWHnAjHFBZdRDpLDvnS9w=;
	h=To:Subject:From:Message-Id:Date; b=WhA2lQ7iYBb6HC3QcAphtBiiy97k8GLUxRTjbABafwTzOQYUsKQw89sV/jam1fl/W9ea877I7EbzrjOEtFPAkUzZQlrWmwKR0lUEiJXVzWL1fQuZOWbu7XoVIIGKHlh3clgY55RvmVuCgoN227LvYlIzyRLh/c9zrHPFnmRFyq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pheHl9ib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pheHl9ib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFACC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753190393;
	bh=oyPRZH383OcqxpeyvZyCL/nWHnAjHFBZdRDpLDvnS9w=;
	h=To:Subject:From:Date:From;
	b=pheHl9ibQQlFuHe8KnpQdwkTMmXMDq929lF/RmOD6c5VO8J8MIECQ0NP2ulrm+uxx
	 x2vjJFCnUVQCu984tFA+C4YbH1rdoZSHmO4XLTksGCxpmmZBT/XQTRGeeeTuGH9q3B
	 +WFV397bj6jPWmrAetRoybNXikP536bFphBzfmc7vYh2Gwr4w7m2c97v5Niaj2LQgc
	 vYp7U7y26VoP12DRXsjm0Rt/4ISr8t3gnjIs4h+gof3TQ1R+cKq7olMRK/o2nLiy1Q
	 RgUf+4EOI/Qws0KHUYztOS1M8X06P8eTfYC5tsDntVNm2HRE4ZPjeC6DgcYZm+dBUZ
	 XkRI6pSaHuR5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED0C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319039358.20578.5124505514354055059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168e52035c34b267aa01eff0eed0dcaa42ea2117bbc295897b9bfb20f046e57a
Date: Tue, 22 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753190393
