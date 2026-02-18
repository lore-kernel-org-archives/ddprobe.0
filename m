Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E39927F010
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771400094; cv=none; b=gkFkVhOffXVIKPMWb2LAL9OoWZ5qSLcbgf9bLnuR4Nke+vU+tRYMyCw4CCXr6Jj4/8Ttq7FV1OqZMR2PyxLs0OZ9iyBJB0V4qucHtMnOqqAFRtCZqQXs+xa/zs5LghW3jQ0gFds6KNrr6afnWwZ5X7AzRVBNVsvFbXtgfj7GsmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771400094; c=relaxed/simple;
	bh=HKqcA3tt/y83YtqyDaeu4Q9Ws7jcDGxSoVqk9JarM0I=;
	h=To:Subject:From:Message-Id:Date; b=C6P1ybnEURkyTghjNfGYzpoNH1mMAHor8TJpbaM0uD56dOprhSa/mgcx5A3y/U6mu3R76VQ7aff8DuShHjV2jmOxSmyBcBOAzFBb/G82ew77Y3urbE8wDkCHsbF1mR4jD5Ma/sbFi9U6QulhL7h9OsL+qhLnhhUb0gqxUlOKcF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukWZ4Tc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukWZ4Tc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2585C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771400093;
	bh=HKqcA3tt/y83YtqyDaeu4Q9Ws7jcDGxSoVqk9JarM0I=;
	h=To:Subject:From:Date:From;
	b=ukWZ4Tc2X0poFxgjx1V5NPbu49x0kpBDCFAkXfD1MzikgAdWjeY+C/HBBizyWwf8v
	 Ix9AagGfGBvGx3DPzJAGr6yUKikjeXPSdh657JZF8mqjEZyuOsYzA3Y3j8SBi6SdoZ
	 xGTlzxziR7YcqsAGk522J4pJV3k6yxswZJ9/KRjWz0cEwWmBGe3dfFBl0x0W3UaZ5b
	 KwXaUmxpKhUK3otyKoEDE7jMXnC79+S8yQ7sPmeQn459gk3BpaqBG75u988zIj6Gi9
	 QYiLrB1t21GAZlgeDv93mehXp5d28BjSR7zHK8JVPhfHQfyS42RKd1ualKti8l1Ho6
	 ccZqCAoSUPzTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CD6E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140009359.2361.9481042221475571237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a708b33238e55140ce83c3e6a8d002b233662f379dc42d0d87af0dfafbf452
Date: Wed, 18 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771400093
