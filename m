Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED6B16DECB
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742729994; cv=none; b=cnb4kqGW6tmk+0NRC+WC0DVPpY3LZyYUdTD/5zWflDnWZivg8fRr1LGK8pAMnkaNAQ8XU/ZhMYwzGNtIPLha1d4xvk/BIULiV/B6I2odcvdpQ4D1O+yGCFiwJwERXkAt1Nb1DOyUqotu+HRWNljg/+QQX4p5dW9JLZriLaYrqpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742729994; c=relaxed/simple;
	bh=Az0kd//rGxMHKxuBJ8KLLw5XGLWswTEsTCMeAhxJvfw=;
	h=To:Subject:From:Message-Id:Date; b=cH7OanftN5QuG8eqoAK8WtueBU2JTD4qV98+CF3upS9wCKoaeKV/I7XKkEXfU8kREYgJ5iBhbgXBfcXwKh+C96WrjnjgeNv2IFGztgDd3jGAZ9cTSsJlbo41nvfwhaZfWI0MnHLtWH0JWgdxcSCoWyYXvWOw5CfFms1W/prO1QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTg19tUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTg19tUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85A7C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742729993;
	bh=Az0kd//rGxMHKxuBJ8KLLw5XGLWswTEsTCMeAhxJvfw=;
	h=To:Subject:From:Date:From;
	b=MTg19tUP/xJbwX6wpykIdslcqv7r0tLvOaywxhycs8EoP+s+NsNn2cQVsvYzuUIhR
	 KzP6mutRrKMn+1ryX1sidq5qigKhKPHE2w+FkrX1Et2hCSEYjsu9RMnNdsdCs+ZK1W
	 DJXj+nsjbc8yMdg50plg8dprNrIKt4kIu3lN65FEuWHGxkMywfWlz3It8YmGA7sML8
	 xo4c3rMPd1V7+MNv7PR9E8s0S+M4o1nplQLw/M2sZnsoL2WYCTrZDRaUjaTWPrh714
	 mJ9iMwUFAihU/kkQT1V0cVshGMhYGD7HKpkVu9gZsIgG9qqnSjrQEEBvl049joHFwv
	 VjmxOQaqn2wWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934C0C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174272999359.31857.5108560742747361822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46079837d17d2cea95f275cd498802f5540166488d5d6708afd9d0ad3d14276d
Date: Sun, 23 Mar 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742729993
