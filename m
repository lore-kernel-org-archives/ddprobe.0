Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1E5883F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768097634; cv=none; b=kh+B2cm/b2CWnqo3Q7Xrz6JpyRwU+Kj11kXhbrXmP3Wy1BnjN3l6zfqlhNZ8fT4uBJwoa61RD359pWY2iloGHa0HQgBBDyuTrnryfQ/PZRbCaFVlmnNfxhWoS7BYJnkXnSuQS2rzNV6thv7JOi3Jkd2SC19/0ewLWm+podxXmdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768097634; c=relaxed/simple;
	bh=9fgyOXKTjsrVYddl412zPNCe6cyIELZL95W4aDUe+So=;
	h=To:Subject:From:Message-Id:Date; b=P7jBQgh/1/fW213m51/X+wvmeYNaMVF+J1gLk5c3Z8XTq8UJOJVCaf4vjXFyqqhozwl/JPlCL7T88vzvwOpazmMudb+l4numoa2mzOZ2YDAju2efI/ocZWpqf4vwUwnqb7E4HjyplxzhOiL5dDDKfqTX2/p1zrnPpn7c/Zd78kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSixKiI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSixKiI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7206C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768097633;
	bh=9fgyOXKTjsrVYddl412zPNCe6cyIELZL95W4aDUe+So=;
	h=To:Subject:From:Date:From;
	b=oSixKiI93vYI8qhq52F/a9K7AV0wI9dxH23H0+OrrBGFPY3BrY3GbScb40mPkaFu9
	 /fOUWBYN02toF8vZbp21xDkiJTwXjv9tou2qzSWy6jPaVKLtQn2JJF6xUUxyDcipNr
	 +JiVKXIwFgiX1g4BA1Ku1ls+xFWj8HcBraSULB4naXdC7MLzgbGdr2ZqbZMJuwCN8C
	 Fv/VP9ChC5ZuOeetosKOeijORoH9rYo94Sg0P6NDmp+jDvJG4ajFkyvFc3nOau/fLI
	 z9z/vhJB/DqMhEJVD6l5EVURfIoiwB4N5Z+t7DuzJhJo4vu+Q6atDfhHWbXAETscCw
	 B36Xvup2715UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B6FD25032
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176809763361.7173.9762550651329977670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8ba05179b584f97d1dec397b91ea48bd4082c8fbea2fb4dfb71f1735dc9086
Date: Sun, 11 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768097633
