Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B288381AA8
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788069034; cv=none; b=gJGlt86F9ycgUiM8Ysorrwgj/CLwXNPeos3ZBx/5SXcyNO702W5+p868YXvBcF4KkzDQFDOdi2xNxaNAxLNZsCbMXeApH33xhowNyHxBMFi2917p6HirzfHZluDXoEBulBxltT+KgjO79jcd/PDg95d0lxqnYllNtYSt5Uqq/2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788069034; c=relaxed/simple;
	bh=vBwcZZgfiLwH/+5F/iqJU2WAPEu+O4aOzCyAG4KvtGU=;
	h=To:Subject:From:Message-Id:Date; b=UXqsfIJSdVyl4DLCOsxnXjcr65FtpN2UrX5iNGg80NPputh5IpYbSfuTKJqBM0tII/LFz0UzF3NQpb6e32xe504ZnGUg9nAvCk6z7ZfYD5cwK7oTQfqpVEfgUOqEq+PB3b+XV+ROfN9KWYZ7ZMLl4f4sNiZsjbeYqa5ygOwtMa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmHnB0j4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmHnB0j4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1066C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788069033;
	bh=vBwcZZgfiLwH/+5F/iqJU2WAPEu+O4aOzCyAG4KvtGU=;
	h=To:Subject:From:Date:From;
	b=TmHnB0j46yupgZA480YoM70Ds544cCfSNFjidM6Rtjg06S6jagzkgMlNxQm+CmUil
	 tBtkDpMvq9WqeexHDt0CcAy9xDGuyd8Fx5AJbw/XCdnxbMGLfcjuEinW0oe/gTfmvs
	 OSiz1ImWAQ9Up5yNTEBDVUXVAVpTPAArVVW/lqnUkFBNbypQeFPaBfzBWBDOgJqGGD
	 K3d9ggP/TQmw35IRBTy84Qu9Qxk7v+Agf/Zx6/66boqEArqfy1hLjajSjXqfOLhntC
	 VEddHRu2pTmf5uE3/95BmE0GBUGfZ6eR7IMMDLS5uym0WOFkb2nmpIQ6YCqfGzISaf
	 b2QbqKl8U11Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3FEC61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806903368.12249.15532188297616870008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af9e8c0ad838fd05aeea261661c1517541678512e4f33f82a3e24984662b61ab
Date: Sun, 30 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788069033
