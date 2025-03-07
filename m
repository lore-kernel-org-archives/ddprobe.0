Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355191DACB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 09:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741339134; cv=none; b=NqctPJk91R+WW6hBD9v1FHo157uk7BGFrxCl4WjQx/h9fJJdGgIptOHcHdsV9Vo3zzlz4QYcGyQNeO9TderOUQbNOEEKS7jATNhQzSjOQYsKJAKfTFvsg4adR3QFCNRRzGIk9x6mPS11I6qkYRsuOWbhQkF8BvWaduHtuSZnf9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741339134; c=relaxed/simple;
	bh=n8RfiXibhkCErksEvbqDRdU7XzyxkkyTa9Qyur+f/wI=;
	h=To:Subject:From:Message-Id:Date; b=MKK89K+GpjefS3+b2Wje2s6dGGYdv6sZj2SZOwaFv9pHHzh/Xz6ODzu+htso3Ara7X+vTJx1D5gXSxXTaENmYuh8ntNKFxSWxIjZON0qnFxxSoqDMD1c9+v49azONSMEoXiMxLg98vmmR1KCl+OW8FVsvxSZ+3IlFBCH0jrwAJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQWYrtJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQWYrtJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FB1C4CEE2
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741339133;
	bh=n8RfiXibhkCErksEvbqDRdU7XzyxkkyTa9Qyur+f/wI=;
	h=To:Subject:From:Date:From;
	b=RQWYrtJy22eHNR3G70qmyesKK5AuD+slW+JpPkaWyMEgrmEU1zeuYjf/KSWZ+auKP
	 +E/6aZNOJ035LjRLHSDm8seX2wAd2dBbHlN0N3nxTmImG/ZRgeqlbLGkcnbTDDnp2W
	 l7w4TvxgMQqUPBEDsyYQISj0/9NTJB4nDCgr64xyIzv7cK3SkjB/LBtgSdlhA0NEIm
	 2G9lrdzyGr9k1tAE6s4l66q2h43I4E/OLtGc31fOKC26Aknlxisgv05+6+VtrSxw6j
	 fcwM6PDzPqQVPA1RM0K5Rr7V4Ji6aBTJ/Ui2mleZDO+nDY1sn65wlBCf1K9U1xjlr3
	 hsNR5AmApsP3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD30C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 09:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174133913362.29319.9966231784252014444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9589f59e42079d40e6bb40e7633a0b0cf8758199316ab6bb093887d261a0760
Date: Fri, 07 Mar 2025 09:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741339133
