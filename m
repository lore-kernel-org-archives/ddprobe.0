Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA571F03D7
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756294195; cv=none; b=BdmagDp7FuTdfN6QWLYBFH0pdREyi2acRcrciMSJgwA+7KFpJboSOlGzMosfWTyukck3OUx0G9qtVvmpOkt6ZDcqzlOxOhOxQ+BpNyGV8E8U8le2MVX8IHqiEtrP1E2+OxUi9Ax8zcWN2zmdSBXd7gpsp6mid5obceD/XhWAqEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756294195; c=relaxed/simple;
	bh=4n4jn0wUA70URn4XzFoPPH6wA7Uu8dlBPYi6HUbckxA=;
	h=To:Subject:From:Message-Id:Date; b=piXsfKiMnePTubbnMhz2HJ/MgmoxYz8MFOMuiczz9xsxUtyGGaQqH6oYBGt7NPYhY2Rcssu8RA23dRFXHQdyindmawjrLywI+/RkQEVG0qsIcMWvsNB0iXGOIYjXRdNJDPl4LdeOUEl2cfyShYMCVmWkH+mL1lLcanH+5ToW+x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hua9S03K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hua9S03K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E0DC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756294193;
	bh=4n4jn0wUA70URn4XzFoPPH6wA7Uu8dlBPYi6HUbckxA=;
	h=To:Subject:From:Date:From;
	b=Hua9S03KqP3DTR2iFSnUtZvgIrKUZuq5AM77Y/aHKYgxjHthLggI6WN4btgjystip
	 C1P6Ug5za/dxbVFLMrHY+VcoOatY4FpeBf3opr2EXN1Z/KtjkjEtPCVsdo2OAifGwm
	 QQZI/iwmahaB3LTyTkA9pIgx9hhGDPgN83LPAu8GkFQRo3L/g0fLymxJK/EzJC6ws3
	 6lrQjlxV6BjUj+s7EUaWlDWq2wcKoubejQ9iCrEK1GjTDB0guy0Y/OFl7YTA0JA1mg
	 WPvpJIO5NS103J4T7qTBWIHwZc2cKBxfh8pM7yKUiMxldT5mwwVX2q7+jsXhCX1ArJ
	 QDYugfnX36/Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E788CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175629419357.8588.7986124402176024456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e74fdc822a1afe35ca75186134e440b8ecce3240ee030628fcece801b6c0794
Date: Wed, 27 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756294193
