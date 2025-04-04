Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4668C7404E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743802195; cv=none; b=koeoQsMRj5vn74mFwD3IQUCUKxHkIVTv2+yg5QBlYJx4VzV+6k2AMVhASroNL2cx8z9XY2hTjldAEgMOfNFaXBxVFKZACk3Qm422XSbRVsiyuXHoHCaSkPY6JV818b1QChDMT632N2kFTGeD5I+C6Yh8AyCQA8L5HBI8s1qKY1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743802195; c=relaxed/simple;
	bh=TlQCSyTZOQSdFx6VVvCS0l9t3Ym5NIPCsw3q+AwT/bg=;
	h=To:Subject:From:Message-Id:Date; b=hRa+FpIM3uctpqevbB7cdfD15f42N2VtWsGbJ/bPBiLPL3cE3t5nO3A2xuoNdcpAlwrtI4IcjITdLjDui1TNL6bJXoxVQE1CiKsj96nuv2azRThErPMqc/MsrdHzr7fs/MvTtsiq2DuT1dHbziq6kmX59w7i+v6iGA06+H/6m1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQjxxoOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQjxxoOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B02C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743802193;
	bh=TlQCSyTZOQSdFx6VVvCS0l9t3Ym5NIPCsw3q+AwT/bg=;
	h=To:Subject:From:Date:From;
	b=IQjxxoOrNnoC/L26Pnz7Zv7BY96X5GuREdYGrfI/vbxPCWkgospc+fxzGn3Q0u7mh
	 8/CtWxAK3biA1LneIngr2VNMgzHB0ruvq1pcLB7c/Hj9jdhl4FsdiDNe6axSt+MyQN
	 3oeK2ka2G81lYUmRhajrI59YTGFsk5q7cKnKjXmAkBKoFPQXqp02vCiD54eZ+p3e2s
	 NB7GENWPX2qwSG06qqGU0WxNl7z2xfneCJSK2o1njnL1Tmh7NpXyEAuUPGpBcDFUl3
	 ULuwb5auALvadMdwQ+ATXDwwCONLFhpS/k2R6vY7S7w6CRPQlpQDUu/Yo0FRpFS1dO
	 bb3Fxp5X7eFPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A664C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174380219360.434.12234433697002336962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3dbe42ac417b4bb6082babeea9f306f2ff3e001abff403df7bf46aeadc8404a
Date: Fri, 04 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743802193
