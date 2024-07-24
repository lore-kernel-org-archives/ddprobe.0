Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265A617753
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721803554; cv=none; b=oMFQ9veCXPxd5IOF4PgmISF7QyGf0z/bshPqVr10JZOL9P0VPGdGzVLHwnxpfq8K/hksY8WGZapJbw/IngUo+EfMaTz6GPwWq9jUOV6TWwK5ZhaS0TBoSYeVM/76ZHKjabJ7tJPeAaQQK8JdRWjuZLZ84LZXGRL3w5zGzk1RrVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721803554; c=relaxed/simple;
	bh=1jGRkhBxAfB3AX2sruFO95eAHEPcAqhXY9G9PCXznMQ=;
	h=To:Subject:From:Message-Id:Date; b=oznlizec5difnBw8A4iKpXEJr3Y/ig2QYKEbhtRbsEyE7G7klWiQXzP5SRrohIPeY6J35sYjxUbVR8RYno2YzILyRhBhSj8wHseGNae16S092Z760ssf+npJm57ijIoynl0WcNOXGK1COg3hN1yHLY0aj4Owp2A1MyyRurprjoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFx7st0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFx7st0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD89C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721803553;
	bh=1jGRkhBxAfB3AX2sruFO95eAHEPcAqhXY9G9PCXznMQ=;
	h=To:Subject:From:Date:From;
	b=VFx7st0abz37tgfXjUQ6KtAFO6q+iNKpHkDZcUQ8wHO31+unIzoCL5mGzo+EYWo7I
	 +mrDP4I2vikqDCaKaH0jzJQg5spYEprrLC0MldN5W4BrDEDS+WuwHI0YjlGDtf6RHp
	 fEP2n/DbqBruA9n0S1GTehG3Noyr0ixa/BLixkU0JFP7mI97r+xApU3IwieUIn2K2Y
	 2uxKhKd3Xm4O9SC2M1WknQiCDBN7F/G6erznhaFp/chsPDlFhZ+ko7s/Dt6uu02Bav
	 O4L6gvayHroKXIU1BekAWVr0XeANpLjDGxMCQz4i7X3PLGfFOooV47qHiPPdqESMfM
	 213fCegGQuXKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3EFC3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172180355359.21070.10883978369503749593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b64c04d798b3dda5d39b85d3f7d469f01b25b969431f6c5afc776524e4805c
Date: Wed, 24 Jul 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721803553
