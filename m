Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE6A13D526
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717518383; cv=none; b=KVqw8CjpWc5AIthV9FC/R1rrLJfxl+hecdNdd+1N75maAr/4orC6zijimoF1bGA/GK2Gh4mFbkCJHSeXKp7ZEcV6VHqKcl+hG84MF7fGrIJMp3gzCLVzN2RP97i4P4HVC9t33DsrnGCZQJ5ctBoIqUwPt7NPNkGrAnQri67T7Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717518383; c=relaxed/simple;
	bh=XyiDZgiZFWHR7yMIeN31Gts2d0yKXjNiT31bAfI96M0=;
	h=To:Subject:From:Message-Id:Date; b=E0aKPb4h6vSYTXUhO84YRo8bpH2jEMjK/qu/QcsSMBCq0nP3d/IWT3g3tb1JvrtRg2V+lSii1grp4nQhNzMezRpzzuaC4PfYeYUJzgm4ZCRcEuNAoPFOzso8GHUGQeQVOT2g8HbaTnU00/XTJVnxORrWpcM8ZgmQorohCuy4zEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0esRdFM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0esRdFM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2618C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717518383;
	bh=XyiDZgiZFWHR7yMIeN31Gts2d0yKXjNiT31bAfI96M0=;
	h=To:Subject:From:Date:From;
	b=X0esRdFMIOsmsfnVXX94+wIKXN5bvhif0PBRvA/8s8ZTxcpoNE5kMJSP4C3Unk/of
	 6VtbwF0S3xASZhpVKRsAcq1eHbCxLD86Rd2nHAX4DlbJ7XUJERRZFNBJAx1wGeEWGT
	 0IZsCGx30HQmUq8MvPrSTuspoSSlxLcoTURr21kbR37/0oy1a7UqpHAEKUsBwMsVkM
	 23CRKYf7UzI9/7d+IPUnmjN0jdwjzk+9cQJCVsXCIOJFhacGW4SjCVc9kjIjk7MHdM
	 nCRMKe6dL56882ZinkiFTvMwRG7j+3pRHpS9xRmH7+mfefdKF0OX5zGtSkTOVBZ8q9
	 nmfUCSBkISShg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D665CC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171751838286.19653.6864689889976300005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be4a169d4710e009813565a8d2361be5d96b22cea169cbc3f41289ef44ecdfe
Date: Tue, 04 Jun 2024 16:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717518382
