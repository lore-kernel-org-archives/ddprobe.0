Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370092030A
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763818314; cv=none; b=F39D+mt7B4mHcp44+apj42JbbEDP4+8Fnk6EZ01Vx2hdH7Nhd8vN/eq5Mdldw62K/WUpQWcB8ZdnIHYtCJF1H5d3HkbJgP1CIiN1mdlTbLJFgB7MxCPkYW370Vh+QKwe2ZiF755embKAsuJRAk41fyzhLuHR7vFAckiqizuwbB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763818314; c=relaxed/simple;
	bh=WrrC5nC+UkUIoMZDMYCq7tLshuVQP478eZG8omKsYkY=;
	h=To:Subject:From:Message-Id:Date; b=Wvdv43D9BFPNl6yQsHQ6147lryKMtplRZTBofxcsW5gbEtVUnEN7DrySXCPQ1QY7J7Q5WqUbg/Ii/60hGfkVhtPAPGDrydE5wS1w0JrzRqi2/OhPulRLLR6NAGp+wY6C8+7v7PyPtmR/AGp40/4GrSHCpQYoGrAk9W2gjNRpZdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DR2j22yK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DR2j22yK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FDDC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763818313;
	bh=WrrC5nC+UkUIoMZDMYCq7tLshuVQP478eZG8omKsYkY=;
	h=To:Subject:From:Date:From;
	b=DR2j22yK6zRurVq5m5vzYo7uR2KZJo6L7OKohtB/0JW7WsY0cSI8JklHLjs7rEnJ7
	 0MGuj2FzwyhoQyRWhwHWBJqzkuEx1QgCpqmaPHL5Fo2u6KTrQFfbdliYG61krue8/8
	 yj8IogWFjuwKjiO1fNwzI6wT2bUKgkBZyd6Wb2MwKtfBTKrECe88uq0tvQM8ywFu6E
	 mXFivbuUHqrpRyHKLI/TtaDS1wooFKS3F11428BROdgFncopcPOaftWxyVuoS2iLPH
	 kyibirk7wGlb31EpRW4leNage0Lbui3CJPc1A5Bt1j8V39PH0zkyLx3yM2+1i8mgIU
	 nNeaHB3583JLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9440ECFC536
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176381831358.8900.2742749136959694452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb51d13edb7cc2ad8e9943d6aa127e9c150357c13d70e99b8652d2e5334499ae
Date: Sat, 22 Nov 2025 13:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763818313
