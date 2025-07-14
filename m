Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6C428B40D
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752533994; cv=none; b=HXhv6+eznjm1vdDkul3ZwvettGkWX5atp7pKRzTBuLHWea9FI09pMq2k2QSLm1DBC5bdZfc7Mc54mtaZ7u1z+WUWS6Qt4zIzKgZlGQzbyfErtVopfM74SgLu3cNmJKvVmuvgiIzgxZDOoTMerRQrDvuoeLoRXUsxCy+jUeB4j74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752533994; c=relaxed/simple;
	bh=wGEzFGADP1OzVqn2VQVffOlLoqF7ASZyZpzCaUEnlUE=;
	h=To:Subject:From:Message-Id:Date; b=G0QlGIXol0NoL6Thu34hwLmRwTfKo+Bp/BRKvTyrcwMt0uwwnJicrOFRC0qlOQgDAU0XxneLWsdpJOnrGLsC+tSiSFCXHKlrWtMMA426E0WS9enrYw5+vuEn+0hMmVrv8aP4JUarLnMF/ymkPep1LxfR7zcIX+/yvkSAafNlfz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qm0hWB9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qm0hWB9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7869C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752533993;
	bh=wGEzFGADP1OzVqn2VQVffOlLoqF7ASZyZpzCaUEnlUE=;
	h=To:Subject:From:Date:From;
	b=Qm0hWB9KHutvVBuPWkOqOsR5FT/slt28bNdCOaG+msYnPJp0MsdmatXfKXLjAuQvd
	 8jl9ww4ZVcsERhtmm8Fyg1648LQykONJAMMWhLoe8KqOT7AETOIIQgqVBZRAbB0R+7
	 hORbpkfbVD1AtR4y3DNwsYpkCK2WhdORWRqFsnyWXKZqLC0c7oomzyQqVoEBo+kxth
	 9/fd7R2XZdkMZrEpqsOPGmbOUVziSN+DhucGIT3Vuffn1j8tq+Z6r/0yLIZXF+lZxt
	 bYk+cEE3WiM42Kf0qt1JJsT4SGJ3X/3M0xBk5NeiHiiHjhV8CtPewmui/7jZ3Ze5QG
	 ygWn6Lwyn6hbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8EEC83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253399363.6298.8685465062775314278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01844f85401c5bf67bbd619843072999a08bde5a70168586eccff1164dc48d26
Date: Mon, 14 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752533993
