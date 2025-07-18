Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373FD2DECAA
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752863394; cv=none; b=XVNOJVVmvaUvXNCCt6HgOBRLunshW4F6Ts7G6ABqMMhJkluz3bg0Vr+GfO29DhYgXr79nuyli7y/a0m2JlnlR8hRD6+953kHqSRGSdYCGVKRRU/h4OjGP5g5cv4g5aw/ctSBHA2U45VDbjxBNdhdV2ASiupVmlfw5IS8DquTY8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752863394; c=relaxed/simple;
	bh=Qtlyz4fEJbzacI3DMK7m6uCRw/Zy7lr6J7DGN/PuMJI=;
	h=To:Subject:From:Message-Id:Date; b=M1znMzoYQjdvwYq0oxpQyGGW2ZPxdQqxNLUHFNprySIy9N2r9hvqr66iLieA+VYH83DYTe4B3+s8HQ0T72GGIg4g1JnbkOiM34J2gE80xN9rvqz+uQ67yjg1gpVugSSYn17LGmkeTzhPDzPNamyUo2NPaI7ObBdCGbr4PaXEZAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCK0896D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCK0896D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CF4C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752863393;
	bh=Qtlyz4fEJbzacI3DMK7m6uCRw/Zy7lr6J7DGN/PuMJI=;
	h=To:Subject:From:Date:From;
	b=qCK0896DL5JaJ1+nGK6JhWIcCGpwwNCtziTXBsnKT/6sFI+s7Lu3srV9g6sRg1TW7
	 Yzc2LbJ0jfSwMGkKQs1ZUzTNeYLYRTrMa/DOz+0KHi0tLp74y9OysGsFeyRV8r/M9y
	 XAdhCKCh/6D231XF3HFIe4sxaX6B+iaYo6EwrijN6zeRtxh554Gkx8JSyjdkw7pjdZ
	 q7+XvZrq5Yhinqc5ndsUha1Pxd1H48AC09M3xa/rPgbP93kPlttuxDMeyeB5Rti8Ge
	 heHBoR14/DTfo0W1EjQKSj/8/oxkd9bsPPFTfiWCdRTnK+1IIoyoxH/LgH4sYzsWHX
	 3u/NWqtW1sdCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91842C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286339358.10574.15497055179957739411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1fe67f52b5f1985df5b50bc23dc481b210810b0462c7e7c59a8ce6797245cd
Date: Fri, 18 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752863393
