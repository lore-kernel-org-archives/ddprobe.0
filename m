Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0152550AD
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760364594; cv=none; b=XH9uVQ1PNGIqzwNopjHEd+1tN0a/LJ7GejDLATym53gy+4WqrqVbBPKLWodGtqC0ay4GCcuckRDbYx5KpooQ7J8HVK4ID+PIqMe/hHfn3GlgKyKUyjcX+9oH3/7K9176hiSAVvr1hvSC2l/v1NTFrjTYcLWI3YdNLejK2rkeohc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760364594; c=relaxed/simple;
	bh=gOZ744z40d5M1IWE59jGw3flAzMunY56ec5BEUuyh6c=;
	h=To:Subject:From:Message-Id:Date; b=C5Qyax4hI2FEtgAMC0qMkZZecQAiRG0cxwhun4laLUn/sb0q3LqHNVCJvyPQFaDerII1wDQqCdr2UBM6/lEqco40lOgY8uWrxxppbhLzpQmNH6F5ihaNUqZNIXOBv0TUaO8SikxTiG/D5pVC/jKuepnmi8B/Wf9Z69RAxl7EQK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNaeXScg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNaeXScg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA44C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760364593;
	bh=gOZ744z40d5M1IWE59jGw3flAzMunY56ec5BEUuyh6c=;
	h=To:Subject:From:Date:From;
	b=DNaeXScg93Tl76/r7icNbPy44KSVeKVPifSFho+7PxZwLl1jJV2J9YcyedMqaLjaG
	 eUiPjF6NKNcevKvErX/Rp/k7JX2yxN6i85LNJLy8Nd1RRF+U0SW5DwXWij4L5O0ahj
	 ym6C4C+LCRj7bRm6UhWLS89hmuyA1Vbwqu7Eei+v8p+wfdJVipZi/kHobn5AyLcjDX
	 pwX9u5ryFzUGyDev1lZWC4ODGAPd6UkgRLOGuHaScK65so/YUR5D0RY5T/3nK/tMBv
	 NHtkgJWZUcRvU+JnVt6oiEC8XbWk144w9o2Of3+zNS86JBBuhyca4SJytSK0eKMU1T
	 JPJ11fD87ecDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F62BCCD18D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036459357.3091.17082843612920743515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa7a652759187d6ac66d538acd68ffec5ea4a2e52a49197512d911b962b4314f
Date: Mon, 13 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760364593
