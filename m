Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568373E3D86
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791285634; cv=none; b=hgylyO9ezJOI1ODst9uCVRv2AqdFSfgfUXnGIE7QNkBc5kcIA1vlFrtoKiOxmzCb8YYRWE7/5Q93LvIbkqaKyfilDCrzCQnE/v905Cg75LvtmHge8uc4LWFTyu+KeF7kB5lSd3PUmRr5jv09mLb83XQd+jy33J9beGCEgqyErw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791285634; c=relaxed/simple;
	bh=eeoOtkyCId/CIpFgjC16mA22eh6gQCIfP9Mcg9LoV2o=;
	h=To:Subject:From:Message-Id:Date; b=U2gSKAsWZyCplshBNxUZlRFhA/EwLhNemGnGAYxLcTbPC+0C2BNQ2WQQqNVXySd3Enzvmk754vYQSXPaTxP84nez+oAvZMtoPcJrVfLEb+xzBh9f7C/NM5n/4tmJNIqfWvBLwJr6sjC9Hk5x3m49Vv1VAELpXki9tyuAVuHfau8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E60L7/C6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E60L7/C6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE341C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791285633;
	bh=eeoOtkyCId/CIpFgjC16mA22eh6gQCIfP9Mcg9LoV2o=;
	h=To:Subject:From:Date:From;
	b=E60L7/C6aIkhdy+x746ZKYQd5MIeMS6EaS5+jlgTQLVvIXzm6WYnDJtEy+kRCDKNt
	 Qc4o6GCBAlFMoKvlCAdfHVRD3xb3OVMR2rcGQDsdrfpr4M9zjN9EaI2uuspOtbTtVI
	 WDYgtYO7rfdZvKBTN5CTvVmVyCbQlOiMvaXP2rEZcpiUCoaQeffBcmnqZ3/gPfCJEZ
	 pNEM/12HvtE/LhJi9LbUJzRkPI8JGT7BpRNvF1XfYka+MbKu7ZmJHYtLJPvLETcbkp
	 N4ImyN1/3wH4Zz4/vEA6d8hs4unl5jDK1EIZPqj1dMT9BjWnwIAHQwZ9EBBAbvjxsz
	 4MTkDhJRqSAQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB44CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128563368.19394.15606849122026342956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70720753bb61c48116694f9d3d51d1688083056e77a0961f4b3f9f322944e4e3
Date: Tue, 06 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791285633
