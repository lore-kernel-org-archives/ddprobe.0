Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C9F3D6F
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760168994; cv=none; b=ePpdgIAxA44bRIhzvq5v9vrnmbyhjqwx4n4d0V8UbF1+lCczr52PHvG2E4M2uyTapW+3k4YOrrdHpATllvdt2aQUIVQUNJosphuZCgEb/aex/r+Pld3Fe/oJ7Tnoo7yRTqURybQRiDAiHK9v4THhaPwYshY4OX+CWRExBQ1XSVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760168994; c=relaxed/simple;
	bh=g7rb5r6Li9RQxPwZH68vvRbMDcz/Xh0/bic/YunitJ4=;
	h=To:Subject:From:Message-Id:Date; b=lYwCq8NoDJuKak+lsc65aA/s15ZqstJqadGjxRVwgeWWnVEkUzHm89VMWiUCvnXPGLkriH/VzWm9PXV4YiDhNHBZZ0c+wl9qpHnzxVcEy3gkseuj69Lr9b3lGWo87rK4e6YiqHmFQOnsYawM9leZXSeAxrsd1l5tg+EP8YB4FL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bp0zu41L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bp0zu41L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A587EC4CEF9
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760168993;
	bh=g7rb5r6Li9RQxPwZH68vvRbMDcz/Xh0/bic/YunitJ4=;
	h=To:Subject:From:Date:From;
	b=Bp0zu41LmGtK3xIUXxf+8v8l9yUEfxK/CxmuwioneNKYZUXNYpPoe5UfJs8x/wPG0
	 WgyTiEKNWuoxKc61oTK8Om4aDoPSG59rIxJpDweQ1VIkHej4cK/CiSsbjElTofmSNQ
	 E20m06XEIoGlmTwmB2cm8SRHD+Hl3P45iezciRWTWQvXrl/PJWuxI759PeM11a5ois
	 a2GGPv2HcSHjBk7RZpXgDXWYHudpA0JTFP38CYbiTJ+3/zwBP5X6U0oh9EdqlyGJSX
	 lJwBIlPVNxqScGG4icbmb7rNee0iFCtG0ODC3xPAutI3IFFZCGOzJQMLuTqKHMnChA
	 ltaCEEtPR6E7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962B8CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176016899358.21958.4509316505076216166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6deba960d6c2cde07f418ebc37deeccb11f9510d0898d4c50b40f9a1c77bb44e
Date: Sat, 11 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760168993
