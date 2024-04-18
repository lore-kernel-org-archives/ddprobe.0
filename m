Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C38D16F84D
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 15:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713455963; cv=none; b=f3xxnpE0sYrqlvtDbNNV8hQpJByxi2jYAXINOyGLvj4E2qAY8kggDkanGhBHW8tyoOFFklPhJn9mAav1lgM9bzDjcGVWPqqfoCumjcZ8tJ+zN+S2v3NCHC0Ubb5VqDPYpYNOpJl5vfAB4zdMTdM01pqkVmoejkhpyF6K5Sehppw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713455963; c=relaxed/simple;
	bh=ZYECXHu2K0HYnK8p6sEdozQ+wS3rImoIc8sYi5TGnXQ=;
	h=To:Subject:From:Message-Id:Date; b=W5rfkhfvJ5swyG1TS8sILBo5+OpBk1qKyuFsXQsti1KOEG766qOVawQu29cqVpBZ61bfm2GqT/tXgF4yw+odIVAmsNTGxiQoisuDanqfyzeHCEvFgE3qM1Jkix7sWmSV+/UZpmeMHGVQMRRZTZ4NvHgXTVv3sJlNhsAoO8ti5wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6uiW7iE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6uiW7iE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC5BC3277B
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 15:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713455962;
	bh=ZYECXHu2K0HYnK8p6sEdozQ+wS3rImoIc8sYi5TGnXQ=;
	h=To:Subject:From:Date:From;
	b=g6uiW7iEzdfXSdzjOIYf3Jse5s5j+qDQnPOq4rXTErVe1OZzmxB/2zlua7bcw2ac4
	 34Cd8jSm5dnd3hZ+0tfjoIy4bfcbvWJP/4hc9dq47HcdkkAEN/OFnu8YsUzPoDqOSp
	 9MOERpuBnJd/X17wBM+rZYoRGk/Ll0YNkc23iQbRN54emlgqkFNA8jLP4qPsz/AuIq
	 OF/XqLwILTFgOSfYMTTAab3B+SooLxDVxgxdPqITl/bkt7Kqb11jyKRaUQpWXYcGfL
	 53en18oGPJyXyhSpYosrdCAy3zIDSZZTzKoff4BbBgzshb9BYpU+SUFFuhREhb+7fg
	 N3XRjW487pYLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44A3C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 15:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171345596279.6761.12152860048213021760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c74cdd5b38622f2fb00f6713c95363745df321e34c02b56769cd9db85730d23
Date: Thu, 18 Apr 2024 15:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713455962
