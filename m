Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5077432B130
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786604434; cv=none; b=fbx+v+0ZQwdAQSFnapmGIVxYfRwigtg1xG2AhWMEfGyi55UUj6dB0byHzB6bJmM/AJP8LotDItcjLFhd0AaaGap4wAchcDV0MJrnX+thMmK+U2tSavydVheMxVUnNRnLboFu8Yd6ngoZPqW1DzAlPao22zHkiUF4qjXuFieko1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786604434; c=relaxed/simple;
	bh=zyz1dFI5987yjgy3G06PbC/E+opnxDjzNJSU1EGaa7o=;
	h=To:Subject:From:Message-Id:Date; b=rn0vuUyCyBhld6wkwPRwOASKshW0Zkg3clS4+90HBHuXjDCuMG+R8CABkBk5Rq/XKe/7N7zTvVMRC3MXxe0NboL4gfVUFS9/I6zfSRTKuj31DFsD+ovy+m8se4xCSpQ4hJga1yKOeu0IzY3/FNgACzvfghzEGLsjQ3yI/tNHK88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEDFzJdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEDFzJdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D209EC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786604433;
	bh=zyz1dFI5987yjgy3G06PbC/E+opnxDjzNJSU1EGaa7o=;
	h=To:Subject:From:Date:From;
	b=JEDFzJdZFnXEWgzwRvsxJ6xTeb/5DTfpCuNMkF8dYrYL3dngrfWDgmXLbX07ZPPFX
	 h7qVAxEs+YN92pG8nWnfKckc3UffKHWZZqdsRAFVnyLT0FVYbScEUv9yrltMpR9oq5
	 FbLcgpw3jaU9TjPFV20tsNtyR1Tk4HxtBBWNxSqoCo3NyJXplj9j8pGypFVanrRl9e
	 oU0geabMO1WLYbp4k9tz1At552ZINWDRDkLpA7DN4mBH+qUunjIa2em2OY603emKOQ
	 DNfaCUWzQZhCBgy443E0pSVuhQYib19db7NegryI12P2RZWo6/+Bl5L2S4btT/R3dx
	 wvVSAWk34a6Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A868FC5CFEB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660443368.15194.12086272905334841362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3367a40f5131dec76a520a888c0ce62431ce42ecb18512f6bf7964bf7843a224
Date: Thu, 13 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786604433
