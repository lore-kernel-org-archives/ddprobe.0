Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0CD9443
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726626954; cv=none; b=H7Na+9MS2Zmdk4XgMB/mI+jTDUJt8YoR5vkYTMhnByy0DzwKS50G4wPs0dxq+7bKDVvL3yD6/oM+V5E6k+8bu9nLD1ma7VmMwvQ4GnPvoHVJ1r3xdZ2JkC5F9ca6pFr+TRuJgsBi0RqMsgMv3AuV5JtQxx/lxrj5xKluvNyDESA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726626954; c=relaxed/simple;
	bh=unkVxS3BgXftjC4zWWEaj0w6XWCAhzGqPMBdUhcoWBM=;
	h=To:Subject:From:Message-Id:Date; b=dgc6txutkkjrt0NlJb1mhyReGQjbAHfADRwyBjOdG9NpZtnwQsjw7+5zoDBBr3Ma4FX8W3i1RZfD0ptBw1WAyPAmGLCVh5zUJR5x6P6W7ghUnHFnY4KKLSo4HkMvYQgE6PASQx0KAJXNQunvVnEe2XP8cMBUbe6FOAEnS3+JlsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jge1P+2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jge1P+2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBDCDC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726626953;
	bh=unkVxS3BgXftjC4zWWEaj0w6XWCAhzGqPMBdUhcoWBM=;
	h=To:Subject:From:Date:From;
	b=jge1P+2SISr9jWCo/DNIgTMEujQbLMmu1/j10C7fm6Af79eHykFCf9fcu+5jaegql
	 Bg70VJQJhARWGhfziseDl5bP6Nt7pR/hJIpPb48PNU1GONgSCil4ZIXPjEiDept6u0
	 SpXzKL8Y+nz4deXeIVblbO1uikCTS6XBAOeCkWAuRgD7tHwc5yZ/eZF5/tFpbWxYse
	 Hh5N1dIQdWdmZPoSyuLiV2cGXVi6z16/8xvXL3oMvzZ3ENRenM7hiyiZ9eEuSbVxRw
	 uv9LmkcatPM/TGpG+A12wOItdgo+pfGyq9+B8r3wRiT3fDIPtYK86dC1iTgxGrHygR
	 whdBtkYpKDMFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74ADCAC5B2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172662695365.11863.3834762085387866087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 352d61db8907fc73e6c8699a2a60124db1539f9b3519b9654881c1738ad62c7c
Date: Wed, 18 Sep 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726626953
