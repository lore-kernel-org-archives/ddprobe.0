Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D207376A06
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787266834; cv=none; b=J0mENH47fvg24tFsgo8sxQhXaRLaDjd4QK37zIuLFIsFZSjQnor0SBawEi0IM9R19rJrTYqME6AfITSLC9czgNyMd188TV7ROgTgmX5aJYIAToV18eJ8hIeBCDPXHC6a8cu4HoPt8z3TcZucLldxcNuQlQvdYGGTJM/JnRW66sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787266834; c=relaxed/simple;
	bh=is+YF+fDZ+xlxVAC7OwSej39dQCZ1KUGPIk+s2YeI5Q=;
	h=To:Subject:From:Message-Id:Date; b=BpvAl4GLlWSVFPHwjKPhO1rUkpFRvpJItQn3Sv7aS2FYqZygRygZzgRDucCgzV7a8jTTE16/LyrJOUlBCtw9sd+q4qj1aoGcfxVl6TKCjDT2GmQfsVWE/QSI0XA1USw4k6nmCEFCAPxnNUmQQ7DNQhmOEgEYj130+ZhigMoFEQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MR7ECBlr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MR7ECBlr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA626C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787266834;
	bh=is+YF+fDZ+xlxVAC7OwSej39dQCZ1KUGPIk+s2YeI5Q=;
	h=To:Subject:From:Date:From;
	b=MR7ECBlrKyUd48ifmN/t2yqYjhLmA2lxBue3DNgpNWh9imX4lqj4WZfpcZjH7FAYe
	 M/oJLJJpiiLmMUJ4MXccvjkcN3Fo9VM+DXfUzGp5Hf4vwtomPlJwA1iVQ0f59os8Vl
	 rMPQMcGBXOUFPDnMtLfGRz60MAXuVcc7VkgY1x7G6PAAyVCoDC+vXxBCrszkdW/AQ7
	 uYollV2AWyvZjZ99mB0QhzYPzIgJXg8sJZf3xeDo+d2tKbgCkYz1rt3Ry+zRsV8ClV
	 HPLWXzUVJ8Sor4ksJK4ivW7MdUUzLPPe+Hs/fEbm51BUXfJG0Gzez9+NlGEVIdP7dR
	 L2uWjLDD92PQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7C8C5DF87
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726683373.22807.13659497850989636219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fbf8216068ef06b8326f1b8fe91d80d7006646e0fdd3936d6ec549ce589d85c
Date: Thu, 20 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787266833
