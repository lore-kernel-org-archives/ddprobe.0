Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D58A3403E4
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789964434; cv=none; b=B5XELk06pgjaVdVMx8f6HZGE7N7DIo9/rScL1amAIzf9zxbViXcrgdZ+f4Y5YORTo89/0XaGxjJ6luqxEkEMQLAQ+fSbw566Jt3sxJoZgPClIMdsTqyNaJ1TSGDJoj2PNQxc8L7hXlftvoB62iRxqh33jQXMLYjrWB2WV2H6BCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789964434; c=relaxed/simple;
	bh=SA2P4+oaYAXuMvrbYQ5A1pe/CILIPCwDYb9rZKCzsuE=;
	h=To:Subject:From:Message-Id:Date; b=Gr5FLKykXoTWUpkifw59CbGBm8Gc/om6EKbvzPISyt6KhDuphOO20SdrcxVfeAnFkdrPca0wZRIfPd9yx//hOyoOZ2YPnko6zBwvWp2ssD1nL73b60eXFKD2Qibrp+zbkgyQy2eeT10MEj5NVKCHJ1wmO+P3NrhFqXhmKUz0vPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WK3Mz6OA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WK3Mz6OA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5C3C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789964433;
	bh=SA2P4+oaYAXuMvrbYQ5A1pe/CILIPCwDYb9rZKCzsuE=;
	h=To:Subject:From:Date:From;
	b=WK3Mz6OAiyhyfWMKoIOn0mpiv9h/+1eJIaUpD7JKQKdLkdZSOdd7v4l368Gm6kOu2
	 jChI8PuWSOsTgDhkzoTHhX6Bhk8U3eoeS3w2nrIunBo7m690CvBkVAAXLxXpDLeMOa
	 P5VUWBCNGRRaiOw5yVNCXDZeoPLhvZfMroNkCESD647Ad0ktwI3mG0e+2P6Ana1rw4
	 Kn1n6kUuXPbI2RQYqDUCKmNe6MNGvq4e5pEKSBDBoDdToYp9VJyUqNIDV2etjZAACQ
	 ZlMJb17K0Rf0+bukE3JNXj3s278ebw35CXKjgMccKFMvA4LAlI1rSBYrdw6AeTo4Tl
	 Wf7GDQsF118iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FF7C982F1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996443373.2124.6463808826800402984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848395b1aa585b89af67e67cdceb105c6764338e28efdbe56d3cd36eaffd7779
Date: Mon, 21 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789964433
