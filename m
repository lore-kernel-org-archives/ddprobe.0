Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DAB27A103
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750763994; cv=none; b=GmXHdnQcmZW0CkbN1dwpqfO/0LotWXqk1g9l6fifL0MIuMlE4zfpvJjUU2YEreeAlCXu9KmwYHM3U/KMdcFED9/FIGZC04Hpe+QH+05HnyQCx6dDORrd5WSPg6GpjVGV0+HZq7E7I7mfzb069AHR0hL2TTLAmpU+2ig1qhavyhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750763994; c=relaxed/simple;
	bh=gGai01WgopK3QbQ2oVJy7PInKkvKvnJUj4cIv1r963c=;
	h=To:Subject:From:Message-Id:Date; b=SaaZZ/iiCXsiWtfx/6tWa9U7y1IwxwljbQOX1lVTv/SaGk0/leuGCWyg5tLYJKkMBt4mGO9BhPEJ1+0HJuOB2MaYGabKZrCmj07MBi7h+ejVv+GROU5uzeX9Ycpw61HOpO9HRDSInLdIIbPmlORePlkv19iC1PoOlUZ1rT5Z2YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSCAFRYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSCAFRYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E53C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750763993;
	bh=gGai01WgopK3QbQ2oVJy7PInKkvKvnJUj4cIv1r963c=;
	h=To:Subject:From:Date:From;
	b=FSCAFRYmEFA3fa0tXYr21fAwfcLVC6Uea0tVGylQHTX2UzhBnFngpQZv2w8koknVq
	 rxlwbsE+FFTe1tWlRY95pqg9rVf35BFQZmfUL38V5XrVH7auGfSFYspT4G3nkblUbT
	 BTHVOWdSGmomsZ1SnX2sYNyBku5mW2lL5R8+GfQKxSbjcpMIso5Yc7a57/rqwR1jKW
	 tfbORJCRPisYrHJorzb+5YnKk9NTLOEgJZUbNOEKUfmg7KP7Rsl0oLdUS3BWrBVpUj
	 BOS5EVrxktOd/mS25L9Wh9S7SUA9k+BmDuUYpOjs4uY7E2xSkBsb8gxNpL2YJGHk+f
	 HoT7oe5pG5W+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E85CC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076399357.4722.6791348571573779406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011ea8a1fef4303a4a6a6b11bd46e7fcd12ecc5c8bf13e7fca2fa66f9938ea99
Date: Tue, 24 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750763993
