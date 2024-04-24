Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B627156F48
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 21:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713995483; cv=none; b=M/TvLnzPWzQ7AFnu86uVytj2AToKe+ezYX7ePRybELR0zKIch/R2f8ljV8zUI7IfziYqRJDWhWJviF91yr/FYEW304Ev/daNcNvJEvxjDGA3PvKnNGIz95XPU45U4WC55HVEJh02sYhb8D407L5UAsRTm+ywx3pPSLVOHbPOhMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713995483; c=relaxed/simple;
	bh=z1Py6HzJDKtkRnSQ3niD7aBzt0n+DwTnd22oFPKoFdk=;
	h=To:Subject:From:Message-Id:Date; b=SIMTi6J6TOdTCqpuGCA4CN4VHsxjfd/4izIlxIN9SNU/SCnKe2cqD3PvD9gc5meZ6J9DK6HkAqzaEzEy0DvGe15adpQwxciSSOOfarUX6U7SPV1kNEk0sfIXfGiQsJI7daeso4keoSrddVrbZMCvT2/GS9YbDDcGqOfLSu8LopY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsLoCAL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsLoCAL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE251C113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 21:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713995482;
	bh=z1Py6HzJDKtkRnSQ3niD7aBzt0n+DwTnd22oFPKoFdk=;
	h=To:Subject:From:Date:From;
	b=TsLoCAL6h4cvDYZ9zlHC42Ga/801RuQAG5edtI5PMseXuSO5z5zfLFkpTY4ysAhR8
	 SCRz29N9NXLGgvVEoCt5Lg+1X/l4FdAd5tZYJPB1NmobeTQX2NNHM4uDC6AwBlat6I
	 zRiUVFunpV3lZ2lAFQ2p1dYAYiG3cRZ3KuNJV/RvoubvBosASOwfo0DwXjvRFAPQyO
	 eFU37wdjS0ms63dAnU6LZmRq2bXtQo/yXWtBiXJ5zJ9U66TpnYoWGtfO8WZr3L0jLc
	 kwhzUq0MTAPttD6u1IFaHyD1tKmdxYtQUubesE1FiFHUAUNVP0n4QPVg7YAja2nl/9
	 1ZOELSHAtMGhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3923C10F15
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 21:51:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171399548279.16563.14083500682984021787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16cb8c807031d777eb92b3812756304b92ce90202d627ed9733ce02c01be6cfc
Date: Wed, 24 Apr 2024 21:51:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713995482
