Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230EF3A0E9A
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773909894; cv=none; b=nvm8WLAIXnHt8Gy3KcEitMyzolXKyfsRNV2Vi0Yi1SKJPAOFuB8iYlOit3lMhiMZXgjxzI35ZBXNh1cTKvP2PeJI8+1b9ereoIuDqjYzRjRK4DgPjzfGuJZEmOJhZ9MUWBu5HSz3HJfN4IuJH3kf2zMWTBUSYk8r4SilWqVIZoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773909894; c=relaxed/simple;
	bh=UcqC3c0N6lq2tVbktd7f4uX5qJKLNGgIvIjMkErzn3s=;
	h=To:Subject:From:Message-Id:Date; b=PUQZnCzCwNTJg4k+egvDhB9OZsLbhSHJ0mv67ek3fzSyg9peD5cCrdop6UnkirUqXG04YdFauQRPzG7iplsPVHMaXmgjt+Y1GDs1HnN3hj8X2sjUYC5azmTwmqQcuCAhjbvIX42tFh6Ud7HWiGGKna963ZWfiSFs/xWOxlLFkL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2V6tgfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2V6tgfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A179DC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773909893;
	bh=UcqC3c0N6lq2tVbktd7f4uX5qJKLNGgIvIjMkErzn3s=;
	h=To:Subject:From:Date:From;
	b=D2V6tgflZ4ExRDMyRXfalE7CyIEFuqlsMXOtcKPyT4y+5ScnP7jecqurkWZmfpr1I
	 zb46/AJwXfwF4V5CdXufWZRTmhoeGEukgMeEZFSZdy5YNA8rABZFnN4F4GT+ZdhibV
	 VYGhatQmfo5vxfYmxBBk+7LbdqaIfzaIvmbMTVkJI1JMdakn7WqhuOqxLG/o9ZSpoF
	 BWEJUwzbPGNgD1uOVZLEFWTAnwJLZc8DEmgPXhXucLKgxVR6kUen0ex26WBqmNh9sy
	 GVaQxYFYiVxO1UbTSWO8oExdkIzziTUT+XNgL5hMNtNWlfJKyV3aabAHYrrx8IAbGT
	 cWMC1l3vak+HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECAA1075275
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390989357.18001.15086855796499299534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b811520369ed71a8c546380a41a87efc6aa777e0d79f20bfab92ea77830a0c6
Date: Thu, 19 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773909893
