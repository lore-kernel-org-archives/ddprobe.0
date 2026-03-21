Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10D540DFB2
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774055093; cv=none; b=jTvpywY9AnG1K648Oy/tTd7kUL4xIzPqq7uYsXjaPEuFOZbopKdUnU5CwlXO5rn3KfLtXQzTa4WFc0OvU8IFBuecZber7RgFQCSIx31d/LhQb4l1Smelo1zBX6faKvZ3/fX3mwxPXmh5Ilj8cRhoqBU3ek8ilFZqrjRCjSatncI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774055093; c=relaxed/simple;
	bh=0r9mYxm2nwjOZBukKFY8ucXkPCrPFs96JCmBWYc60x4=;
	h=To:Subject:From:Message-Id:Date; b=fGHaisETrLEggCp9Bv0FSmrYZBI+Xpk1u+naf1K24jna/QgRzvl43UsYtV3lU9LjEl2ne84Dp+COK4sjDC/s8E5AjqkXoYVo1wqH7zbckcL0Om0bgMpdlHmYMBdmvyeSEjesBB3wPz0EswSlHamIkk+sjVu+kBUiioLRJewaNi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNi3+6e6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNi3+6e6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD56C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774055093;
	bh=0r9mYxm2nwjOZBukKFY8ucXkPCrPFs96JCmBWYc60x4=;
	h=To:Subject:From:Date:From;
	b=hNi3+6e6ero84TgmcAiyJ+K7PHSX/dqZ44FxUK18mt4/u0/f9PnoHTAcBICCVtGxQ
	 yf6EAfxYjZoupJTKOjryLDd3W5L/2pvom0nRyRkC06pcO89nA282QuTIqFtkscMj4O
	 AYP6DmCgfDjvD4TyZUrhlZ2suZqm7bLasKUbvai+5LKNZTG1/JPx6XWJvOil4/6fG3
	 DQObHYpRrZjD0NapvEVTHBJeSlGtghYx8G/jDdvqA3UKfLTNZeZspdYUfdc1RDeF12
	 cnCeUjGV1JNGGDwjtg0Bu8ono9AwnkeKwv1c6SXxdB7O/loBdd94vYtJOcVk/bqDK5
	 c63OiaxBGpHgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD11099B4C
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405509357.11841.13870285119115174109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d6b925193139f3414df84d27209f27013743670acd27050b1ab031aed512e3
Date: Sat, 21 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774055093
