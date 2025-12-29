Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E5F1A23A4
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766982834; cv=none; b=TetkQXSrkB2VDX1+/ZrLzQ7qjH8yn7k41t8B/d7ZVb5bikMH/VR3VSkBe3d8L+143M6+gYfo70bIG8Eh07WGS9VxKIWD3HJoA5Aee9p6+JYFOOrvPub5YOnr2Q3Ee7Gj89w+lHvbmVlf619nPuQxjmqxmBmHDgJh7jZl6yyEua4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766982834; c=relaxed/simple;
	bh=meJ3GimyAfVbtGEPv7Hdg/GfppH74ws3/PDDpZHzEAw=;
	h=To:Subject:From:Message-Id:Date; b=gVa2BriawktJro3L6hXvfDGoQxGErM8/qeHXJ71bZmOecGtktvAy223951JDnfBA6AWGArstuif+Qw4eSYVpf44tuzOi9LS5buzGgYK+LOurn5V85+aBFaWIQ+DKJ9J+stvaZ2DI52l9KEk6Y8Sn3CdQS01uMlPLWkrmN4sG3ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XN6jxQFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XN6jxQFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC180C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766982833;
	bh=meJ3GimyAfVbtGEPv7Hdg/GfppH74ws3/PDDpZHzEAw=;
	h=To:Subject:From:Date:From;
	b=XN6jxQFrvHMmmrpvjOvgC2uuV4zeeG2TeAJUb8X8JGSM1s3lx5mWClD5h9NiR0Ynn
	 DHDl2JXcjwZfKNdHPWO/JXhAGcE416TAVXkecsY9Yp+oqC+7NRQMDwnrrzrej5GMjZ
	 pogomRItWHHK5l30QPltf9aLRd0E2lMKl8sa8vmDdaeARisqumcsvRs/+sUb8ZAyEA
	 +/bw/JgtjdaUxD5OIBx1sPD6+bPtjT8rk+NRGcpA3jzQRK7HAaqRRV9yS3T3VAMspU
	 iAlLrQSW5Pjk6Tlfi7VYilzHJyPBW9gyiqkWnFurMLeJNkTjp1gs5Jq5qP68TnSveV
	 hODBHaBLNfVCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9977BD3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176698283361.15472.10293482818311111115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc1f6a443c3f40f932fb309695e5eb94139798ec25cfa4ce09f22d287583e6a
Date: Mon, 29 Dec 2025 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766982833
