Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1D040855
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760801393; cv=none; b=Gn1Vx5i/WGU89tH+dzPDwDTVxOocVVhb78qkccXFWsGna+nvkxJFkNXTKWxpWLoRceozWTuhvzbuk7n4SKTq52HWj23vVKPpMMjwPh68fRvkwczfaQU2qBQf0EvbMyIrHnpr/sYeCiBOIiBZNmEhx8XLr6dEGvfVcR+CtHiPVmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760801393; c=relaxed/simple;
	bh=Mi87sOsUjFSnD9u+qfDskVRK/vMeZM1TbDPjsYmyCJk=;
	h=To:Subject:From:Message-Id:Date; b=bucRsAT4zGZFxdCRCK6K9ei+flRzxMcIEguu63hg0fZFOy8Irjm+0sr/L+AD62UthF1yx36ohMW+1lP6FOt0nS7B700vo855MUM+Uk2vmYYvS6y7AVxzGNDYw/7hGw52Me5PNzKhgXWRUrllCZV4EE3EZMEobW3+lQg3BQKQSAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWI8Q6Z+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWI8Q6Z+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD2FC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760801393;
	bh=Mi87sOsUjFSnD9u+qfDskVRK/vMeZM1TbDPjsYmyCJk=;
	h=To:Subject:From:Date:From;
	b=YWI8Q6Z+xbT4GgdJ4yDOo878Tl+r7sjb+7OuRGwSCeFNVGC5S3dlUNFL3Ljj+TluI
	 B2d9Aw6YgxeCuVUQtNWjDyqPB6wWsDvyHYBR4kryV0SmzBGMO9BtYCK6ETTeZB9tht
	 fu3CtTuUwY1sDgyhfiV+ZP+7lbHBzE9K4HT6nnqqdNV9Yu1JLTyAZz29RR5mS7qLUc
	 0LWzYUaaGDgFvGyXt8EY+XTsK+10IdukqsVKpdD3iyYRdTvqhaz4z9WNmxxAH2Vfg1
	 1Vbroix1yoHQs0LwDVjb5A2dAAtMw1vl5S2y5Yer8MVpBJdeFnLwLFDgCNj36tflqm
	 zs8pD2VIvLO8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904B8CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080139358.29907.15138394052426235222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40e83461f99ed603c3715f7c1164d7532f63eddb51bb4165fbd15da3050f0e4
Date: Sat, 18 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760801393
