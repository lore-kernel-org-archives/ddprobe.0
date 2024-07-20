Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E68AB64A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721474154; cv=none; b=nD1e+JO5ZpvHJO6GOR91YMVCjkJEWo51dKQegH8Arr7KjCMeSz5krid93qnw+eXhG30l7Wfc1djWYnLc86R71lnYSZTeRa71hXTxPPf9ox/YOzyrDLkyXjvW//TNSTcxHIKcCRbaGucUdzzTZHo2wcK4WXSbrOJTIpvAMCIzIFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721474154; c=relaxed/simple;
	bh=EPay5XrXYs76splSn8BVuqvWSLdvMcvjs6ba2GQrtFw=;
	h=To:Subject:From:Message-Id:Date; b=lfbSATY44AM/zGv1WQYSPC9sBPqWGB3CpSom0WEp7sc9PeX89LEouga31OIT3OyhRr/NPv0Gzk7/W/H9onI5/4EFBEw6Gc4mqSjbwR1YqYaKxNfGCjQ+K1ev5UcjFD1CaKzlibIZHP4MPNF1ktFXrXhcVt0XNc3ERf3xApQDBto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYB4hMWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYB4hMWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8396C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721474153;
	bh=EPay5XrXYs76splSn8BVuqvWSLdvMcvjs6ba2GQrtFw=;
	h=To:Subject:From:Date:From;
	b=OYB4hMWJc9/3CuagO4qPXz5cotbSMinRWatrCCu9ZsIBFJMxHr4x+imzPv9VWsKGY
	 RYbBEcDqY5pVOjWJFFXeeFeVX+kDGo7cs5hc1FzXO+mllesHrLIpM5kDjbsGIfhOB/
	 62mgwQdlHiSn2Oxg7z21JkI4xqQuj+mTvPgKaeOzTUy5JNg0TtF0X7v+gI7m8QgoTM
	 e9QvPep/I+ymAdeWLfYaYnhRW0QqwPlmrRMumnq8smQ6HTRWukk1Lb0DAycIzYgNmh
	 hLdz0HaXRpR92cRVlGCz5H267+LkiucsEIr/jgM54AvIW7OrMyHIVaiuAbNix4mxTL
	 rUHfBW+HONp0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D30AC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172147415361.6931.5120577573809757684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4674d39ff73d5b3fdc08902ac713255eeb1a8099bb16f25f4e3303b3ddb2068
Date: Sat, 20 Jul 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721474153
