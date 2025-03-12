Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7E1165F13
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 02:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741748335; cv=none; b=mkcU6s7DeBDhssYdCwEp/al427BG8rKaEb4gXLafGxumBjkIIZonOX8tsgKkHtJ+CJwpsJNzNix2ri7S6psS8Y+vTwjqWmtOMG7KnQliLgXkmUJ9r3L6QmYDOVyvUOeK+Aw/lppeZV3JIOHXhHP1zHHemBdUE1vvt7ZV4XRypvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741748335; c=relaxed/simple;
	bh=EYY0+0Smd7oUr23wXK/QkgnAd2zUVmBaSnLdjhXH5cI=;
	h=To:Subject:From:Message-Id:Date; b=oWgiAS9piDeXASjllTMY4mfS9DTXuyUFAIFUxPrM9bAX4I95yjzjKlY61Wj5s2Lm0XfWHzDOJOv3gMMwQRQ2IuTCI11/oYtxjxIQqhOfOPL3nLCjMKyDqzR29y51TcbY5tGcbWqfdqqCGPS0s3aibvibzKMu1xQ2i3CyewTHodU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hENV4rAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hENV4rAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C82C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 02:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741748333;
	bh=EYY0+0Smd7oUr23wXK/QkgnAd2zUVmBaSnLdjhXH5cI=;
	h=To:Subject:From:Date:From;
	b=hENV4rAYfC5NRkE+EB7rr3a2THj+GubJsQv92wCLdjMe2w+G2H8lWSr4kAcQMeUV/
	 Ur6aq1Dg3P31mdTRQSspa9NtZ2ERN7WU5qvFIgqzBzqhZkZU+BI8QYASkcMMNy6XGU
	 a4CMmgIjA1l2PMN0HS+rN3ZM35PXrBS1raHQmz6YeJQ+fmNLw93zBz71xJL411urjT
	 0ZKDQtn8w8gomt/uxJ9XVJ1BawRmYYhAtoaMP1PNrhN2l7031RbvYjIqItuDq83G0M
	 jiMm10yapl0yCXA8h5ui1vQ6sXTNXJhmCSl+gDyr4LJFF0MR9tZkzSKQPB+z/047if
	 Te6VzKuM7a3IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B266BC282EC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 02:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174174833370.29684.6359623418279205211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d906c7b53fc93a63ff5ebcf9aefcff52ddcceab3bf57d77cd9081388cef163c7
Date: Wed, 12 Mar 2025 02:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741748333
