Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B133F626D4
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706807296; cv=none; b=Jn5abE5d8rtX6m0emSQxg/ltD5aAPdPw9+bNjm0yoVrxM6yrGqDp1ZS3O5NYwYnkEv/d+xglHdOQZ4w8hozro3c9Q1VKalhGX4NuRPLKwbyVkfHEYLJoEUGMUagjeRqJK9/Ci1YK2cfmXJRRqdogR6QG9IYO3vsgHURCOTGmEDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706807296; c=relaxed/simple;
	bh=wTNYC5fzTgh2LQEKvCGgUIr/KQwltOygE2qE4qAMZfw=;
	h=To:Subject:From:Message-Id:Date; b=HFvgHOPsljMphtnCAWLZ+DnypabsdtcE96ys5suC8RRrJeGxQzWorl/Z/W5OZTZ2B07Q0ex92wOyuMgIDh4Z/TbghekxVpg2pCqASJNXTUcwkbITRwJLHdsbvCE65ky5bWmHweFCu8Y74+1q5SrbdeObKPBBajIxbrUQJHH0+mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rM2QHHRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rM2QHHRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87A86C43390
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706807296;
	bh=wTNYC5fzTgh2LQEKvCGgUIr/KQwltOygE2qE4qAMZfw=;
	h=To:Subject:From:Date:From;
	b=rM2QHHRbaPbKfXxxsmoU/pEmUCr45bys07ZMQUsGKdWsLZzXYBrQfHwivA4QLdvHB
	 77N8wEzrc9vnjVAd2GKlFTkODcYqP8/Qp79UkGL0yXO8CVPKkD+5ho6+k4ShtlmvMF
	 PG5/MDqo4yEqKzPN4vqfF2g1a4fRSVMg1Yj0ytwFLrYIrNBUmJ3pMbT1Ym/G6Lg7+g
	 qoxLkuxXs8rt1wKMvgB6wK0IW3i/kj/7GOBBpEJ4iN0eXxTtTsWkvDm3768lwYvHvW
	 j2RJvYDrIipLsfVCsIn+0fm5YzMn/51uZOdzlsVpAqrvLTNmoZcEUxhgbgYjT/9eLk
	 1XQaD8isjHHhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BA8CC48286
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170680729642.1278.4731960322548634285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba4608833e0cb718a1aff2173a704a75e9baa4c073f50d85aa1762bbff15884e
Date: Thu, 01 Feb 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706807296
