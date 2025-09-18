Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BC936B
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758183594; cv=none; b=lBU+dTr6+xq99R5TXRs1WGO76VdrF1VYT3pFvUt602f1Hxc3EJ6ln1TCwYqYsN4iiMNI5ZjF1VO/y8E+O1+8/Td4M7YdASm4UZN9SI1pI1TOYEYQ/izuMI58E9xIoRKjacHXIRqHi40nk3VcSvDZ/yf2mMh5rSsMZtuKTHaLMaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758183594; c=relaxed/simple;
	bh=zQsOcsvsiXICez7jnUaWpxUZHl2LB3+NHmyGf9OyuAU=;
	h=To:Subject:From:Message-Id:Date; b=t1LHwX4e5g1p56VWBEaYNJVpa9HEG+m2JobK94If0KUQJmbRXKGi8D7YI8rrECCAh52NImj8JPethX1ikE7BisLclOb1N6XNROQRA1esyJVKp7jAq4idjF019+Gl+pjdWJ37IuRotlH5OtRIDYXe1JzuqQaEVmMpKuztlbIu4cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mT2FODWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mT2FODWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3CAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758183593;
	bh=zQsOcsvsiXICez7jnUaWpxUZHl2LB3+NHmyGf9OyuAU=;
	h=To:Subject:From:Date:From;
	b=mT2FODWUPbm8ShZ5NYd2vWVa6cBOtBAjwVOjZK9IMY0/ui7FuAj/M1B34ebh6ixH8
	 B6N1PzJRYiSgPTth/Rwo6ebA0vt3isaiTPuSNqzAmJ9TLroMbpG/BQIygT8zV95aGh
	 OzBRVnYloqgMR7qZPBwweMc9gNIm2cl87Yd3Q9L1Ml73PX7Wchu8i346aNddsWwA5+
	 whqxyqbC5NT9+5zDctHGvAdnYFpdlvJFPiiO6re4wg7jOmPPh9JV2xqXi8jcdva8Sb
	 dL3iaRWDjXNwKYZXc4+yWlDqSrysVnF461i1m3w5LeG1Ex8Bx8Tj5vw106Ez2843LN
	 p3SBA4p14riQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEEDCAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175818359358.3585.10635424377032402708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3d1d372a62caf129c1457a63213b633af77e1657b38ad86c213c3fe90eac49
Date: Thu, 18 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758183593
