Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AEDB23BF
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 17:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716052943; cv=none; b=ZrI+Ta/bynYgUw+tOrvgfMxT8gO+VdiW0iJUyG2S99PcjFAkFipxi1N7/5Goq78xysl0TaSR5hOZWV/GswxvrvhcvnuMWW0U7n3MQqtvlxbtdkJcXfuNXOtNBWAu4XpnvCRmVKH2S55X3nC524D39S1YP++zpCtvRti0plNZgyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716052943; c=relaxed/simple;
	bh=Ia6NhobBeEdDE7/38TC13fYKkjAyzjKTPbmK2dGCfHI=;
	h=To:Subject:From:Message-Id:Date; b=quAtLMDAOlvnK07N68flnYZVKTzywmktUu7C926+J4+j0zKwFpL1JxB012QxGHhvmkpsa+7IU6SDpRjxQPrkFtWOz01IcvNRYZZLWpG1S6G17zgpLgFs17h56rvJYl/N6igtYkO27Qan9iudXLvt4yAw+pmvWk6W/zkTzYs1/qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSWE/1/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSWE/1/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9BEC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716052942;
	bh=Ia6NhobBeEdDE7/38TC13fYKkjAyzjKTPbmK2dGCfHI=;
	h=To:Subject:From:Date:From;
	b=WSWE/1/4u3erDIqx+k9SE6zC8PY0h+r/WTrqmrik5Dp0Wri9vqGzYj0jzdENn50ll
	 XF/RkJIAKmWGf58rOnSYaOfylv0a49NHCGPO7Mkw7BiXXxyqLW2Lf0W5zGTzbkqnN6
	 7kfGBWDI+JsB5PmvSEGdoTRXAqr753kCrdqlF19IzmbwQndR3D1/jWELmEcZUA3ZZ9
	 z0HNCuqTGvmbhr5G82M96Sx9UIIvs9YOs8ThRTj1GCOT28yQJfHq3R5VNVp/RGC4zz
	 iPNdNPxRKBfvoh31n/bz8E6KQ0P7ZcjGmEjFCIGbtP8haBl02BAI76XXdImqkkJFDI
	 3tsjpF8nbTyeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5975C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171605294277.6358.15348314587486269289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102e00a8d7567a12636b58645c80a87cefd5aa9b3f614beb23ddad73ec55ad3b
Date: Sat, 18 May 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716052942
