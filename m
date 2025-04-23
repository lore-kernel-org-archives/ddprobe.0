Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4F2292938
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745422194; cv=none; b=WdwbPVUd8kCQN0YTsjjPHOchXlHR1o6M+wT0AHJagaF9ujVzid8iRSf4vPm+TOzKVvlGq32NUWn5XdsrnKl2En/e7cw1nXY3x8NCgkVq1TT7yvFkC+hGkHobSBN/YKHjZhF5GMLj1kuRkiyENRfC6dQ7H0sy/xwWElMiKnUJEdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745422194; c=relaxed/simple;
	bh=7//sD2SKBMw1W3TEBZgC0XCxNtewOZzIQ693CG71qb0=;
	h=To:Subject:From:Message-Id:Date; b=VjcnSjOuQQaV/xwjOYkmL34sIBrYlBOi8wa+gby22eHEc7BzJjTzx3S7JCuFgbmOVJ9YOsf6+VCbzrIfJwVt+xV66fcPP14KgZhJwNKJhRQbCeql7TBjouewo3+zDwBX7+BtG49PeRYGoLSNIMM0PwGs6I2bmiVvWnB6JeGJ074=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZMB4pCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZMB4pCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A191AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745422193;
	bh=7//sD2SKBMw1W3TEBZgC0XCxNtewOZzIQ693CG71qb0=;
	h=To:Subject:From:Date:From;
	b=CZMB4pCkJcODXR9Aw/hPr+aUjBr1sU/WSohMX6f7dBtcHuq4+6rfVLiyRDPuyx/rY
	 A1ug1acszlJvgTgHqAUDlpPCyrD9L/MZ8SN86kyVMc+B2qnU4WwCP9+4ZMkMrCylvA
	 gmOVgiLBcCuByngw3Bv/som3p9nVrLOKkcicYeuzETjS3kukZyyTQqBbtP9gdPZAXB
	 oIfdzm5CK/b6z7bml5hbk3FW5Hg59UZX3Rgnjnj12RL7qOp61LLmY8ektGf4EIzwOw
	 L/cjJRomLKKR+TNMZq/FB1dO20s/uDCoNUffwfrhvlnm+B9kJMiGj2wpN72AducTXV
	 tI45L2gmPBtDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF3FC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174542219358.30223.10005797551565514173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a61e72a9c0542554924010d9c95989500cf5e0cc89bfd3aeee371d7f214e94c
Date: Wed, 23 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745422193
