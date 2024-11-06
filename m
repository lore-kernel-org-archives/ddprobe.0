Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3999264D
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730863554; cv=none; b=ib+44ea00oZSP6Jj6KddhX+2qfM+6iHv8/DxeKWoh3snx4lrUYQlfHNnJ67Ka9KE96ql65bsDM83QCegJQ0YUyO5m8Ks6yS6cI3ZsgK9yWfgXB/bK3kAK4u55zHAVwzlaeEvF9G5KfIXOGmIWknx3Bk7lwhoQCRV0jQ00PWOrw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730863554; c=relaxed/simple;
	bh=C8tzDjFNWJuguLAT59drngYsguGqxVPwib5xn2KbmFI=;
	h=To:Subject:From:Message-Id:Date; b=NmN1s85mzpk00pK3T6esX6DtW1Yt/sjWRTfqg07Jj9vc3KlwbwifFZniA6ou+cEcb3A+npEdbHkHLd+GHD2fO+vHcQg0exJjbS5OeA5DOGsAcKGtdIgh85OHjmK1AEr2s30Qr5sumH8Kt32OjWpm/rz6N8v8euSFW5OnUq4KbIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfWznT0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfWznT0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC66AC4CECF
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730863553;
	bh=C8tzDjFNWJuguLAT59drngYsguGqxVPwib5xn2KbmFI=;
	h=To:Subject:From:Date:From;
	b=dfWznT0egQ4zYcB6Hn9kY2Y/VQWFQbGxIM2YhNR45dsHBdJrZV4toUlqEDfahtksE
	 3dsKJ2mXpLPePERo7BvXSrQli1z/qFGOSNWYS2GgAB0naDC++M+2io++wFI23fiy+X
	 IC6HRN8GlPOo2EdDjnsAmrOV9ahpz5NDFOCK3gLM7YbwPc/YzMuMa/GR5bzmPFKnh/
	 Z04W1xjqQIQB4vNX9TW2tOtzlx/i9PUOu99YLg9FzbGVSdwy85j5fZcP4cja+IYhV9
	 buzCmrdiV3uNlNHWIkuNdCR2gz3L6bZnhuxv9dPWB0QxlPjS3YpumQGg1fV6YyTfNo
	 1/mjmj35jJhIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950B6D1CA17
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173086355360.18872.5580527822013866995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2aa924848f753b96e2e577b8a5a1949049cebb1fbce73a43f9b27efc24d1946
Date: Wed, 06 Nov 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730863553
