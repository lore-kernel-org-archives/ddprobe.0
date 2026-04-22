Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D312426ADC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776885455; cv=none; b=eK3CIW/2k3RBY8lumrL1VRlR0NpI7zgM/8441METBYl0AxTsb65hvxfM4l5t0tTjeCZCMOReZ5+jpws0HsbT1JnE24+Ls6nP3jwd84T5rKGxjcuJmJdm+CQViCmhdrnR40ac2nCAPgXZ8kVCms0f3yu4VCgea4CxLsyivJzqVA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776885455; c=relaxed/simple;
	bh=eOVu+1UPyq4m4EdVq6ly1NN6YGxVE5o1Vh/fWHkIBwc=;
	h=To:Subject:From:Message-Id:Date; b=SMds679IGq9ygQbPem1SxXSqvhmtDOXbhh0C9rSuz4MqmRQi7J6dEb1LISifzZ1Y7Eu/znqf60GBLd0X4lEVFc1/gADLrn/dI6mqsBb8QTGjVVABX7xJnP5rFhiERn7gzNqS4SX9YKssfW3yl3j1Y70KYrEZX7q6mLLh0KFzlWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mN0kPASi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mN0kPASi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA003C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776885453;
	bh=eOVu+1UPyq4m4EdVq6ly1NN6YGxVE5o1Vh/fWHkIBwc=;
	h=To:Subject:From:Date:From;
	b=mN0kPASihWizJ5EWzybNgtrvSWSQC4GR+jICh/xs60S99MHTzDRonx5A6v14LlndJ
	 88cEhebMXXGcU1GIhoybM3JymtC+P8o9MKbxNpqbULsSGSvH61mQC5N2zDoX/ttKZi
	 h4z90tOb4pVdo9l6Bj9DtFNKcrWGMT2VokBDxfzF+u7Fl4G7dOQPhsGoQS8JRA5BKs
	 YABnUU3MArEcz7RWNUywPBSwEwwxqthuYidzpn2Ju9minK/0dp0YSP4bPyQ/A0i8xx
	 VXrzVH/way2lafVjU6pDC2XrKjTeXmuu93zSa/ZSwqQx+xcDJhnYROVUsbipMp5ufa
	 APUqK2IfyH7Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4D1FA1FE8
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688545368.611.3906690512146902654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0fb2da4eb767719212d282d538c67dcfc29e23e48ae88002e37d1d98a2571b
Date: Wed, 22 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776885453
