Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562F42773E5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788402634; cv=none; b=NRlojaQL4QTFlgNoeyoCnRBY4j/P3OLH33erFifOTjX1rplzSo7L4WefVlOaxKmKRzhmrZJuiRTbd5uS/c48Y2ReV50KAlVxaRfs72cECH+SLd9DQyGHNGv0i4fE/Qz3l/xnz9ZcqD1jB9+iySK30XtuExG3cwAxyYtpmMdacSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788402634; c=relaxed/simple;
	bh=3b4vokO8MNgoL8O7wjdPJsj24D0xX2dGkiyOwxOsl1A=;
	h=To:Subject:From:Message-Id:Date; b=J76rVH16+z8TM0r6ph4Yga+KbfcT0W1lKWJkgNo3cXsPL3SvEkdM207sbxVRYo5tBSF28IpVfAyaXmjr4tTsrQMTP2XV5i+WPtZmHOV1wUvCLHW+4XaaWYPsCaVKbiMWsHzyTmBRwnTLIbhkRDYY5Rme1RQ/xy6kGuleo+uG//w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7fhn+5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7fhn+5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD252C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788402633;
	bh=3b4vokO8MNgoL8O7wjdPJsj24D0xX2dGkiyOwxOsl1A=;
	h=To:Subject:From:Date:From;
	b=U7fhn+5h1lmTWIs0fOaVVn8LcXOq5eedaFmPix1FUdf0V/xkgwxvOT+n+70h29L6S
	 hG/GbnZNrEBH0D3OGLn7iYKDH+rL1b3QQhSyguxu4t/ZbS7BNVTaxzM8Zfwqoq6tFU
	 U/O+19BzC5Sgigf9FRzMSnxUza8hEJrDANNk+VyPCX0Ruxu0Sp/GSNdnRN2McBSfYV
	 rPNTAU2RU/p5dWjsqlwoX0KPP/yCzIF95R4r7thF4PZsVWC6OWRbqDXEZ8WApEprwM
	 CRiDpVWozPc09NTwR1nglZHSyI745RQ7L67VLW1nVV+X4aAPVNZdcOPfZ7OeZ/2MON
	 7nUPMPkHvMTOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1F5C61DD6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840263368.1587.6748910794758356754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f7e57990a5c61717f2dcdc11eb35cb55a09a190c838bdc2fb9e0099fa03f73
Date: Thu, 03 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788402633
