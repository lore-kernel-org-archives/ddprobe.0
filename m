Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6246A7261A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784427514; cv=none; b=ePZsGpluGqS8go3X53i1uexuWSR8QTg15TYBMI9FSESzyuiWPLgs6nJWbxjRUt8jIIUpJgB80ZY/mVcYOSPpljPB7I19JfRGlWKinRz48Qw08t8v5lQjOwnSqorXMHwO6KK9c+gE+zputfIUWWBKXOT9RL0HLqBQk2uxai2xVXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784427514; c=relaxed/simple;
	bh=yd9Z5cDu6CsuH+X9jtuGAS/FVLScXxa/qSJNZLU8x/k=;
	h=To:Subject:From:Message-Id:Date; b=i23+w92hQEY3FQjfWxdHSnF5FFk4bHfJE3Bgdu2X9hZIU0djUs8r73ICPE0UatrqgiF+wPO/eU9PoKY5sWYCV+vqEsbQB00Qs3DBx5lfDfiOWvhnkFS+ImkcRgS3lZlrw1w8rKewKBfc2Fizhc+EcdaBTSmgAVwS2FLX0s0x//M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kk6f+WW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kk6f+WW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F86C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784427513;
	bh=yd9Z5cDu6CsuH+X9jtuGAS/FVLScXxa/qSJNZLU8x/k=;
	h=To:Subject:From:Date:From;
	b=kk6f+WW2pB31ZJERaTMXc9N22+nWbXFwphBKchYWpbQZPHrrfi+5zDkLgz9fh3WME
	 h3dfSw/a/5sd/6G04j+XF0w4k6P/eCKI1/3OmrPXRaC00n+z2LhNGx4mJ0Bx4chGeI
	 FpTlQzrtfxzqj6KWGOTIHTpf3gUie5gf5WgNQb7RLk6B9t0wEMg+uUWqoqEeL99gUa
	 jvhikQib43RyvcF6iYt4BIs/GhCqsrB26WlhZI9TpOUntSNGMjdigYgQfvYZCHbBbr
	 9w1JkTzGjToIO6ohASNsp7qY1HnqyLCcOR6AmoAC1VTuMwNWvKPTOYufT8jUIK9LpA
	 k5p4WWS1t5pmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE75DC44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442751368.18779.4254458263451134713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb02613a1e229b2f00659d0699f3593da0b548a1a22b896e2640da0f0b89d97
Date: Sun, 19 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784427513
