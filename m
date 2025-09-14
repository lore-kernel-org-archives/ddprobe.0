Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DDA19047F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757828994; cv=none; b=u3sYD3bMX6Cupcwr2AAjaAsGLt72uyVkHGEVpqeAfR8UdPpihXWaM1QHUIvfN7cqdq59fqJW/rUcmX2rXuMc0xBS5DwR0Kc+5jUfImB1KqNH/o2XaaAQp0qY3S0nVmG19clNboeteugrIsUDXJyYOgGMWjcNWriQh3aOVMURSnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757828994; c=relaxed/simple;
	bh=lyVewOQJr3hd4/bsscSWZ8ZlOHQifs1tfc1QJNsgBHo=;
	h=To:Subject:From:Message-Id:Date; b=pFXdaDcLwx4w9IRygqGOZnkDW+FBLCF7Kfd3dF3SZuYkJNwOvHjDtrNAkb7uCOaJVghKnP7MrymZKzZ9vj9voc2smyQAcnwRFiCAik5LeM2wY167XEZl2Tiwh1fhcrGGaozlriFLJFWXK31ecUrrcINSsZarT5rsFmsaCM9+Yt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yu70Y5VZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yu70Y5VZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A764FC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757828993;
	bh=lyVewOQJr3hd4/bsscSWZ8ZlOHQifs1tfc1QJNsgBHo=;
	h=To:Subject:From:Date:From;
	b=Yu70Y5VZsYXkWQdiA2c+038eHe8BlMlxPvrhkpCgPZ0LH9y10wjITbmPUfk3myOgU
	 VyeUxcTsW5QlkiPLnFLzwzB4viBintZW9Oxo5QrLDOyx54Btc7Ums6UgowJoUA5LgP
	 tZZxO2K6tD8B8FODDMSRHW9OcetORpojVFDRS0bi763Pf+FUH0YMe7+Nn6DRCraIQ1
	 jvQpn6vzhLBUIJSNOGySJQDkjYuFq3leU28XMCz+HRi0WK1qnnqiRE3YHu0osA2ndZ
	 69B/HBPYl8wFd+Ra/FaIIEHFE0OAYNOopstq+1sXhnrLTC13Yc3gagSPRXcjYqU7wk
	 5cj0KlfPkfXqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E11CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175782899357.23452.4918053419860144276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a59dc4bc1145ca000387bb12cd637e56d1afa333291815222756519d284e5e
Date: Sun, 14 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757828993
