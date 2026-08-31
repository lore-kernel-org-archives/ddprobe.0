Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7EF2609FD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788145234; cv=none; b=WqU//iIN8kxI1to/qfAxQ3Z87/FI704YRYIwMxABVNhFPJmtxwZJGIGTQSqVeUznBvdnaPo0lDKcHKI3kxAGwFsSYmyc+m1jzS/ZGlr6ZYmVO/x9XaWC5uT3dyqCKb2XZV7U30Hs1+EYH3eWC8BmUN5gvOmNxvs46EkFt14SgYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788145234; c=relaxed/simple;
	bh=6+DRkRbZt7iPtqzBFFXmWuJV60/LOhFd7MKfU2H4gpc=;
	h=To:Subject:From:Message-Id:Date; b=FQ/bOW/7CJhGKm6PMxquFf4OzL4y4opLOPDsKFLoG4w4OmMZgHS1+hHALiikf7cVM1nqJ+0tG3ssG3iPRO85pemdkj8v+pEjd0HCNKg5mBs5mh9h9TTIFYXrPXgBcptlOwM67/UWJnSyU58mSlH7FeO+zAOwYobaM/pE0+KxB/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4hxzaiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4hxzaiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC9FC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788145233;
	bh=6+DRkRbZt7iPtqzBFFXmWuJV60/LOhFd7MKfU2H4gpc=;
	h=To:Subject:From:Date:From;
	b=t4hxzaiCDU86Yl5SXNz3wxv8czO75ORf1agetpk1wabt2aj4A0stBdywKXUNK3/Jo
	 r3OgK0Jhvwf6OlJmkS7+PWbqFwNhuE/w+71cJpLlhiRVmtHd0k+Yj+UTAtUtDRJMR9
	 8w2nVgNdJfw7Hp88QSk36vQrFAxWdOF9sZJx7gXZRBh1lfMJ6O2InD5cqGwU91sHoK
	 k8g6ScokDdBrmH70SnLj8e/pJ03OdAk7bGE/84IP+uJP8Wbaofl8Yr+M0rGyQt/RJZ
	 HDd8e+BYK1gKq0OQqpUeKBW8j38jUcOVd7Y44TD+Yzqt0Qfn9nXRKOLxdh/G20HLeH
	 OdtA+3HtCJs/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA494C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178814523368.11410.11649358358191260135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b6ab1a6211193e0c355da92aa7e169fd493bd27889d4f80dfa730ea8d16afcf
Date: Mon, 31 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788145233
