Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C5E22578A
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766719434; cv=none; b=G3ndNcPk4+JO5DBhVE0vbveLKV7AEWTyyOYp0vs97F2sOrrw8adlGJtFX/xeZjALSkEDlCKSFkCreBa2BGnNzyoznhVseDGhTmgdCwclyt5D0yL1I7dofQU8O82p+EtEKuotYfpzxH57cOGVhtifQV3V8GAA0+wPwCjylSHSRvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766719434; c=relaxed/simple;
	bh=gID2P27AWC0IfQPckch3S/dSw3cFpGt+9UrswpMKz0w=;
	h=To:Subject:From:Message-Id:Date; b=LJa7XQ+21BvkghQ0ySiSmS7SMqmfY+5Zk46AxOgz5op1W3OAeT9FQo7S5CSzFjWF4SzH19qXYYhUAHx5iDH9tZWpm2ZTapcCU1HUNhZ8qdTRbNpZ+04lKZIg2TdXN0BslthxtM5as9BrXDJ5xs7xsSYSYyN5bDXxTRySSXWDHeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+vR/w0r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+vR/w0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC985C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766719433;
	bh=gID2P27AWC0IfQPckch3S/dSw3cFpGt+9UrswpMKz0w=;
	h=To:Subject:From:Date:From;
	b=O+vR/w0rPvlJwKQRCGVlDrhxDg1nH9qdUxVRCddu9tWy27I8pTWSjJhEs8NCmeu8O
	 eiq24znr4LoU8MfmhtNTAAvIMNRy1r5+QGJ9jHBotG2h41v1NA0NWeqYOedEuK7bw/
	 hPjlLHpfQOlJK9PcDIcOJCxlLaLEqtjNUPxeBWrCuBbrQOJoiqR7007x7YghnAilDg
	 xeMskzyo58RZ1mb0zVRe9bmzIvVr0oP5GlbF7XPLsBXfgvdiHeyP1JR5wzZjAZFOLD
	 zZQwMN+90CAQSE04QMYXxRVjD5v7c2BUUPzV5MzyGCrPN2qqZ0H4RfLLx53ZDxikiZ
	 ADCSHRvGGNjMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990E6E7AD7C
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176671943358.10918.147833747406326976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5503e47217f7c6fcac44dc38250e5fbc56a096e3d05a3284df102102829e1f5c
Date: Fri, 26 Dec 2025 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766719433
