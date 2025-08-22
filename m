Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298581917D6
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755839394; cv=none; b=MFRYjvUA7FuNgkDozaQQvpbCpmCgY6j5nk8i7I5iYBlnknze8upblROCcr/9HaMKkKdgeiq/jjcfGIPPukQYRLUY+75c7Sb7GGsrBiburCQhiFPou0Xmj4cIVZ7gbv4C6XM2Igv5Uu/aGIBFCs8Dgk8p6uIpbyaKO8RS8sagiF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755839394; c=relaxed/simple;
	bh=9Qo8jWyBSLr679nUAniQYK1YXcyYSjpQfVQMGv1HshM=;
	h=To:Subject:From:Message-Id:Date; b=pd7299XWDLKkDT6dB72sV5i6r76Ek/IQ/FzdUKRaeWROai67cgoJWsmRgW/NM9tAGlsZFr+/3Is+9POIIZ8l6C/9xyOhPwJWc+b6shOFkBdwNgxT9soryrl+7QslHtjX/rXGoay+cimigzrCPefSKuS7zrt9BkYdIBLERixVGUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Alkxz8tu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Alkxz8tu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCE7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755839393;
	bh=9Qo8jWyBSLr679nUAniQYK1YXcyYSjpQfVQMGv1HshM=;
	h=To:Subject:From:Date:From;
	b=Alkxz8tu3eIFfT0EoZSbOs92Y9rYhY+ROQfve+s1TlDNF5UISoo4So5SPByICFa+Y
	 TuKY//SSxcDRi/7P5Zo5v1DIOp6sqyzkvy+YsYajQY82xk4UxnlIqBd9hrWup9Hj/7
	 TjU2kzZTs+bqYA54MG9OALijKWgwAEgHWwcKkd6PU+XZOBtHbY5pI4gToH9saeo2QO
	 7cOnonpZ7MU4G0SbMNlCyzHPhZcCwyyQOP7/Nx60s8vbcYTVnvy07UmcCDmtdXCzrg
	 nuF/GyTPFms2U0HduFrXvbsfulM98jctEOSDH65CxV0PEJ4yU2lgp7GyIKQTQmg0jm
	 NvOpE8Z5WE2Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E33ACA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583939357.5526.17365558875769801790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e957491e1ad910991360826b038a842117bd1e95a83a10d6d3986d71c118b0d0
Date: Fri, 22 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755839393
