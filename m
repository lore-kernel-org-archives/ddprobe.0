Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464304C6E
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755333594; cv=none; b=eWKOA99MTSNoHq2D5/oJtfor/y6sjGRyPvpKZDlqsUM1gQxBh56WuPCqVEEs0HlWoGJSySVSBL3WZZrFXuEE4kMSE7sBbZR7mlgv3CUiylk1wU8w5t7oV8WVmrHC+eITiyuvq1E1JW9T4mHjrJ0KgyDHV6sOS/XjtFFwc/IfnJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755333594; c=relaxed/simple;
	bh=WbsIQZOzTwSNOfGw+yB79vQVfndp0ft2vwPhd6VeeU0=;
	h=To:Subject:From:Message-Id:Date; b=Mc7Y3kOb79pB8khnPJAhvD7dNt803yMwbUOmnhrSTE83f2VXqQk56WSUP12P2z9vKU/zr8vKb9Lb7wUfJ8PtcasZzdFkA3c7TRAv3mRsaPoeKd1kKrAr82kc3Lt/D43ceXdhDkV+f3iJLvnwQDZa+csLVVmnXCKAtYHm/6WnkII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwecmh9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwecmh9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A564EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755333593;
	bh=WbsIQZOzTwSNOfGw+yB79vQVfndp0ft2vwPhd6VeeU0=;
	h=To:Subject:From:Date:From;
	b=jwecmh9KU+ZXAVNhluTPS8kwC7dRZ68T9HDVZ1IXjgDP8wHw1dgOYqrQJL8ffN8Ei
	 URRCD/doQ+juzy0Y43tP4CC6j+ImFDUDK5ewgwS1lG+AANsx/btRq1AJzMBNsYOK+F
	 +IeY4vDuVf7UCGSCSOCjvsm+YYEOMFX9DqNTTgOfpEzM8h/CLebbUq10xZ1Gvu32ll
	 g7yHBaZ5XfzryF3ygA/+TiBU/z6vAG43cQdpmW+Nz0xz9XMVsa7u6fhVl0QVJW1q7J
	 D3AkiQ+RSav7NySmY79t1h5QRMjdD35HLGp2tUn0dL6obO4NHB1w1zjksIW05ld4rQ
	 dhs5WDErOwC/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929BECA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175533359358.9229.4080307627357337203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9901563889753b2cf8e6fde52ba879094bf4919512b67561b545457093be52bd
Date: Sat, 16 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755333593
