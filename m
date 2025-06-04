Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C421E2823
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749055794; cv=none; b=GnxP+tQsaSPE04mDQ2pAeM0QutjIhfRlRiNqjtPZY1RCenjvior5gnozyPKsY/xH7Xm0fEKRxTJufjNvHMJPPwf0AGP2A/urI30VfQAO8ksirP8Q0kAV7IMIqXZozHzMGafj9KlgALyIDoeQwdXGtj0nUjTAMCwdP26+oOYhOsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749055794; c=relaxed/simple;
	bh=QP0YTgPG3edT9AQZItmdlMlsoJU3+pC3rk3NRbjIb8c=;
	h=To:Subject:From:Message-Id:Date; b=Ivay9aoRkQsWMWKn/ESwKABdp+imzqYE45wchOHstMp4QpnC/Zz1NxvORjQCL+dU7791Xr1fbFfcB98Af843Bb2MCX1sXAsaKPHMvLSMhoCaKI4ESr9By9QEJWqfKAYfVanf+h7KSDFpAhOZ1MCc4DZQc5KRG5uWMiV6gY/f/Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEiMrFlf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEiMrFlf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D68C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749055793;
	bh=QP0YTgPG3edT9AQZItmdlMlsoJU3+pC3rk3NRbjIb8c=;
	h=To:Subject:From:Date:From;
	b=OEiMrFlffS2pp4am79dpb7yF0qbJUa12AqqDEbmSOPdAQ4ojTXhchqV3zeafwAOs0
	 tiL9Ey/td0wWxxtwQnk6jtRhHvIC3ydW/USu8/7gRRPbT3cI5Q8IpHxLyyKwjoU456
	 K3i9wMFZ0XhWL82VXhSJu5xt53Bii11p0Me9favLkmQ0HdMaLX0S3JdKaXryHbR5bA
	 DQy7KHMlz/313L3DuwIvnVLJloGknvh19PF5Ur9m0beLsWPFVON1wcaBW8N+tlmzpQ
	 eNTvugrlosHs0WjIKVy2ovJA2B/PQQpS4/uG3he7GOiNkaq3/PG9ofpQJG9dZP3dd4
	 Kg8xvcpUQ6W/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98406C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905579360.25323.15818086534950842275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5cae393bd966f1139441c444fb0e0692e13bd58d95965046afa3365a1d9cca9
Date: Wed, 04 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749055793
