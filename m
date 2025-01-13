Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0DF46B5
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736770554; cv=none; b=e6hxwIx+EL6YuovGqBUG3sAtfePXW1lBtucAEIY40mYx/pZEei68qt/9+Kx2LRsTRcTzvHuLr/QmtHHqV5jTUmh/2N4SGZtfw84Ujje/+I/6VGuccDbM1NJHHzQ7nLrCRO8zyK8w17eQ8GxmUOfxf1D+jdTKRZvsP7dcCwff5OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736770554; c=relaxed/simple;
	bh=lSb6M2S3lIHxsLNLWUeHFSIHUG/VqwA8GZJ0i4Zga+U=;
	h=To:Subject:From:Message-Id:Date; b=DzIIFOS7a0N1zbMqOdg8Q6iRYxFk2sqT/zmFTrR0hZJ314zvDOMJ+caUJPy2BTBSQthEhqGsQyZ1SiwpyUHSJJIqNLFB0vVd4U3qNW+h/crYMeqKQ+N8FKu/6X825/pjqBLui8d6HZVOdWlKtFmyxfD+hPkKCi9FF0o+htCjQ6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXLjrevp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXLjrevp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4210C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736770553;
	bh=lSb6M2S3lIHxsLNLWUeHFSIHUG/VqwA8GZJ0i4Zga+U=;
	h=To:Subject:From:Date:From;
	b=FXLjrevpwAIRVRX0XVnH+2tgM9XdMXEPcIG27n0Ps5r52DPEOpvTJITYdHbDm7bJy
	 k4ES+P8q5E+HhjuQUwF31zYPBWa76BKSlbdgzXVFQzpMgzQzRDX1nTEyPRvYZ6jE3f
	 XritXLPLOxLJA7ixxPAa1T+ZpVNXL7uqu5EOGLlqn0IOh9/mThyvgF0okvqUwB1gfK
	 8HwWtS32dHhBlBLc4eGyIYetOIBngG6g2/ewDzduLwX4qlHg7GdPAfagBFkdHxAeuk
	 vlLv/YCMiH3Ys7CiRYNo7XPCgR5LkBqXAkiDXyWSYo0Qklt+jDll08ZM2EBRL0FrgX
	 khHglsvjwvCWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917CEE7719F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173677055358.14221.7657540553671655359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4475cf2c88fccd4723af1ed8860e15633a57b8614855dce16ac7a1f4ad12c9d0
Date: Mon, 13 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736770553
