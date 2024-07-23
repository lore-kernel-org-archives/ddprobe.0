Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E3A1494B3
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721777754; cv=none; b=CvsAsJXDnuTJrfZ6SLOkdf5P7aYN6gFHI9TWyMqKVVApdx6Myc7GCIp1j59NaMWYgf6C0/qDvOsCwz67bXFYjNct8f50z8S94Y4qxNDp0m9hbP3oDM7U58HKvf2XdYU8oYfmr9nQwGk+Gk0XD7SP2t3C3AU44A+GB43qzfotduM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721777754; c=relaxed/simple;
	bh=yAn8/w6JU6nWmxV7sRNGxNYSYfcUb3HX49Zib3JdteA=;
	h=To:Subject:From:Message-Id:Date; b=tfz/v9QELAJwES4SVyzw16qQrw1kb3vk1jfdkDoY7OlgezMKvOgJ1im4Tw+X49kzsunRa52s3lwcmbxcY+WkFm+GIovGamg3fVnh6jsVtQ38nx7cYY5O5wT4c98//fqFwuW/pPq4k7Du8u8Y0xibFnU4XWEgDSJFTdaZ/R+/exY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JaXTueHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JaXTueHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB69BC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721777753;
	bh=yAn8/w6JU6nWmxV7sRNGxNYSYfcUb3HX49Zib3JdteA=;
	h=To:Subject:From:Date:From;
	b=JaXTueHtv0h1DSYBkIHYnkxOy7sLnT4OukErEmGu8bgsxFYFLfrG9pS9B4Otx3S0s
	 r7Xml5yIvOLsTGKy0JAZbU3/G7WwgcSWGkyVOfikPDmvSQI5BktOKFwf3yeSm9euB0
	 6juO1EimOhBvSLZB+9idzLYydKO67o2HAGDa1SeVvF9M1hJToixvY2ZBi521T35xYY
	 Mb92BJDHMy8HS8nOlRwFVICepcU4AmU2QqJFmYamrQ7PmCXFkcmyEUAJArVkBDo6Or
	 tIGlHj8qTp2gzo6kgLPe8kBmmle5TqS2pubG27w7go79jxAeibqt88aVu3U1ztg6SB
	 JkquMakA+feTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E64C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172177775359.22167.3531539258679973745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cca9e8175f2746b0f206ccd272f63cec7f6a4bbf15fbc5e1360adca509b2f62
Date: Tue, 23 Jul 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721777753
