Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485FD233739
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753396194; cv=none; b=UfNJqrB6FOnHmm0q495tgmwGDyrmnNON7hVeMxfIrEG9Z+/+W7oLbhmfQxqhplNxSMdiRAFa/TyXNGZam2HJkE2XIo1jOlEt5+7Khw27aDR5Pbw4j+faRs0MsMxalCYnUKhyNEKcZmHXZwqpn+0uBx+lhBXUhhX0PuhhRmJG4fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753396194; c=relaxed/simple;
	bh=qF/O/x15KHjS0D/EC4Nf4VaK2W6arqt/9mtREVdfjrM=;
	h=To:Subject:From:Message-Id:Date; b=dcJGOfB29gxaalp+nO/hKWVFFZEhRIKCuA2t97g3uZvTINgMMBXnr+S3XWtE0dvd7mSOqQBIJgbBqt0sCDaYswRi+m1T+pIAvOVhYCYfD+TaUB9ybv4yWORKO9eJ1I4HV52z+7BPmnRIPIO3EHGwA2O0rAaGsnShGYwu2zRuCNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foEHIPfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foEHIPfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD420C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753396193;
	bh=qF/O/x15KHjS0D/EC4Nf4VaK2W6arqt/9mtREVdfjrM=;
	h=To:Subject:From:Date:From;
	b=foEHIPfJxOn0E/mrBHh3aMccFY9Q4ZSyX5qRNZk0sqZRwdfEiZinBDwpxL5BDNETi
	 a55ouK98+PsG7/S7IGMpLnC/xbjZMEmZ1R6C/RQz+cefc2n6sHtGZCRB3Vq3FVuvA+
	 lLleF8NsnU6JD+kAX/AlyFrKdJlZOX2QSr7FLrlREXeYVwGW5C+zJIxrLRUVXfS0r8
	 qbKznlcK0AxoSbT7VQ8fOT6Vm3YWrTV11GVgTE+BlW8YvjAts+ZZfDTN7h3spO5gBp
	 9i2VM2w7KFC7pNtsq7ptRtXhQgdeVqW0f3QeuC7/uVmKGJwIEbxlfksQwmKvAIUaQa
	 C71JupEGtCU/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25A7C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339619370.560.7980314287049661999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4fc12a7833cc63e1e0c51be682f9bad735a25fe4156cc19d0cd61a931df8d91
Date: Thu, 24 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753396193
