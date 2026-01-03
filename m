Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E0127470
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767399833; cv=none; b=RMlzfcVuvPINMPiMFXGVH2Sn61FRkAnetgKA6DZlpqi/HxttF7LY9ZHpqXriK4ktZkS57jvVNFUcmIgeXwQ7fmD0dcxu0eFCZTqZLVut4BvffCm1GBy5oiPSH1F8qHh3ndPILQhoqGitllOSRGqsb5RBM8q2NSF1sI4COm5qHko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767399833; c=relaxed/simple;
	bh=4v1WbjSU0mORjmYV+qBNaEYD1x3kDmw8l08YsFQNErY=;
	h=To:Subject:From:Message-Id:Date; b=ZYDjyiSCswZFCtJgM7gJ45mlCw3GihtkAqzfk7U+shZxsH8l02bPip6s1em4MKctAbDHhBriLXkwJzV2kCmUClVWj+ruydIPEmG0X46jDVn+x84Bx8ADaej/EJMHZvLMBiM3dyz7N7zmAcq/7o9Cu32HLm33DbyLYfb03K36gxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHs7pbQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHs7pbQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC54C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767399833;
	bh=4v1WbjSU0mORjmYV+qBNaEYD1x3kDmw8l08YsFQNErY=;
	h=To:Subject:From:Date:From;
	b=WHs7pbQvf+9lgWLRz1aJxLAbD6JbB+c2wGCkxMIMYLLqdwnZZ7YPGDSQ0NCJTsyrO
	 TxTLYbWsaawrjIO4I5W1gJwBpZPimgYcXvsqTeyzWmltV7Wy3Cm+Axt0mWERiypHdH
	 QG3YnIfaD60mqBpOR3odkxztSEGgJhN904SpM+gmsNb+qVzAAjkXrzdHqBTYzUQvh3
	 3zXbX7Ctmlp5AW9lB3GRlSqJudrHDao3AAAUbOjGlpL6Cw5IQQ/IcLS+qaFRYstOdm
	 RLZIbqQXeGb2QdDDYJEF0RkEswdyA85i62PjtPtYQg0h6XPBbi9iKGl9Y3L+b+dJo6
	 cp24mghqd7ePg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD34FC6166
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739983358.769.7987598587721911946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72cf3c92c05e1dfe0d0dcff5d921e5b74e8b62b375f622e4d97adee3b0d27517
Date: Sat, 03 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767399833
