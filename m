Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C27146A66
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762910394; cv=none; b=G77FV8N7EdbQsxuAOS+GB+ATmgF0Gf3L9GalcxVCXLkccIHTb+BMueLD6MyUFHBwjGojtfYCuuBApV7K9Vb+/F2MqjeFIBc4C/4G04zffoJXcL4WsJDGZeqgbc/xZo6YwhFc/MO1Nad6U1lrsHZ/Of6gkgVZ5sYdR89VcUtpH0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762910394; c=relaxed/simple;
	bh=s3/f50f/A9L8mnM0sryfuiHanNyYutvqgJeiJLMIOZo=;
	h=To:Subject:From:Message-Id:Date; b=ilOVzIBtvQjZRevOR+LpKK4H4uVQPfJ366lOToyXeT2jfP82CkCbdP0JIc3Wp+peNBbV1W/IINpl6P0/4jjz/BTFoFviZ1HNbPZG6Dz95ks4e41TdrEHXF/etpByuAsjbPv1JTLjvkvL8gPK8nim4g3LYHDd7hi2LPNpljO4hog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azAzRi4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azAzRi4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00C1C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762910393;
	bh=s3/f50f/A9L8mnM0sryfuiHanNyYutvqgJeiJLMIOZo=;
	h=To:Subject:From:Date:From;
	b=azAzRi4lzIwDj4c3aE8eM488n0+2rptAZIV+xSrFVLMdLFyosmW39Y55dcFzG0+qZ
	 UxuPhoy7maH3IljA6VT8HJPXWRugN9pgVDSrjTsevr7Kx4P4tUKKqpVy/7mGvUfyfH
	 Yzzc1+1mnUrl44SXGAFt/ElNFHXw71u7dw8UM9oalPMcuVG2Al7WfnT6vRiE3KHCIE
	 JzdSyHl8u/CB6sXHJWOYWaSZX87WWW9Xlqtb/g7YKvlf61SaN9zpQnuRjnzMY8ayE7
	 MXqwBHHRF5FyKFNdYqzuPQtcUD80rQBIWUnJXyn5FgH9kZ5ZJG66wqePE0RkPBLxjm
	 xSA1xFMIog2aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B10CCFA18
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291039359.29272.12980131983499154205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b25a74e0fe170fae4747ee213b89bac481820d7de1191a977d45581c16f805b0
Date: Wed, 12 Nov 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762910393
