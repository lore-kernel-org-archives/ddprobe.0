Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF792DC786
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757616594; cv=none; b=foBXHyeraQtaCpYcD9YRWIvEFgLqlMcHhp6XayL25eEOAVtrqGBemGv5qBCfwvISVw42jtTQ3Bfb2mG89BMdevVMsJ+9/xYdbExtuoXlkWPUcLm58CTxYDoM6AJUGBFOdKiLelaT5KcECgmFXsz9ULwk8eL86Q0kY1Be11OfZl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757616594; c=relaxed/simple;
	bh=yY4Xz2pK8cGhKFs+GGXn3310W05pe0jxu1+zVXIn7FY=;
	h=To:Subject:From:Message-Id:Date; b=PNqLe6uHRyXfCvABIKVijnMAyllbXvHfr9y96+gXPBfcSEDdlWPpOFGFcmSsrmaTuhFLOPfe/sVI1rUCEcaAAVvvXA8eUyCRuL9JPzUu+Kviz6FCo3Jf1VKLgvUdHV0cY+KbkuniYsTnqQL6lSgcKYqGi1k+H+ZhYSgqkLwf/es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlC+3jku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlC+3jku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCABC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757616593;
	bh=yY4Xz2pK8cGhKFs+GGXn3310W05pe0jxu1+zVXIn7FY=;
	h=To:Subject:From:Date:From;
	b=NlC+3jkumEUdz4Kht+8v8JRQoEeTX4CK7BTm/KtN8AnwEevhmnZ91IxRYTe0+pxxL
	 XPN/JWY/sPCSGInwrT1NzDExuDfFLHyMqKgEYAAtpEPNQjcr76Myaix02MQW2r7Krs
	 iaoH4bKgQiUt8c0ij08tKdEBFzvAWXJ8dhEib+2n5xabcogT9L3tRxvFWk/lssjYiZ
	 EFVxcNGvQBeAKFbuml2AKeWmvRz67TtfMT134ya7fCT2UyaHXC06uprGYCDBJQw/Nb
	 qrQmHQjLLEF5gCB4t+DrqaW3bClNlgCf7YlxC+SAf872NDIj3skHABVH0B+wpmVS0e
	 xZj6vVTWg9PZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E759CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175761659357.27436.11458360070472584110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5fcd39254c9dc0d469bda8330552e1668f2cf9394c9e53ac1413a22b9bacab
Date: Thu, 11 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757616593
