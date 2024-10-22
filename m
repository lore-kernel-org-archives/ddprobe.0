Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1705B11C83
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729569354; cv=none; b=sUIRCkuKZz74nWru2unW1ICk+ZOLD0DcNCW8XUDNY+J2xJ5l2gwPAX14My6YoICbGjkimaJK9ZyQFExyY6qW0N7cFmK9Sxp7lQkoXvvwIvFD0a/zjGlwbQ2vzTTCpY2UEw+rbUIp6xR7CNvQLa6875o/Gq3Mzr1B4XHFXdSQNBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729569354; c=relaxed/simple;
	bh=Bvq3BfdJJaNfxsB3FjgwpMX5BtVJ1zvIfSnE/A8p9LE=;
	h=To:Subject:From:Message-Id:Date; b=qG3wUTj/Tq+E1wlpFcyrN+J2wJqMTX8wih7w2ydVgSPmI1S0O3ouN+z4t/NWjBIrUqOe/0DSG7J37zF4otV2BhcxjzW/2qfqjsMu4yncWpwXHSxllckwliltmi8rKdU+hVsO6lUa7YbWHcp3WA7uOo5T/pgOWlKptm6nwfHlc/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8QCxo1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8QCxo1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB728C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729569353;
	bh=Bvq3BfdJJaNfxsB3FjgwpMX5BtVJ1zvIfSnE/A8p9LE=;
	h=To:Subject:From:Date:From;
	b=L8QCxo1Yu2pLv3XJ7wCcUSTp5MgMmBr5t3xyhWDDDAXpy5Lx7r7w6Rb/r+EfSkAe6
	 mZL26zUlx3tSnvBWz0GM+zyDsXveF5Z9gSaX3xameUCKa3ZGjnJpTSShseBlnySUft
	 2JA8nVjQ4OXBWwIsZUmTzBD4prCdrzMA9P8VqgYmBhee9ti541Azxb1ieQ/KFlduJZ
	 6tSrX0cV74hB0fvbKfl8/rriE49ieCxr/LRnITlibLQp2PjXq/lvYOjH0pLdbWzO7M
	 0on1YOpt4vX9bOYhL/c8BbL86un3thguFBrNAhTswcxCsvxY2AGo6e6SXPkoFd2DkO
	 zCFOkOseS2B9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCE5D1715C
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172956935363.18395.17545474075847705484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 528b8a298d5af8e033e59506a7ea36b6153edb7c8926d898294b4428a0751d83
Date: Tue, 22 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729569353
