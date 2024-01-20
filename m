Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30CFD299
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705747097; cv=none; b=uRd+8wFjcSLGJqBQFVALRl37idpa1FFuAwvkqE0tGHQK3fKsQ0m9bhIQv4i2HthwxK/50KlIyHDZPlTR2sPOD+H09nI4uFXfguUgJlTfQTHFfu7xxc4H5OaOApfCZ0O+ZkbIUMxHKIWkdrEvph42nLfuOvSCl3wXzRH5oJ8a0pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705747097; c=relaxed/simple;
	bh=Nuuy9OEmrgu4YGbVU1muG3ODvIhlPRNii5aDTzIPKF0=;
	h=To:Subject:From:Message-Id:Date; b=Kk90wN6XHmGDjRuf1R8uCo1iUV92geep4xRYZ5+n2LZidnll4Cw/gK4+9pKW2f0T/7PbAvGcE56PIxC6WuCaHCSkZjk1UdrSz4XunK0My3De/ktf49Ky/pttHQpPNlODRUQMM/84ibDY3MuXiEKqI4Z7+22avfyzUreKB2DTT/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9MtGeZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9MtGeZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE29C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705747096;
	bh=Nuuy9OEmrgu4YGbVU1muG3ODvIhlPRNii5aDTzIPKF0=;
	h=To:Subject:From:Date:From;
	b=a9MtGeZmLg3zlw53bDV1z2VncRpxFMoogDESyHoUUJ7/ucswxxbYNSWvOj7T2Nl1x
	 9W0ZtyRZ8HxcLCEbI3odAnv7IqxVuW9BVj5DWidY/bW8jflGXOOh04mPvIPyGGxQLK
	 wgAohp8+TuyQv+qOiL4VSKwgM7BvHUEzE3g39aIr5Q/US1xFZwQM/ydHtpFV/vtYnA
	 kKmwdzWYBQpdunM9bNvh/icj7/tV/uqkLFvvLGJbCDc0YhfLatMrCsgoGy/LTDxH+0
	 nTHWcpE5hK9Xk4iDaOYnLaFgxG5BrInK2ogoxVabBEk5Jr7QPDe5o6NXWM23DragFp
	 0LNRObN0gj4dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE28C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170574709637.6296.12952761036637986207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566f3ceb5b894995c5ba600331ef7ee49f14d7280a5733f6a7085e4b9f575c61
Date: Sat, 20 Jan 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705747096
