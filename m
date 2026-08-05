Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EAE53F3267
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785921034; cv=none; b=VlSgkRE1EoBEruA9dSenCJUtgpxdr0CeY1G71SrPOj7I4XMrrzYBDMMt+Dkp2qCxti4G1SfDzupLcx8aY2idVSB7gYZaDS7lYyGlNKyIo2/l3Nn6qiPboA6tWsghUj56FOxESS0mZinC6TK4l2H4QWmNC1m5QVTHe8JMcx8PMq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785921034; c=relaxed/simple;
	bh=qrYX8B+WJoaP0mLVGOse4Y2jYu3akIw0YCg5/h3InQQ=;
	h=To:Subject:From:Message-Id:Date; b=BzvFObqGoQB0HR/AsCwaob1r0FJuSl9aLUB+VoHSut3yfcvJBqexrgwKdNJljoAf5zcUdINAYOvMpQxnSwx5ihEBEpDz9fx3hVGj+KQFZc/bSgJIwA8ZABPBiOlDrT3PDwR87EINlT4AWCOlPe00aNWLVxo8rjbAgUpXwEglzKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5o/2Mzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5o/2Mzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C838FC2BCF6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785921033;
	bh=qrYX8B+WJoaP0mLVGOse4Y2jYu3akIw0YCg5/h3InQQ=;
	h=To:Subject:From:Date:From;
	b=T5o/2MzpM+sPKa3g2vMKvSn1sYwvqdLaU9b3UA6hd1e5r5uaAlYkgKCR5JQ+sMhUJ
	 Yw9eNVg7GWtkWXvgRePxZyRnPryNxjaNcYxgvE2H4CipBx6cL/fNdf588W3IvgFvAY
	 guD0YFY4Ivc+zR8rlJj/vcUGQZRfAT/PTSz7EqpSNdayys2Hr10jsyy5hdCqmqvEZk
	 nurE+t3byClWday2IqWRfeIXUoZgg6AkHWBURAM50SMjiCv4ypSxrk5FfitCvOiJYf
	 YL1sh6TFMpoKXWvJh4eZKWobwgEFvFn01WK3Xijppfhk+N2EErTzhNUjaMXFk+Jf3D
	 L/7Ilx33fh6pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBA0C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178592103370.3633.13110813691124363342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8cf5b4be77983d4882995ca52bbf586a7029100a288cc63e7051379702a951b
Date: Wed, 05 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785921033
