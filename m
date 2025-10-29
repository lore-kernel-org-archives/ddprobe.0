Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CE02F7ADF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761715794; cv=none; b=JBsvgWKEgVXGdLy1e/fsQGL0HBnToUp3mPH0o/7kizFjFkbbw81gh3SbZ6OrrKbkeOKun6wpZdU8LBz6+ldpramtfl+z5fPLYVbQ0D7dFCcJlJdzZL0zrsUA28o/vg3FHCxmcVePaTQEN1f3p6KkjFtqh9/6q1Xogjhj1m29XIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761715794; c=relaxed/simple;
	bh=vDKLe6LwcxBGXKgM6gVfN7p67cbJYtUsugZm3vk28h0=;
	h=To:Subject:From:Message-Id:Date; b=DxdMmWWoXrwsiglSY1JqKp+qoXtHET7beDkjbJL8Y5oQvsw0qhhkzxoS/ytsE1xxlNrGltQjvTlufWWy4LbDOYzR+zOV/69YMKCruK+svCoQkp9cfZOlgZEUCneilV88rx3Ri+N1jg/NdAmtxkcmL7EGLitALE6FfV5i+wMvyUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wi1x1SpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wi1x1SpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FA2C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761715793;
	bh=vDKLe6LwcxBGXKgM6gVfN7p67cbJYtUsugZm3vk28h0=;
	h=To:Subject:From:Date:From;
	b=Wi1x1SpUuujvlgqLS99rzyApMkYM4whK2PFYosDKDGS2pWxtvd8fqoUfncWi54wKv
	 P4RfX5Z7RWFh6JSe4xAVO04LOIMo5YVGgiD0t8UtLWWd+rBH1K2Vnj66rlNGboKjYf
	 xDBFLQdbo6fJkTHrcf7d7QdQB0GKAZof2r26sovXixyXdffEjIW16TFZmifjedS1wg
	 kSpA6iHlUqGp+Moojy3+Sfr79TTIHFwWeLPPTFiMc3xGknal57buZtAoiSYTZKjZMC
	 VY9aLsIlwJsez0xmk0wGUq0lgx7Eu64fSzVOoWi/tvNkTaCBxvD3kCQJgGmF5C6kY4
	 4JvCVqR38DYiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EF8CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171579358.15569.9044643407275823143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7d4d478e18b21ba609e5c21b7f6254557fbf86ddfaf7fcf3d8e625701c6f9b
Date: Wed, 29 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761715793
