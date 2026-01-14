Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B90C32ED43
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768413234; cv=none; b=Ol1pdRSzj2vlx3EkSqQnJ2EAfkraiuCEFVM10rt22T+yI92Ae3vxfK2w2l0qYxK5ITpKnjxfYULAV3KVBBgZeNJoR3MORj+E0+asJoBKZ4Mk0HZHwlTpWGAkkiJQ3wWXEMGsz6AcjR5joyC5mDW7HEzOkGkYUiw4p08mdjjOUaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768413234; c=relaxed/simple;
	bh=Vab5zf0icFW1/0nM3YzR9578NJobvtKktMAtKv5sXWs=;
	h=To:Subject:From:Message-Id:Date; b=QntqfdCDJnhH5nY4S7HCOBMSSd6lmYdt3kRL2AbiZynU0bbOOiCEVgujOieIlKAaX0dMcVAqoZxrFasvpD1YLE90zno68qiDnOy+ncU0AtxcHgCbrc4iIxP8r7zodu+C66ScoSpso9Vn9dOrbpF+jw0lsG1mqRXW9vE3Pc0KdAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pabvMDEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pabvMDEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E45C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768413233;
	bh=Vab5zf0icFW1/0nM3YzR9578NJobvtKktMAtKv5sXWs=;
	h=To:Subject:From:Date:From;
	b=pabvMDEEIffS6KdPUwr2dPgieftZwwlagIhUOKLYOpOqV2oF5RH/WXvuD43juPC1l
	 2/lQX1CO2IDjSYrVEZ4Q5I0hAQ82OCxJTkCvWG068pFB8Vsy/kDLFTV7hOas7I6Rol
	 dH8aoCJb7figocV5fWRJtAAA/SlxaOADYQMPa30klNm+pOVSklTSf0pl6UpbMafjSD
	 51N7SYikpOur4mft63dP/4SdIaQtLQjSWMrL7+QdClx/pITYZM6dh7eYgjLJeXhj9v
	 E3YIHfRRPHmmP7/xmR2XXXLYiGyPgNpJ47nl2cqdeKC6FjysgvRjWSXvCF3idzRqUU
	 K3s8vVXTewVgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91503D38FFF
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841323358.13413.2930585403966045447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab9583d46accdb8e7eb8db29a38f592524f886d72332becdcfd8fe67c46963e
Date: Wed, 14 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768413233
