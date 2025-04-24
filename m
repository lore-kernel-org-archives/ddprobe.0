Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7F02820A3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745523594; cv=none; b=TjIjU73rO8gRTcdRhUSPsCzX/ZmQBQQoeC4kyTi8eF55HqwPubI3zlXWrAOyobGy972fRp48cfH6uQUtoYKd2I49bTwmMp284hkJvtdVcjf99G6NjHp3MmMS6oyOoEtf1Twet0HpwjFevUcgjYwx8ihMGptleSRVrpFIVcEYeSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745523594; c=relaxed/simple;
	bh=2bT0RIBsTqRywNeVLIBgMnsj3GSpCxKAOUuaokeqaDs=;
	h=To:Subject:From:Message-Id:Date; b=d2qbyjdgpA3jMMr5NRYQpczGz+6NPHiPaZRt1BPKoQN0LzXvCNCkY0gOleqbwSZgUkTZb3k4ERl4FaAMFP0aiH3eURiOXrpJywZIJ1DRXkMuak74rPD1jXrbR5+WQY0BHSbUUUK9bMOSDfxuHtj6oHqpm7XQqjAQMYg54n/ULy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRPR47BW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRPR47BW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B23C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745523593;
	bh=2bT0RIBsTqRywNeVLIBgMnsj3GSpCxKAOUuaokeqaDs=;
	h=To:Subject:From:Date:From;
	b=jRPR47BW1vUCuQym1LuLlpJmdhjgH/9rlhZQ+rLD3lm3qw7UOqQLVBHDApbrM3x5A
	 2tp17Dx70mP1ozh5oQG61xlqPu2cEGNK/1IccQNCqof7dIMSPXnIPtedlqLsee4RvY
	 POKOQ/jwrl0aWW5FvDCd3khJcXAhGSK0ZwW1rXW05jhe9cwXuM++uIiixKr/s4/VXq
	 moAoa1s1tZtgth82nw/ZEJkJEbJnWitArmHE0+goH1dRy8dgYkBg6VovGzZ/wnMjm9
	 x03I3aeSwe4DU30JHy0jiSaNWKPY1KbU4zv6tJbR5u4mrsSJS916lRhk+cOI5r8unT
	 a5P1mCtWXREIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D2C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174552359357.32119.10971799837261056450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7699bc03e7f350332a0f2b9ce4e20572a1b0d7dc131c69c8a4bd40413171b4aa
Date: Thu, 24 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745523593
