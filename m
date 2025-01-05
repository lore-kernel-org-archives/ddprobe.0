Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C6913C3D5
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736063154; cv=none; b=UPVsKa1dhfRCd4RTc2+QRg8I25xY6nPSJ32B3r53IMuOYTdbLOcI8GHPKZJmP6L2DJc/qV22ZaLqfs6ckuUL3HWwEFngIkY3yRyJmFl4fQQZQrv03GLq8wGfV/rsF0gfuYChXI88PwlTI6JlvYDrMRUkDCQn153a3DDpFOBm6Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736063154; c=relaxed/simple;
	bh=HYDJDJ3KqVoMt02KeJcvQhCb+oki8EV1XzXyyQEENvw=;
	h=To:Subject:From:Message-Id:Date; b=XMpNKYNyYr5XJcLuzf9/l8SHGXKIJnRtKB3wXphfRgR7yug6GfvhPSSu5VCvZIxI53BgN9XVj2FwwkjiwdjtCYZ1FkVCJj9kSYMqZBLNtHq49j53jfbwRoAHh/Or37o2+O7QV+dRnQZtyfBr6iBfjQsfdZmTGtYpAdWiLVgPNmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbzDHzr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbzDHzr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD131C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736063153;
	bh=HYDJDJ3KqVoMt02KeJcvQhCb+oki8EV1XzXyyQEENvw=;
	h=To:Subject:From:Date:From;
	b=gbzDHzr1ZSR170g9atIYfsIa8bitNdyxEhLTsQI66f0c3N4gUafwwLnMcnvbzgkFf
	 4OfKUW3AcLQL4tN0vAvlkO2LfvbXJBhqY16XOt/B32udN9825CfTbhofZ+wHntnyDO
	 CFPmAJkMmcXQV0QAciVSGaJoEWDdkr4V+T3YYw2UCH/PnVcdcSBrQxGuC9j8y5gOve
	 CgQ5Ae1qXR8FVVFbWmJTBF0W7KCB7LJJ3Yh+yKqnD0XVOstPKOpULDpjUkhOrlkjBR
	 uzTpryGLjoKrTe09qo8LT52TwyBi+zDSu/NW+QIdKEa5VOMfQ7/ZtyD7byYts9Kbe9
	 TYdDp1vK9sC2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE27E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606315359.7707.9964271309558379978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a5b74a6586538fa147369211233b5108ae1f9831cea95b0b69806bd591bc4bf
Date: Sun, 05 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736063153
