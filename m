Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CFA19E98C
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757783394; cv=none; b=DKkFXKVvBerTJrSuW7KoTZSZwWBk/T2JRBeD04ez1/mamnp+HJpXSP5+vyjKIcu9EhY8J2Uk+FIcltgMt8hv0gHOEhPp7oxJKdAk+ubF9TwXYs7QqTR+1dIl9xCR5RMnTCXIPchIyhKAr7EYbRB9XFzO3ApgDrt9Qr6KYXUuvH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757783394; c=relaxed/simple;
	bh=IOkB07WpTxkPMKN8sGFctBJWdH9XFjzs1wa1/Zcq7as=;
	h=To:Subject:From:Message-Id:Date; b=jrw6EspnxpQDMd5qeFHAb1ebADlLoCW/lgTRcvG5giy/uDTG5AhuZCQ5OSLSM+Ea0HiiGSHVgWHVcjeriBEjtC9Pi6FCkzakj0DtU5ax0hHzA8gDD3IH3am0NbWtXX9TwpM8RYRLjqXVD3krKBwFyfZfD3kBJ4kxbZp4FbL85X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dl7IsSIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dl7IsSIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67CCC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757783393;
	bh=IOkB07WpTxkPMKN8sGFctBJWdH9XFjzs1wa1/Zcq7as=;
	h=To:Subject:From:Date:From;
	b=Dl7IsSIrGHEY/z/pg0w2SelDQgc6D3RS6mrr+6aj46TlG8xELH5UOiS5AVCnLuvjo
	 TOS13l26lZGnlQlBRGO1T3zhBONVQc9ksYSHSh0GfD4ZSkTmbo1gi/Sn1PXewsI+E3
	 TQjD7D4BBS56xtd4epMVyTIfHQDfZxgilfCKPpCaaQEgfhh5ba74RUrF3GWoIvvqGw
	 YR5QFhrWEVLT6sgstLlIyEljIqje6JgU7gZsKn0FjMX2FnSffG6u/ygcuVyIqqzBQx
	 9/pZXBL/I0ytsP5dS9b/SHH1Lp6JP1pQJexiSdK/gmFPoZjIQFw3NfZ48SUKuLeDz9
	 ZARE63DCZ/AMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EA9CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778339358.414.14834533074313189733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982f2c5710eb1fb911c6bb649057ee486a59e3e1662a3fdcd306369345bb4d79
Date: Sat, 13 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757783393
