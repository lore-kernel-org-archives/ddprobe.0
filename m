Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA1B2E738F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780870474; cv=none; b=QlYg/4LjWGK+5s783a6TjhHVkAC4IPocawacWHnf3FpmFSisNOzNafj7kleCftAO+tyVKiIWTLq2T/Y8My5ybHwW3RYEzrGlvJapxZD7MBH2s7+QjItUpAqmtjoLvZaQnyAhFBbSKCprZUNacgvwoZkZedOi/fr7cdJjDRCuBbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780870474; c=relaxed/simple;
	bh=3JRANSac0ibS4OMmV+bdGu0F2LLDEX77FeSTQIdrYso=;
	h=To:Subject:From:Message-Id:Date; b=EgILSznar1M9bQ3qmgTeq5tyjamU8yrWT8fZt4/8AorRyWrPoRTJpXTZ8AtFFojbBphb9Bcy1zXvWFMZihchxuLhiB0jgXxG9usXYeAik83PAzGYk/gooiktyfsBMuQilGwXeTzvqZogRK516gyP1aGHMreMHQd3EhiDnuWVyTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKAMsrAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKAMsrAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC446C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780870473;
	bh=3JRANSac0ibS4OMmV+bdGu0F2LLDEX77FeSTQIdrYso=;
	h=To:Subject:From:Date:From;
	b=YKAMsrAd4rodm6s0gHxkWocpzDMPQNTKif9WV/FFUf/mOAK/oFOh4ktmWCCEbMvfV
	 KdiCmSQyQt4zLblqO9Si0BVEJqCegbYOFbnoz/mVTMy5ovdgyJ1Y53f/SUVoOupDAe
	 jWk12WHq9TCKVYUONXAnqq0vDXEDDeD98J8HRr28z5LQXalr4NBY1L+YC3li+mPfhV
	 dTxt31QwK1wgNdreGISSzpkuF0TaDReWY13/lY64hXOXf0b+O6BHhtMHIS1N/rlCUS
	 pQ/c7AZ6IIJE6DeOCIMUYFdjSmTTbe21O/ZppmjR5ArBEebdBD1BapkFbySaZ350IF
	 7OeGY+xIC60Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF11ACD8C90
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 22:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178087047369.29583.840488227744968825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a983312fd6df3a58003e1aec74d3d9388e1a3dc0094e1003b14a99d861a6d4f7
Date: Sun, 07 Jun 2026 22:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780870473
