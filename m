Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B43CA59
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769961834; cv=none; b=BFC+1RjiMrHVf1+JSV2tnGAb14cTGLzixFcd2IRlcz4nVj+6c1riDb6IfJLPJBIXOwrSCbnoFlTDdQiG41JP+7BS/Fn0QHiMZWXTeQSS1m1ug+KmslsSrebxmS14pE/xiqQkb6v4NKbvQxB27SmJiZzJYUfrBx7N0HFLBDUvvLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769961834; c=relaxed/simple;
	bh=9iE4rqE2LP98/5j0zkqqvoLMX1guOerElc+wxnGdBxg=;
	h=To:Subject:From:Message-Id:Date; b=gHxGJTaJGRXYjb6e3xM4OU8hmnsPrtFUVLTbVM+6P4iPOazEfWK4carK5ZTeyOcjFZ/ODoCBueMu5uhiKNn3xb0B56cGX5QWa6cX9QadPtGp/33/RXIMvtYJQMUgRa43rlh57e5xT7z3km1o0unx6FP4GLMBSGYx38uMlzzre4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFVZsV8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFVZsV8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5B9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769961833;
	bh=9iE4rqE2LP98/5j0zkqqvoLMX1guOerElc+wxnGdBxg=;
	h=To:Subject:From:Date:From;
	b=oFVZsV8xFH44xwVu7P+oiboez5X/l6hE8buuff6m/E0mWGm0pmXzGieO58qGXJRFI
	 /Kvoz1+YqG4vLdh+5Lm2bn+hh2QuptC/bKhiacalWTXjWuD0IRZ+vK1uUCHPo+qVWI
	 JdAjZvyHWmYTiYCB1rpNJpjYdfO2js2HfPIjWHkpfuZ5wvq4QjZoLurlgMcdnzAYA5
	 2BNSIPWmEMEPibbemOFyWlO+iaX9O2o/Rfc5rLx85KB9GZyFoM+9ATJUCS45uzvDE7
	 Z+fFBh4r/Q2fFf52zvifqp9yGTP8fFLDOCrL9hMMdS3BlMSk8FjPf7bWAWMDLsxl0W
	 vnxXq9rBDZWdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C529E65296
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996183359.29915.16350206868399069163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 593b65780807f00ce77ae67bb8c3d688525c6ac882d0d86113d73d4c4e609bc8
Date: Sun, 01 Feb 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769961833
