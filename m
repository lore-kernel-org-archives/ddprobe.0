Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043F82E7BD3
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755071994; cv=none; b=uvOupHhrHI/RDihPxL0YN0dY5hyn7aPh6c2tNDaKcqSxZOvgAIjW6KbpZ8ZalsQhya18Oo9haBpq9hMCQcI10AyKz81NMJ29D07yvIQxT6fdGAAfrC8NsfeG6CQVTE0m+K7yV03NWp5qCgmJjGr9uITVU6Ss3/Va3vaxObSuCd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755071994; c=relaxed/simple;
	bh=KtGjCFAFLD0827cYs5BX+NqsbV1S1xTn38cezWXJ/Bg=;
	h=To:Subject:From:Message-Id:Date; b=VZbr5PAkVfRoPZhCxrQbV3D8GOHAokzeOp9LEBLDNhURlXEu1kzDGFbNdeipmzG3+xbClavJxom/o5uggXBz2Wy2DV73P2GhxyfVa1a5Ny8EiaEaSxVVwhgS5x3T6BEuAlyJ24xop13WgX4St5KNklPONPVWR6njCknxHJYe090=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+wlmF0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+wlmF0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7D0C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755071993;
	bh=KtGjCFAFLD0827cYs5BX+NqsbV1S1xTn38cezWXJ/Bg=;
	h=To:Subject:From:Date:From;
	b=Y+wlmF0G2aghwtJevNKZssxFramnggQZ65lnImKYeAdD/zjVab+hYrIU4sVU7Zl2V
	 tEaKTPirK8vho1DDLbS8DoE/OVG9+EU+JqlX5/zibvjB9LnDHEkNMSUkJMrp+6AB1r
	 NXY2CYGX8w447+1vBqnX1Lu10k+jzFUeCec1UpYvMjN1PmEA461WFvU8Fwxnk0PQLZ
	 Q5WMAucoUWSce5CAhvJ9kbi/ooncrtS1NXfrCRhPz4qSatVEpaODIW/7kXcNeDxQaS
	 a3cF5sLbB4UuOxMEiBxP601LY1bzMovDF57oB9/mSVEgwAGEP8Gaa8lZjpMmOjv132
	 9Sr1XH7VNdUIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E99BC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507199357.22778.879454430749720290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b55e6e6c5e3cd61e8f2c8432047684954ac6fef571c8a1833fb28f338251d933
Date: Wed, 13 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755071993
