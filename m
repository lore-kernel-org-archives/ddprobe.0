Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAEE1A8F6C
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733342754; cv=none; b=RJj4Adk/KWK5OugbIC+oCVZJsBxy2k/RykhvtIv+SE15mY32PHJGjZYBQ+xFLH4p1Qbfmj+3FHBnce0dFJSAd+lcUJzIbFmvXxTxQZH0BQwiUq08OeSwwH3+5W67T9E6YT1lx/fnwdHNDdy+hi3zVLvVr/NlzlpS5XuF/SpWjD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733342754; c=relaxed/simple;
	bh=ue5Dfa2BL8bo/tXPi3wtAB3XJKgknhAbGfRVRvFhQgA=;
	h=To:Subject:From:Message-Id:Date; b=NCCae0yybWwQ8CVAdBUdIYIP9jQ22H5BIcD0LMzkfHq/EC6I3MdZHoUt4r7Dl2iGxrMC6tSbYC3xSiQ+dNPYOvsa8vwATJ5jdwX9h6ME1CtLXpvU5gDB57CziaYyPFI0rPpWgMzTuEFWzzsIYY03QRVuTaM9OwQ/5U/iu6ILRh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjV+gX2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjV+gX2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A07C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733342753;
	bh=ue5Dfa2BL8bo/tXPi3wtAB3XJKgknhAbGfRVRvFhQgA=;
	h=To:Subject:From:Date:From;
	b=UjV+gX2KYd2I/T7foIHO0mCF40HVkKZ/4iPlrd5dx+UBr2xqtUuxdtfQBQQoxcJnl
	 8zkKhWIX2VIoAk+0sYEzeplHj3K1PCqjhf9EqtEbC++QcjG9HnGabz48gFgRFMq8rm
	 iFEzHWXTbJHIxVLi/zdqm+bcG/KSQgjHsFoRBYjUG/fopO8VLwy1uyh73nhSZyn3mQ
	 WPC408+clQsUmV3Ebi9C/eX8c9dBFhlPJE8YiHlYxtOU0n92k3rmI9dNmT1WcWn+wc
	 yAFxU9sN2mVKzb0zO+DooVbCRS1kM+m8KbNHyDOnzJZoAv88XiB6Z8YKQC+1ZPtnew
	 PXU9hLQkEZv2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B13E77170
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173334275366.21304.13773591143607758046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea37a66414a77e3a1e151da198da71c6f06506e22a2d10b2deaf1ddeb1d5a3bf
Date: Wed, 04 Dec 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733342753
