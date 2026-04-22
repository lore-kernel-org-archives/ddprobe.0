Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E58B2D876B
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776888454; cv=none; b=HLDhJa4OoYz1jrTWQ24NlZSBX9o8EeKSxD3JH8orDkJWfenRz1W2dpHG6N6asCkazpcXGIu84T3E/tsxDVOxo4DfakYnf3dQ571CsIoXUJsTK7bzR2br72OtgUGSmaNQq4B3skPEk3BV6c/bS2rEIhUP4e8tjuPEvBidvIeuIjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776888454; c=relaxed/simple;
	bh=DMswqTwLaNzb7HlqRirrogkrz5g6Q3PFFUXHVTjKA4A=;
	h=To:Subject:From:Message-Id:Date; b=BkdTxoToDSt47pr8TzfmolS7Sk7DUjEUbiRg2hx2aXynY1axl/Wmrkr8CpDHds/bf+pBBNUssPZTlBmMLjToDp7yFj9CRc0wCcWF4DC/5CNqzK3G72Adk9kt0qmookXaLnMkcIHxiSekBlQHGvbtCnBMsEv2R87ZY/BL/h2fgxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OP9loGQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OP9loGQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83C9C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776888453;
	bh=DMswqTwLaNzb7HlqRirrogkrz5g6Q3PFFUXHVTjKA4A=;
	h=To:Subject:From:Date:From;
	b=OP9loGQCSYdM0GSrFDvVZ9lAYQePPZFOaXA2/Nrz5QN7b8Sc/+CKs+Jg8sfohPiw5
	 7hBxLjU0gesWqBQX1eM9rajMujy2or1oJ0SsOeobvmSgA1tBJk0hZiSsmxZlRoO7GD
	 vRdtZC3c0rEfKf3JQm9SoPIOqp+3xweh/qH7wKvJWDq05aP4MM3a4C1nLLBm8F/AXQ
	 vIXzUW0QgO7HjbIi2tJ9qEGmijlJUdQ65iK2zNIm6mMJYBogMAz7lI5IZ2vVB/mXdj
	 BDQ36BZsnzikedoebxXt1otUgWNllhX4xQSNnofGqrhW+J+2UhnpRGt0bcF8IpN40i
	 75Scl34B9+NGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96A1FA1FED
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688845368.21213.11650524340019040309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704abd8d7571d999d5372a3fd94d4c8558ce0d7394026c5d0d0e6c9b513ec5c0
Date: Wed, 22 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776888453
