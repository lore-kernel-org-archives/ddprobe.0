Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E0332C8B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778042854; cv=none; b=Tv4M1uuxqT4vWrXcuTwM9Od0Ly+pP3TyYrsEISLehteArf1mLbWDBEkD8Rd3xsiQl3/aGLjB8SFsxXiDR0R9Xf2ujOXdc026/+1/458qmPZBKwQtxOuMeKKxbRXk9hsmxDyjE2a6pMryUcRO/jxQESv48WdkspS8EYGykg64nmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778042854; c=relaxed/simple;
	bh=B9wRYfwaL1Q15C+43W8rAMGTVM4saufBXIrq4m04s2Y=;
	h=To:Subject:From:Message-Id:Date; b=skdbQnFrL6u8rZtbtudf3hZ9zaU3Ja02W4pzUXY1Ob43ZMA0I3DZXB554xDuFDoQmyYfxdwwOSJa/b33ruEoH1tcPp3kRBUaANqi2agjWHcLclquDK6m1IYaT5NaOkL+S6955QjpWIkRlTx3PZMP3+knEBXA7rVe7XiOcQULcR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHWo/T2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHWo/T2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20B2C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778042853;
	bh=B9wRYfwaL1Q15C+43W8rAMGTVM4saufBXIrq4m04s2Y=;
	h=To:Subject:From:Date:From;
	b=aHWo/T2qcldgJghaaBrdx7o8jNjOkI8yRIz6SsMSHSJr6cFTVgRaDqlDJZUS4gWtt
	 hBPkNAXlfcCA31b14i6Jn1zIQ5kmU8XZM2MiTeMr2rlf2yL8GJ8gi0HksEeFkshqrB
	 9Y+EwnNT1jIm0fn8xF0zGhnqijgZIO73g8DCH64GmTDvGqowEPrQ9/U021KaOBGFTn
	 mB4wRwUQLX6LrjT+R3FRZklRO/Wo027mLVwbYaFCmHwPwSNLmsGr/sSyWZqs/h1i8w
	 5bApAYNjaaLRmvaMVw1OhPz7irw130e27vgD6U0b/+XlbwwXevKR/w/vNg4hzKjUM3
	 dh8lx8y7kAPMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01C7CD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177804285368.20588.15842974134488596437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def450055a14918e2fcd3e163de7abb8626dab51d9bb70dcbc49a5a7910567e8
Date: Wed, 06 May 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778042853
