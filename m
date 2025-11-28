Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3C43081DF
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764324174; cv=none; b=d8bIJIXrq01WBh+deVc3+mevsaL9LtHRdmUV1KwmKdSObG3MiCK2tA4nkmiecPqqMRAsz1ZLZ8fSVWN9D+TCcTnVa0pa7T86WUT5HqWwaoqT2CuMmxIWmxB8YquDhs4bIpdG4VRxpLJBHw5UlFuqoq4XLqapRWxKaKY5EcmE0CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764324174; c=relaxed/simple;
	bh=7hS+Rv8KWlrvn5M7v8sS6mRsWgMYni06RorMj+yMeoY=;
	h=To:Subject:From:Message-Id:Date; b=JgI+UYW884rKtZnP4gntw/9moTQSIkjPEReSchjI+lnvdayk5M4kXJPyLFBi+3mTmlOiV4RNP8bwq/xSvprimOLYkoTOb0nj+zYKImVbarFy/83vetMHNyiOIY29COg4gqnfm52ChXThbiQIccbsFG2uHkyoRt/B9TdvOSSH0h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afg751d6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afg751d6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40C2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764324173;
	bh=7hS+Rv8KWlrvn5M7v8sS6mRsWgMYni06RorMj+yMeoY=;
	h=To:Subject:From:Date:From;
	b=afg751d6nUv59KEFv7UxsBw9hdpIpGPr3hwn70U7vaNpxZH9xf80uy1lfSB7Qf4hr
	 fm650nOKe5ij/m2wqzei51OZmvYnzm+RPVT/yRdo3eXFmBmuMMc44gycXGvnKqFwtc
	 deEKa08Qi8LNcPzmp7bQKFP+kHiLu/waFsMtIbnGBVGnKvFX7H7enMddNFKGwRN7Sy
	 X1DDJrEfm2Da5pv06qB06N6bOB2ThnYSVEqDUHzxK1sZGvUPUeJqfV2KzfsgzEyjvh
	 /udLcYgrfxmgpP5avdtH3Tt5Uc3Qbxvf4WZLKie3orJokDa92Wmc6pzhQCamrFG36D
	 zbb3RMc+NHe5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91447CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176432417358.27839.8454194399289669489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbbb69d0db8d38f88fce094c4554838890b498e009ad9077dd7a9fc8ec035217
Date: Fri, 28 Nov 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764324173
