Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C0D2798FA
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756529394; cv=none; b=tMDmhYbFYYNWCHc3WuxTs9ZdT/AV8AGn34HD/NeLkOK8Js/LqKsg5tCKXfYcWe7Yx/BHCfniyHF3TOfnXpiI3CVmYTey90eITjePcwuhIoIJQ+sOBG4iNLVZV68MmvAvFyCSo1KYqqkrNrOjaf1YmmfyIlYrtpJ0ood7VlyWJjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756529394; c=relaxed/simple;
	bh=lRoHfZp9PQeL7UMXvQRQGxSLxPl1Y907yc6YQilguII=;
	h=To:Subject:From:Message-Id:Date; b=FIJnMljKHXrkxQAkY1tACx6zpe4O3ojKXQZQhRYcvtNXK1bZqWEjMUCZu/Q2Ky9YJMFd0rmgqgBWNcRpNoUbMUF3N6dg6/4icokHRioxXCa5nSAYx5LEGE2cKOXoq/lCDWQtc5KNlc2m1+9ov1wYfWnp1Z076pVaLWeNnrJP/2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWbuyyA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWbuyyA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A71C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756529393;
	bh=lRoHfZp9PQeL7UMXvQRQGxSLxPl1Y907yc6YQilguII=;
	h=To:Subject:From:Date:From;
	b=VWbuyyA6WrT0grlOiH4sJS4pXU/gfu8W+jQ5MfmQdIPeoUjlkKWbovuUSjtZiuwcP
	 CTFWLYOf39BXbXGJpzow+IimWZ0uS31WXYaNClMlOyljtdpSf/nSnce9Yy18nuQxIM
	 UMsABqRBI9nV/tS1/hmpyE8xGIBYTs37/9el/mw02f3Q3aBMMuU7oSVE23myD6ja9C
	 7+DF85VSvs1inPxQI3B+PtYAT/Blf6mP0OZGKYClEKKQUs6CHmkXvKUcy86g8PbsFw
	 1fTIiDr7ojgFzU7L7qUSgSVHUB8s1AVdXDRpAlRF+ddU1L6WdkKpQLuB6yR39pvXY/
	 3rU7TEmEQfSnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943F0CA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652939357.8365.7603863481065877551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a92652ed1791e72b0e127219016c88937a28a7d892fa7a19abffab61318489
Date: Sat, 30 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756529393
