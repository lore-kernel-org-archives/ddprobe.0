Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D6224336D
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776543454; cv=none; b=OkT6b+XGOMw+VaxkGM/jVLW5NqF2tijgwVWk7DDg1XfFc11F1qS/omfB/Cybp4ksbBHAorHe1tnexzruUY8ehC7gfiwbIjTcIrNLTFCwRfKPvfwPSQnQ9pBGxU7+qDtqLH/aVKe1FB+3sdNRrN4GC5EB4xakTI8RkI4LCtwksNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776543454; c=relaxed/simple;
	bh=n8zqLQHDrtfILPXCztd2gl1yYpohSP1xf4G3xxxbpWE=;
	h=To:Subject:From:Message-Id:Date; b=seU0oKTz4ckzq8PSEZ8arRprGcBmUGu0+Mw2UKXpVf2ND24yVInWEzXGPyMuod+sFYUwnQ/ivBhifCyX6vRd5MFku27jTFQRzzR21S9tICMu4DWClyaybL4KRQoiq4fxpMyJmS8QQw5CRorestDwTpou+2dbl2F0t99POCAvWtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USIibcwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USIibcwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD447C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776543453;
	bh=n8zqLQHDrtfILPXCztd2gl1yYpohSP1xf4G3xxxbpWE=;
	h=To:Subject:From:Date:From;
	b=USIibcwlq3+0GTsJDwFTylbZ+MWOsClvwnRSh4z+u3Jjkugm7Ikk3ALbHBmOZ39mO
	 diEXJm+0yTbu960/bN76NsguIajfm9yuIzNIGLdDjFY2r1mGaLx4rwdaI/WDH1oF/L
	 cNM/oPnGIyiorDdgWU3HWy7FR6INvb1fBvHd4kDOlOpUrJLrBXzUzhIzUThj3DsIEy
	 xIoOeeoUsH6YPsx4KAi6fMntcqbQ9BZBURZtZJkej8BLSxuGTm9PYFLg70Sq+BVo9h
	 S30hvw9lcpBR2oyHnmRPPlVEidm1y72N2cRM5D/wqXFzATt7KmQoN+TBghaJFCsnTr
	 GLaTcvDIv77Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1EDF99C89
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177654345368.31426.5697249064936041850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10c3f5365d469211566ce98b6dab79e66adbcc42abd4d6117db3773276aacf2
Date: Sat, 18 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776543453
