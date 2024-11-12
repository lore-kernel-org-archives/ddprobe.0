Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482081DFE4
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731384354; cv=none; b=HT4X7z61NKCugjnkmpqW0fACNZXYBYmM7TLs7P7wFQhEyqTn/lItWZgTALoo2uNNebhStNHSVXiS8IcI+GC1hqo02MmrAwMqUM+DJNBVWeHUBopotGdl0m2rl/c0rCFk+PKJPPJZQX2Fo/+/ZEYM53hS28VCMgaeWwF8xAO4brg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731384354; c=relaxed/simple;
	bh=nyjE2PkMpKyY3U3TWIjAOSyzP0+iMpCbe0TgqTUvCCc=;
	h=To:Subject:From:Message-Id:Date; b=Q27re/eHywjgXy/ItYHSUBGLPRsak6wRqq/7bI1tdJ+/fuZlfMPy96JYT6CC3dGjJQVtUds+xEx8Hc+AkosaPKa0r379NymPSZBo+SRKcUoPygCEemqH05NYrnn7Kt+6hCAWrbKNI+X16cbpC+qYB7eivWj7YqI9wmE6e04kgRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhbriftp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhbriftp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6A1C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731384353;
	bh=nyjE2PkMpKyY3U3TWIjAOSyzP0+iMpCbe0TgqTUvCCc=;
	h=To:Subject:From:Date:From;
	b=dhbriftpE9AqZnKjeluTXX1s3FnOmfG55p8BZtI/qAVQDaQNXebJWGdXAm9LYeU7B
	 FVvyB36SfDX6hg6a6r41dc/vwlK8u4zkjueF5FqqI9zKft551fZVOqYDiQp84r8UaE
	 UvwMn9vW8hj4srtEE5nooOjDMzP3yoCzpOIeSyvZdypP2UrGXSGZ0BfDdDnWRyhDtA
	 8MN/j0oAbqlHhZgtx6IZNR2K1ermBk3piKu44jxY0j4fgPL3TPoXJ1lKpfO9e/i4EA
	 gKcCuSqYWruofsD+msWsYbwPF0qNLNZpfDbkz6mAaTr904cgxVeYNkgJeC47RmNXX4
	 97INh9F7ECadA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96885D41D4E
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173138435359.24636.871013667657977888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3da292cbd7a718c48fc2d5fa5ac930c85db99c17bb9effd015497bf2ef7ac6c
Date: Tue, 12 Nov 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731384353
