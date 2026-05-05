Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5B63CCFCA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777965454; cv=none; b=aa/7TGqaTal6O/ieQoftRQNmoK7RStscvA+AMz15us2A0+zyCNIq/5HnSUIeej7usm6uPM1ZNrHfIQSAdkqOqj+0U28tuqmsKJXO5w690MzhOvGHxX626CSkDZ9iZXYPPKgb1GrCdDNHvh+FJsWrs35oi4gJqfrQoVtRdPcH5Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777965454; c=relaxed/simple;
	bh=LEN4jknTmv38pC7UVpFqhKWaQ9hUh2Phl/RseIEdjGw=;
	h=To:Subject:From:Message-Id:Date; b=CYXx5AlMRKHbQSFXpCzmokWCXZ+l28Lo7sKr8HBhS7p3poTfsrRza6db0N/hHb/fPQytM4i7AXUCdU5nM4hKahTvD5yExIVF4KT1+sDu3n//vzfgXcWFW/EbCDRI3C63/qGHdtPAasZBbDaasjTDlzGKoP81p15phFZ3mJh7G7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqfBdCIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqfBdCIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF3DC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777965453;
	bh=LEN4jknTmv38pC7UVpFqhKWaQ9hUh2Phl/RseIEdjGw=;
	h=To:Subject:From:Date:From;
	b=qqfBdCIbfC6ILL5PC6Q6PzTer/9SZImcaogWHEcXJf0JoHmJr4Qn5u1s6F3vyFajm
	 kBA1v9wqf8o6ECDmxxr9wmbQv3cpmG+syxoaBBWvuUFL03hBwieorluVCNkH7IoTaT
	 HOkTo+W2/a8FClXnz9O3kLnJ8vPWmnoFpc8tcpTjvoSsfGaBCq4iJpoomaGNj64xpo
	 0Tp05axoUMYRyC0lqXYXG+1Bv0KTdTkW2fxMNWdVbBnpvqISvZb/oxFIagW6Lksrib
	 /GDtl5VwWUr6AM5b9xKdTgR61E2hP74fNMehxgTYvmON7jWFdCArw+lfYP48oEjdcO
	 DV8NH0zWrjpKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F5CCD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177796545368.9004.13086684350715152970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322f023728a999ab657b5e24891256e6068401fb9e11cd4f2708d4ffa3ee3aca
Date: Tue, 05 May 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777965453
