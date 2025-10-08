Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C02284670
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759931994; cv=none; b=HHQsRbp3x/3gz+UQIrmhBMdu2F5fCk40VaruCdTASl2Wv36zfGJIFqCUWwsHO4k2d8on4g8DJclSTBV85oSMnyB6AUqucPCbVCf32I2LsWR8TvAVOjcKC6HfHZYqPeW3m/HE4kheocaRCz/nrQqCoHNMbdoRR8SBzYU7mxenGog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759931994; c=relaxed/simple;
	bh=k8Cw6vGAs54XFdjA7A5vkvYrUp4inmKCLSVCBgDPg+A=;
	h=To:Subject:From:Message-Id:Date; b=UkBlD7uanRoM9oRKGpSjcfMwrlj4V+IYRinfXyTScAK6FZ6aY18o57yaQYxg78k8OCOOM/Udjhf215r2io+ydl4NDVSs+a18KA1NTlBDrQsL0fD7+Ktj1a7VpzxYfdtNBtw/ibDtrjW39ZR4UyElff9KIjnxHDjwuiwgBVdJkVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGGeuvGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGGeuvGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D3DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759931993;
	bh=k8Cw6vGAs54XFdjA7A5vkvYrUp4inmKCLSVCBgDPg+A=;
	h=To:Subject:From:Date:From;
	b=mGGeuvGyGJo53NycCCMeg4VV3KCsG+p4T3HLWrA+DmWiI7TlP10/j8Nk9tJVzgQwR
	 8WUgYvaYBdVth+80OpxOn4upo1cxhXwhIzY3JMmucHWnc5Cmnh61LXXALFkToX5JtA
	 RkmOTzOvUbXMsbKLqAdH9HKg2R1x26K51b0GLzQgKuyh8IXmOQLQBPVbKzoF+7mgGv
	 RWcT4Eys1yMzVSVFlQx7PjpVY9xqgQwF9ues+OmKlJnjgWK9DbSQCebJio4tbllEWo
	 WSsGtC1fCX0y0dhPF4KF87+YEmQqnKgcrMKlUpUP7arL4JhRYr17rVlrEe7znYJQtP
	 apKXzxkOcPWvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90498CCA472
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993199358.7095.5164723434195034171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed483e063dac2123db626b18ff29820fe67d88ab66e8c3b458b4a609ca14987c
Date: Wed, 08 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759931993
