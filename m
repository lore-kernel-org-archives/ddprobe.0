Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AB025D216
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767852234; cv=none; b=g1hMevE+SBhSFj7oj7gTnwG6H9AUaKcDgN2BD7FxflzGmWipobmaUsS5245n2ULDooGJ3J1/OzX8QwhOlI9YkqplyHCzmq7KnFhjkt2NiQ5s9qgRa6voILiyjtDhjLPHd4b5E9cnGAcVHEFaOLTeVjJKeBepPoU6j/U7Crvgs00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767852234; c=relaxed/simple;
	bh=IwYhmjE4ufPreL1Dgbo41ihCzvPa45A3MHT73y685Tw=;
	h=To:Subject:From:Message-Id:Date; b=Hux0ViS19H4ro/zJg1kD9g1feJL03kjLpxyoX2QuIG1rH9giITk9sdblbB8CJiOv4w6F2H7eJ238nbpzmAPCwlzrfNtSc4TwS1n15yHe0z+V6QJjfMxgT/lR33Wv3R5RBw16y4oUoQ8Zqre+rPP9eECLlVzot4XWltRStQQ7oX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YU85XHy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YU85XHy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD66C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767852233;
	bh=IwYhmjE4ufPreL1Dgbo41ihCzvPa45A3MHT73y685Tw=;
	h=To:Subject:From:Date:From;
	b=YU85XHy5ygakGPfqSljX41wgYI6sSyT76+7XT9uoGY7y92HcOtPGNmoMCzt2Ku3j2
	 x4QIPbXCmqD/bvGT+5w5cO9qlKeQhtBWgMQyYgFrgJOvtsb/5TbV+d8Cl9zlCCjz2B
	 fef5znTV1yVKdx0jKw5uRHWM76Qr8y0CuB3rOeTG0VlC9HKkyFfff/247AhrkR0/Ux
	 0U32+7D025uJWMt6rXBzT2MhWx6l0/H/HAh4sKN6+jN2Q9IBDpJez0s9hAXPC7QocS
	 NQ2PySzxZKsx8vLyZlgyNfkwT9frMlU/EgWsvHneC5WgqsqsimhrZ5R7v3fLwXQglI
	 dQIDPRaFprUwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9723CD1489E
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176785223360.27010.5852395534996959296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a832cd1bca23bf41c1e5811cc5d88a1c967799c368b965312e7d9f64882639c
Date: Thu, 08 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767852233
