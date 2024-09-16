Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348AE3E49D
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726511754; cv=none; b=kT33msJyJZW8Oszyrby9ssQ1sAOtVTKZiSUNhdIxBDh1eCY2xGbbnwTu2iyW/DRIFH/WR6p2Okg5MW+LvCQL7i6TYpvQbrNvMseF1OkXWbfcQqUrysuH211b9HkCUHSmyBddWX6bhD6rQ0TSTK9RDAVPR7X3mCE9VkmyFN9lZIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726511754; c=relaxed/simple;
	bh=WZ6hIxN7E5mFgyzcTvgxgaEWRkyKsxNpIp8Ej02j7qY=;
	h=To:Subject:From:Message-Id:Date; b=CAo5G51cO/jPcA20S3djb2pMZw1rjeN3Y0x26KYnSrKQ3d6GPGqSiVNfdsYli6TBlelNSPQX2MfvZnqDP2MZKmTksV7u00mWlDNoUYz0nlcBGArj2AmGdgKrqrYB7XWqFMxeB61cmMK4qQwdrI7+Ko6bRjgsT37imgnCPPG5rgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMDGg/ts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMDGg/ts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACADEC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726511753;
	bh=WZ6hIxN7E5mFgyzcTvgxgaEWRkyKsxNpIp8Ej02j7qY=;
	h=To:Subject:From:Date:From;
	b=oMDGg/tsoFH2e6RapDjGpOLAJTn87sxfK3Dsc1zVTJeUepMIb3C5uPVo5zow2Mguh
	 qcPo7heamypJNGGAyTPQn2lGK94repXJEelLgtcxJZJjYPZEDfWntIZ2sr6uRtWMoE
	 at/wLeSuKIHsGReSkLxaCv0cA+M+20zWz2VCsv/rbAeYMlmuUK2t2v4cS8dlynU9Ou
	 mklj8m0EuX1C3dvIP12iWY7ggpg4OD6HFG6wtSJE8gmPz68ks/PkKlPjb1F8Oq8w1O
	 XecCJP9j8xrZ1atjcTmTeeDHxGdt2VJz+7J3c0fVTOWFciWY3n+MBbqSeSckq3lgOq
	 OrIlMIXg0WVXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947C3C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172651175358.24138.13709266137146198512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b44d6d2da4ee5250507ce80857785a3c4f0793e8e41d1a2e24ff562c6bab3fd
Date: Mon, 16 Sep 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726511753
