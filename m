Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D13B163
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748186394; cv=none; b=iIzKKtrq/Be0y29gy6A7bmsk7Qz/4AtT5sj8OQmxfChblDkqwiSPbj1zTDMjcuukVutRbJMNXsBYPeWtOm3UiUA5V/89tAM8Bg+BeUCJN19Bnc6tV/HNu+m0DKNpv49FSo2yrDv1imlf3FntydXeH4C8E+wn+GBVtu3Za7QXI+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748186394; c=relaxed/simple;
	bh=MwHCb/d6zruyB9zffoG7Ml+VXeFSBrstO5OT/bwEifk=;
	h=To:Subject:From:Message-Id:Date; b=F93HB3JpZ6zxKhYyKGEIeQ4bG5ucbIrUH8ahKgAL2claw1tbDzj1W+4MSAyJaxM1uhLCs8A0/ZB7tXglSZXl7PvVsiEySOGfaCWqwJUU3GQH+BiXqb/oWUf6hnNqgG3C7WZmq6iYNbaLmPv/tExjNhAZgddkEF38Bf5v3k/2aIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCAoGVct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCAoGVct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40B7C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748186393;
	bh=MwHCb/d6zruyB9zffoG7Ml+VXeFSBrstO5OT/bwEifk=;
	h=To:Subject:From:Date:From;
	b=mCAoGVctGfATZx46bcIOCdXdBsw/qNd7K9p7Qk6f/o2BRcTvqyW95i5eaSxXb1Ikj
	 q2sKPlQ9DQ6cegRClJutUonHc3ULbGVwDjsDT/6uxJtTC1WC/mTJqCUUhyx30ElbZO
	 +IyULyVImIuVlj/ZJGZzryiWmJgjDt/VcFh71rHPoqkbSYo6N06EW2NtAgsQum1avZ
	 DKcti3TRXu7aEC1VF61Ne7Ob7FeZlZqYdRQAiqfTVSs4FLaAfYuoq8KWvdJrILdaTQ
	 RxK6cE3s4Rl3p2+qAYIQi2W9EcAbImxRgSQPThytYJg7bLgrNdrO1d7u2VyWm4za5K
	 brrR5PXlSHxLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90733C54FB3
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174818639358.807.4965813122759098501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e05b08464f32f628cd1c04d11398875b20197c7037b51c1ca276a0bcba40d4
Date: Sun, 25 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748186393
