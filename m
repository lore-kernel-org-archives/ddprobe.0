Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3564337A48A
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781867794; cv=none; b=dIuvDSRJ8M0j87JAYY9RhH0hFS9zyJiXDNB9omhD+XQKUnfFA+7IeZvywOoE+1Nj5wIhKM8jUa6woHLOUJX7hhnCcDbv+9QYG4NimMPT0zun698Mm/PGQfAFCQGOqahtA7GkjCodKuIaYfZ4kXcgg3F4GSeMDlW1XR8iz75PHPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781867794; c=relaxed/simple;
	bh=XN7ml2vYmyAJjqwwO5S9JJ+d7v22Qx2NCWcqGXM6rsY=;
	h=To:Subject:From:Message-Id:Date; b=rkSYLQ08c46kg3/nPmFBy15gEtdAL/Rt7GbHNuTt0+lYNbwWrqwj1cOzyNY+era8RKBp13Wrahpj1qD1jN6nyPOvOWM3hzSx17s/SVA+FIDhFp73+Djlc/rDIoWVgQUgLDw6JyEGbil2mE/o9e+H94cBVRRP49Nq5FRuonetpsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPsH3F3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPsH3F3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24FCC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781867793;
	bh=XN7ml2vYmyAJjqwwO5S9JJ+d7v22Qx2NCWcqGXM6rsY=;
	h=To:Subject:From:Date:From;
	b=YPsH3F3Ao8iWFq5IQmLNRtMk3UqW6tHTRrvlzyeJaBVsiPD7ozo19pUKOZ62hB5vh
	 zoV1GKvrQXcu7UAk0b4mnM2B5RF57xteyz1ZnxJ60llOX4FSq4Pwfdb5fB0TZ8+d+h
	 lT9xgvrepyxcWZ1nsKjFLMkSr2jcuxVJE45Y/tVkW28wLwGqPg50rAeFMCzJst7PTM
	 VqGWUjfu7Dze7EeZXLxo53Np9HFftKm1HBv0p7QQ85tj2HCwin2cFK8ixWhfobhmBJ
	 bWxVV/wFhoqeCaO0dOmAPIK07k2CenWiwW2Y79e8oKMbzkKb1Dxi0qAq5jywxXl7TP
	 ko5IZyE4vB2DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9714CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178186779368.21250.8637614840560665013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29d431251fe53d845f703a20c720544cc19371d02ac3170b8e12208f99106fc
Date: Fri, 19 Jun 2026 11:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781867793
