Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B7E2D9ECD
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785462034; cv=none; b=PUzV3AC0okdILVYI3dJ8/rSjnMqp4qrnSHUJCHqETa5kYbFhc+caDemSy1rTW+xJVqGUJOS7KwYJLuVjG+bbn8h1ojslrxP0U5BFFoOUJIpJnqMSyoq+dHwxpk77Avj4VuUAQcKdhyPtVgX4SDPm6RKOVqT22qBgb4unoFDItz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785462034; c=relaxed/simple;
	bh=GMk1FqL/RRu+VxmAKXMWVao5WTCBENZWfWCXqCS3R3c=;
	h=To:Subject:From:Message-Id:Date; b=LaxNPmn5xTgsRU7ofqhSMhSWNyd942R0C7ezzcy1mRCGz4pnDzKjJC170zITbdJglgPi/s5dr8FVYPp5SkiW0WijFciKEFIzts3Pi2CK30+mEST7fsvTKysmBuPTwj+ErGhhJpwS2q0ZTtTtobGSsVolcXRYOc0Yc+Oh/S0htAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHpUTife; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHpUTife"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72DEC19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785462033;
	bh=GMk1FqL/RRu+VxmAKXMWVao5WTCBENZWfWCXqCS3R3c=;
	h=To:Subject:From:Date:From;
	b=SHpUTifeefJlLUPLlNrHhAt9j3hvAO56iRAgcq4dD+ZfC4dL7z2IhQRv8KswN2myO
	 I414s3mTqeiRjKdW2Bxj2/bjbzMQHFVI2Q/x2GeIRz2ulngNwcqsi6l4gJoFVGp8x9
	 jRGyRYgSsQvozJsh1Gz/DMECJE9G47MLF8IDz0az0llzsytMdIdp900wDjJxVxdiYl
	 ZrGvWega4TnRA53AZOAjTRXdT9jLzVtMI8etVDWLQhLuZ/I85Gcem6AeVFB/r73z4K
	 eqQildssLp7ZjH4rp37cMxddWDIFYFA2mJc3J0EhB26X9ui3CLVUkt9fpKrGGJkhKe
	 DOlu9JWDyvY5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BF4C55162
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546203369.1551.8334268293500144405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dacf6f115a0e7900747b120d00c3293e04c608cba70d5b68240e8ad55d4aee6
Date: Fri, 31 Jul 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785462033
