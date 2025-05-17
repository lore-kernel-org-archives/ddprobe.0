Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E671957FF
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747498194; cv=none; b=Ts9j2Du7LQtbRbiY6KMprotrpwhb4rLJ9HxQBeCGBEMwavVUhf6lIW+FIK0f/07l1ceCggXELVxbDhcRM8c2rM3DjRS4dkUGy6WbuYcdQJlHlYCo40UFk4FQpRCjTTW2EJPnat62kHLho7UAR2c8EdGc4njBluAeU2r2ZJD8hrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747498194; c=relaxed/simple;
	bh=8htzcy9Lk5iaDzOk8DvO4mJfQPlhmhnPvYDj+S9liJE=;
	h=To:Subject:From:Message-Id:Date; b=TTFP0UDFzWgiPO8KJ8Dx0khpd5yeC4/CKgxlSuKSGNIrEbKQcasDLCafFD7tSI9mV2PH5LoRgu8o39ei7C2/1CRgBhkmFW+NAsAHcnl6gJY/ygHqa1myMOiaLzJYSQpMtk/kPpuM2J4PPOQ/a66jVPZMIUSvre4IuDhRVfPJ9a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNFEfrfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNFEfrfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8216C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747498193;
	bh=8htzcy9Lk5iaDzOk8DvO4mJfQPlhmhnPvYDj+S9liJE=;
	h=To:Subject:From:Date:From;
	b=uNFEfrfMqiYBPeIUVV6+5PidrjZxreRW9OO3xM+PAoVVlh0bKDbYS6gHW1kxS6XxB
	 kysxaTP18M1Xwn3Pjse7moJUWZ0I0i9xxI18HsI5AIyUSnb/MnggvnOMcnfr2d1H/H
	 UZ2rO8Jb2xaTmh7a7Ivo4xz6fnv9+0+3ylVL7l/XEjOH9wq+BbkClwYaGYw3ZVzSyO
	 r/nO3Ar4U/UqXs7OEkrueg7sSI+8+k4DRH+mfTGir2XkEIyCeggPzrDuB2CBWz5MX2
	 Y96EE8JPUrVxNkg+iwpNWBjoQFief/kFnH/wVZX4pbgYQo4jp/Zg1y7pn/bJW6kCtq
	 DzSVy0Kx428sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EE1C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749819357.13324.2468067921265078142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce341c4a8cf93fc627172bc5e46a90d051c9d5e17dac0b3b6e23344be8d65d98
Date: Sat, 17 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747498193
