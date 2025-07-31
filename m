Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3724028A3F3
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754005796; cv=none; b=eIDrw6TL4ngMZ1lATxKFTwlDVnLeWJZZK3YD6SX99z5PmD1JbS0rmHiK1q5O7ga2TEtg3xANGHk0Czvnbf6F2GIYevp4bVIRUVi54StH3fEPod27Kr1b5bf5OVbGlJimMt4tm8MrJoOF0pLqhf+osB5341mqRIK747+Z40bwHgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754005796; c=relaxed/simple;
	bh=CmZJJQuBJ60zc4RX9w0HhDGv4DB8Efx0sQ4SbUTEnn0=;
	h=To:Subject:From:Message-Id:Date; b=QbJtTG3rbth7u8rFNrq9djiBH0JR90msnUeQskDr5fgKom0hQuSl0TrBpqTbEZZigXGDImy5RKSteIenVj+xatwL6qnC2sNpSFagniRBoLEXE/WPteMkKOiyYLmuuhGVZSVvhD4KtzMLLdIy1ZfD8+3bczYfg2rypvC6WMIH+2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRKWeDss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRKWeDss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9FBC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754005793;
	bh=CmZJJQuBJ60zc4RX9w0HhDGv4DB8Efx0sQ4SbUTEnn0=;
	h=To:Subject:From:Date:From;
	b=dRKWeDssBLeNt7qHEztVuQ5sb97R/vTZnWAG774Y/ZfQJLxfGiTjGz8z8cX8X5sVK
	 OeGJhMQLS+iit4ok7pUrlfm/v5SpCrDvFcZwiaDgR5oOnT8yXPAgolXsyPW66ylZ6i
	 xpehrW8Be//IJ14Zqhewys8hzTFYEDUWxSslpT+NDWgkwn049Xy7UAO6M+L0VQPXGE
	 pz4Z4zbs7OyVivFKuFvD+TGvhlecJq0pxVi/M0WfQuxftl3+zKK7f/GTmdQ/+W3MVx
	 Y3lX9CleLTWp17n/Ajt2BJxqGhcL3ZriRhpmlDgTRWsy/sYUOkUP65F22J0M39HCCY
	 jPL1t99esCyrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9624FC87FD3
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400579357.32135.13240729475059124067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f211674614cadb5d817c553b072e4f519f2ef9775e1813c6711489c0657b4ca7
Date: Thu, 31 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754005793
