Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFDE120C487
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743011394; cv=none; b=eiwPXVuQEcEZIHExgm0nZHdMNgp3neX4j+plg9+EsHHTnl7NeIsk1LhJGbRZQEGU0RxOpEc7V8IGJF9004eB8DyFXSoXcnUQXNqViVhNi4rN8sW56mtIgEyiMelzqEeWIYHhOsta8SIVe6m7Gx5QqI6SZfS0CSmgY/ZMMSYKFDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743011394; c=relaxed/simple;
	bh=HWfLkuo2XMqeiMesouNDcc/Toh1Jkk2mdhgQXF3XrN8=;
	h=To:Subject:From:Message-Id:Date; b=HOmBB/b27gpdfgTdP8viaB1lzNL6HDAyTugOO5e7/JaDLIhboFeX7L5Ng5A0hDNtweQl61jxckheqMK/xVSFC5FPA3mclZ2cvQ9HmdmN8lSaUh1/XkZJv3/NpXvpPXCXCauQzlEyYv31hYYMrFJ9Xn5YCHSeZmoToWj7L3vKsuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKUAmAkp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKUAmAkp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06B6C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743011393;
	bh=HWfLkuo2XMqeiMesouNDcc/Toh1Jkk2mdhgQXF3XrN8=;
	h=To:Subject:From:Date:From;
	b=fKUAmAkpuXYp0kLiDQLVarSZkHwK7qQvc2UFkzkbNzsubTgJ8B/Zs7Ik44mt/s4Jl
	 lOngTYFxcuhgQM3g+YDJ1KDn8rTDm2udQ+mprrKexjYkFCE67wgVQMudPjDT8Mr2yS
	 LgmvbVf84tFQjAGy8rm83R8wIIElsOPt2m/d1gCglz3EgVDEq/1kNYIeuQPAKzNQ0C
	 uulzEZDetnt6UJTIqjQ10uXTp1ZL6qo+kH36mAJTUHETcJvrIl70W+vjzjHzMPXE4u
	 WP7Fkev+MtxRLiXAxVEssQJ8lQHiwibZu5p0qKV0aP/HnA6ioAVurlsZPCQCiZ9MqR
	 L3GPu1oa+Y6jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD69FC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174301139369.9929.9225836254892606310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4d34b064b50c5d28372a9112b9a3d436c317a6f6c80e5c14de4772cbc61f93
Date: Wed, 26 Mar 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743011393
