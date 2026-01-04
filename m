Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189EB18DB35
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767500634; cv=none; b=cr/9xquPhNtusIlQ0ZdtevhDJE48K+c8YRO55mFWNC+VGOLg9s8jHvnsbLkaK95VwGD+tzG85zo8e/S2gYdt1OI9Mx36F02Dh1Fe7wrVv7Ok9bYnh8yXnwmiWb/lcFzu1q+8du04/LikOJFiOeWVyi5CgM19YuokRTD4q1en+Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767500634; c=relaxed/simple;
	bh=e9qJ2dxtAS5Qx6kKF2XlPX3ttSW+MKedhMwQFrjjQmE=;
	h=To:Subject:From:Message-Id:Date; b=DM14NS8PTg81HXh4p2UFqiZsPQtEuj9fvjWZpSlNHSBdGdWoDbCQEuZkmuuoeXRTgWF+ilWxncZXqlMO0eOLN1AILUpnDjbRhbIcCqtYXpqdsqtxc1MfyRUg/8geQjQqs3F7fIsxVmAQ+HwbszIkvs4npAasts37SEzYL5BoJGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myOuXRkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myOuXRkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8391C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767500633;
	bh=e9qJ2dxtAS5Qx6kKF2XlPX3ttSW+MKedhMwQFrjjQmE=;
	h=To:Subject:From:Date:From;
	b=myOuXRkVyln3d20v+dGTwJd2ez/Y2dIi2XgoHHYbZvdcFBvlkEED8Ww5SLQTK4xUy
	 UPq1fJkVMRhF6mML1lpOSzyPUJMH62odNb2WmfgX3j+B8AfWCiYUM+EjOtI/EFBMU4
	 jpMM4HpMMgHfSoDBTr0ZXHnJbYAsaUCnes+bgWl/zntCpmW/JxcM1nEKA8yMil8svh
	 GtdgihH/y0an2K3qehzMiUM5Iq7QPDFQkNtVCGgjxYeMTcl6qjgNK5SPzvPSfaB9wC
	 hEQiOMFMw6SyU/fPZhGSGCroU7gZCp3KKy8hjs6+NH5ceyOLLMHYhJAiuUKvTTJedJ
	 KHkkB3IBflsug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A28C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750063358.6477.12375083378341373687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc057c93f9c22d86b8da359b1affba71a83c0b907f0080cf5e2d90086c9d740
Date: Sun, 04 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767500633
