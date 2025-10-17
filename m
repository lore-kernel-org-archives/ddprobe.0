Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F37D3208
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760659794; cv=none; b=CqHMqIzRHs5XfvN7mfzGJtx5XrYCOvAxl3ICZlW7yobdxxZJnzm/Q1bZUAUXcL103vlEUpLlMqTHw8CYHxb/05truFEpRdr4/qD/JOTDkvwRV5+6ydHkvHyQfQFWYxL0Au6DLswt9jsi30DdmaHyJU22gB6U0hQsTzGL9ktWYgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760659794; c=relaxed/simple;
	bh=ZA3kDBrbu8uQd/L17uL0FVuq0HgP3Mz4nREVh4fxdeY=;
	h=To:Subject:From:Message-Id:Date; b=lsiTLvNCzmJUmCaftdNwhLjHoJYyaFC9roOspkONUyOZF5Dmbh96Y8bE6uLuUlbMiO/Uv+ctXBpv7B0ZuQXFkM57OsHVX58w+FKxGerbqXkgw+6dZFZafhuacTXY9ZLNGDMg+mPUEs46XQP6ITxOgsAmYK6Z07c1Ld7PYjSOxpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwmO5Jk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwmO5Jk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEB2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760659793;
	bh=ZA3kDBrbu8uQd/L17uL0FVuq0HgP3Mz4nREVh4fxdeY=;
	h=To:Subject:From:Date:From;
	b=JwmO5Jk11hq8bS33iKrsnDpHQ8NOQNPyf2Mc89j3eH8UGttNUqQy37s29rdXcorJ2
	 r/Dh/XEhL8c18IAslCXyZXgYk2n2UVrviOLp8/D7v7N73huRex892YMTthmXJRcsnx
	 h7OahB/RpMgk/OYIKFmSyNviULROkGM3d8Ji4Dcj7tNkaY45TrbbCqTbz0jG88eYWR
	 0q/VhjTQMuFu1JMx68OtLkoIcytrMtnyl6ULFkdBcQlHBdXCjTPmSDsGvAu0Lr2kPF
	 rFyvdE36kD3MRmiwMRI7sVSskpXTZPCW1tjc1MjvPr30fNnTVUnZQMmcF+qgRiexbN
	 I3wLofLj6ygbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE45CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065979358.23980.1156114019184500657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b0fefd2c30e43aa33987b73f8c8a916fc12e79a1d157d43be2dbb9244d50c5c
Date: Fri, 17 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760659793
