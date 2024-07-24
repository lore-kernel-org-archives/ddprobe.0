Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AB5134DE
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721856954; cv=none; b=NRKfP++YFquIkJJbECHsR4f28hSq9wGueqBDS7KULA/rO1RuTjwARSXRlWvzhdiMH0cY0kVcPg8CVqnJVMtQKc78o0L/K1j13BcjNISXHrmOYkzWKxeigflKkzG/dUhpNafm7tNpCFUIUGtg5kmJvgGyPpuSXlybQmb3Rgs3Iak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721856954; c=relaxed/simple;
	bh=q7FLgBjltJg7PvsKSM4l+5shtVFcBOUEtoyT7SZZyXI=;
	h=To:Subject:From:Message-Id:Date; b=CEqoaU80+ZMcAEJqnIucwSCv6ds0rAzJWxPMPjq4ryVhTCvlJHDyeV+t4tatO8TKdTlb/vXBURfnea/aWjhcNRqz3kHTeFigIbZotXzU71UpYtErBDkg6bMusZxtc400iuxmf4HnW8PgU+WmprnXMYLX9NR+3+pEtm9gjQDX9AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXvSK61M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXvSK61M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF67BC32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721856953;
	bh=q7FLgBjltJg7PvsKSM4l+5shtVFcBOUEtoyT7SZZyXI=;
	h=To:Subject:From:Date:From;
	b=BXvSK61M0EJHMXqPpFj4ljYuhucBJ1w6p/VeO5WjymLfMOD4qNEhmvPfXi5PEGCYs
	 JNQZ37lB5dSaOw0+iVSrO1Xdnb2iVvGb1sa5UiCLsbKTNr74sbJztcMbbvA1tK8qZH
	 eeZZLNTvpGEDIYjGENSgvjgAer//QY3MJRxw4kTAB8LPdK8gZ3ead+W3G4IJuE+Qaf
	 aOe1LyBJhALPvqXz2pwGgjiJJmdrfvxndpaj2PFOdHw2FPdIfO06U4uHP4H1EHYIvd
	 6B5W8241UimiieKryIm0yghwFgUi+MzajJAg+6swX63OweL7V0IYXFXVy/9VafFwH3
	 eshymvkMhOflg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93465C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172185695359.7211.3733685241877260244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047d07813b1a53c50bc6b160d27f139c5f6e6f73785f344a30e3df51af4030f6
Date: Wed, 24 Jul 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721856953
