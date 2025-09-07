Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0ED221F2D
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757245794; cv=none; b=dDBGPVBBwlqUGoOKRWxAmtWSxRz+a8S/Aou/H/QhIhbk88d0LWBmFTu8gGo7u21KVXIlRb35nMqAzEBedVP31np9qDXK/4Tfd6M1qarrGl/Ytx/WhjzsuWl8n9SGzqbwlESi/Npegpsut+iSs/XmbAYkR/aqx0e2usKEh2yasgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757245794; c=relaxed/simple;
	bh=npaDHFNp1fFUnw9j1wckxHDOwGT89bzFCAxFwCc5OZI=;
	h=To:Subject:From:Message-Id:Date; b=M5i4iUICEUpZmfs96uRqqBfr7+O7d9srHgpqCtMX8eFY9HL/+GLo5ktwJ8w+RJUn/u2LIGBlpdx0rf7WkaSzsD70PaiksNe+IgI2JbALlK7emJ3l0YsQXGMhJbu++EZRT+y+0y7vjEGhbnx8I54I2SF9DSySCvrcbGb+T1cxlzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+fjEc7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+fjEc7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3A0C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757245793;
	bh=npaDHFNp1fFUnw9j1wckxHDOwGT89bzFCAxFwCc5OZI=;
	h=To:Subject:From:Date:From;
	b=N+fjEc7Ch/BDvGGLFWlM79GAN/eBIJFPvMjybP1Y0NiwzfJP/sqk59o9US/CtdJd6
	 vH0xBzhFTWiIQU2WOC+mq1+wBrPnxW16fRZkQ1HqT9jFPqcLanBy8nMuurn1tIF+Ua
	 M7/8qgS7X9EHCH6UXoXwzhh/RFDrhBjhu1T45oteBlIosVwRjrn5WPhqIT6JUl9NFX
	 EetZleNb6I0BQ4tMWXCeuFd2WP+TzBx7qXOcLzsfz7Y7dtv7oGms2PgXEysFrs8POb
	 TY1pGGU14Cm4QLAbYPWZpJvgDaqsblgKGNixT4fzEuEVVoyzTKWJcdJW9UNoBKOaLR
	 bajrfFuUIZeYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90158CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724579358.13750.13491897613040206508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 865ba76fbc64d85b1a6ca760eff1d4d66fd3a1513f3d55846aae1a3964511419
Date: Sun, 07 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757245793
