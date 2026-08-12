Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5225F1DA62E
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786559434; cv=none; b=QhQBkyHtbMiWEC4Tvb/N2Atdz40OMw7xdm4zdbykGk4O8yldBEgRdft3N4JS0Npcn6VkNhpb/7+sV7M+2QCycb3BFZXLL6mNKD664OoVUISwqVVHyp9nJc0rGCJLDgXX0ooKjf9/eqw4vfQRP8pzS/ui7DOmp87n+7zcopnfido=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786559434; c=relaxed/simple;
	bh=5il4TI8GKI/JhNXJTjcZSy7RWrDZDKEwbtzfZSZQy4M=;
	h=To:Subject:From:Message-Id:Date; b=bwdibd8bpzkTDfkdXZmWd0kRw30NMB4FpxpWjEBqEqWC1U33xmZ4uz2mFQtTUVYFO0xvw02TC/yRi8qrfKrQw/QBTeNAkn43dy5Kdi7CkhPnP1B85D8IdlaW7c0tMp54e8CvXECLaZkeoMo5WYzs0d5iCtwE9La0H8264FeX+hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZYE7Nnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZYE7Nnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DA2C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786559433;
	bh=5il4TI8GKI/JhNXJTjcZSy7RWrDZDKEwbtzfZSZQy4M=;
	h=To:Subject:From:Date:From;
	b=XZYE7NnuOMZSIfSJUEo7BtIbxrLMHmdC8VlWUhkVZgEyRusLkP0j76DJ6+GXfUhVV
	 goY6yyzZR1BhPyuJIIthwlYdELNAT/pZpfiDCI6so7MbZOnNIs7KbJWZibtrtgbLHB
	 ZLHwiE8XBl1EOWaxUVpGRmXTlF3txAFFZpgzbUa+wxZQ9ACwin7nD3sDDrXPnf+dpQ
	 E7KoXTQxgOU9qqXGZN9FlfPY7PcD889gqlbHeBOuNLgRefiFRna89uMjhb6Rwtwljg
	 4g/OWe7DW8Hk19CJ1Xk8YaMr0CPxPuZKmwhL9IehDJq6DC1TmRD3T6cR3jTHJbPJpn
	 Y4SI3TtYp4xVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4213C5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178655943370.10863.15839800841737363659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57190cd0a16a4d0ac62e7df3c25bd613e0522c6b07895cdeadcd542531f3821d
Date: Wed, 12 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786559433
