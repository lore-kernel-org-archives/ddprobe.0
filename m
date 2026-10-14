Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2817134EF07
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791958834; cv=none; b=ftiB0dkyUvt2iO6QTGN9fX89LcyiJH1A0z2Lqf6+pzIYRUJ1eFegFpsqyxPT2sONcBzpVMIBOUogkaHP2vRFQ2zh8mJfPnB05pwcXMVrveMR8xfBRkQl2sxQXMXKvzHl3Pl7tXrgC3h+qnE5YpKH9tdPHqv1IxLWRnzOoqryzRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791958834; c=relaxed/simple;
	bh=+Z2tZf7Aa3X3pxxnohDuPZ/gaNW827Gk+eea/JCFtog=;
	h=To:Subject:From:Message-Id:Date; b=SeqJrehHVMFBkffCNdIZnReEFQE8M1VzvA7M11GPURjN5gIvGwqS71R8pgrOOgWHNbmItUoZcZcNC6gPYKZm6BocRwsk026orRHaSamN7T2LYsuNFzFydyITJK/2ZQbhn41gWS9U68i8uZTIWEZZgnMIj7ibgY23XaokYAl2zwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwrakZP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwrakZP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1302C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791958833;
	bh=+Z2tZf7Aa3X3pxxnohDuPZ/gaNW827Gk+eea/JCFtog=;
	h=To:Subject:From:Date:From;
	b=EwrakZP/61/8g6rh7NMtmEItAOpezIldiLdoG79c2s/EYbLoBUqRIBgIdr0TDz4Ux
	 kYmPEFWjer+hwvYM0/khGqaqlcN77xQheCW6ncBrkNKek+FeacIIW3FzJJ+CfA47Gt
	 kIy89zTV8Z5/wXdvvB8QUkrX/V6EgSj4pPAY39Puan17hOAyIwsZyem8gi09I2LL7s
	 xl3vbGsmvFbZA6vrHal+19BfwYmx6Y6Jk/L5g3lCXYRBPD9AZgKQvArghBob2EVqDj
	 ocYDa2+IzejuVM9VTSSTkULLWtYHZP6b2peGY/cqBL71yO41+lGnoJFYkYHLe5qiur
	 3pnc1E1wxFzkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1A2CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179195883369.6701.7991851553021019865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0870330872e3bd15f015af5ee7976e753266c22d204a884f7521b9dae72dc7c
Date: Wed, 14 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791958833
