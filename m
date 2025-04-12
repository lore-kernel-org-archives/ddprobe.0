Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D09918B03
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744420794; cv=none; b=aZOmzhOgDMNshuE4xAoqRtl2Lx0WMAqMnwRPjo/HR86NuJvTIArCe4iogp9TSWFs1Y5LbtXpk7lwBRmseKZj/bUFY0AgLbRR6bprtwoYLN4zfr+ify7g9GHDK7+qWZ46SDNXjVOFSD34R+wURF7lWfvmbNFZbQFtrbkvi1bcfNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744420794; c=relaxed/simple;
	bh=DoKMAQgFs3vS2G7eXFIKuFnKVMYUZUMeO2wi61NNnXM=;
	h=To:Subject:From:Message-Id:Date; b=ZjpqkvzROqEvBdRkV9KCEMk1bXbdCQCCLQgxswl5DID4rUIE1FaEBaM3NO3ID8bCVcFCtpfMSY9aEoRanjlhTOBfobjRag8DyNo0WcbC+nt9ikzOMglLPBGqGw9gebG+6Ya4caSrZeYKct/T9WTjSBTpV1XB9/DztHHd7GkUCuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbEibS2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbEibS2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7FAC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744420793;
	bh=DoKMAQgFs3vS2G7eXFIKuFnKVMYUZUMeO2wi61NNnXM=;
	h=To:Subject:From:Date:From;
	b=jbEibS2Qz62wGCDdiRjtUhh81hGqct8BE4Uagp+tc8OiPxsMLH/FdswYBNqFMJF63
	 0CI1GpVXxuzji6xxjH25JpOLTtxPg1B707YLk2oxxrFfsAoWfNn5QKoBSpAX8G3z73
	 zY5/acokwUqoAFDb4Iyvavf3p2SHkXutqA5X2PyGwwvyuxF0lW+9Ql1+T5sF/UkkEm
	 jiVhgHndRbSTxe9n39SWXf9vW8a8KtXTmGtlVEjE6QT8K6Gx7Hvbvx31vFSoNPIugC
	 qZ55N44biCQk5R3Bne1JHdUn6ODicXDoYTqt6S6EHTuu9kIrzyRYWxQ9K19t/mFvJu
	 d+YpBl6x9ic0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A64B6C369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174442079364.25412.12192332466693272030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064674b4e87d4b969f61c1d648fcc35bc8a01325d6e2888e3bc7da186fed9321
Date: Sat, 12 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744420793
