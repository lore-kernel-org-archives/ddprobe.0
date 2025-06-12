Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32A019BBC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749686993; cv=none; b=bM8J3PVNHTvldb+KiUG31WkvUte9jusY1soEEOKlGQWk7d8OPRsxbgxW4GYFDIIkpETy1VbGMO9rcuWvXDClmv5pDgET+CXhhIYrihRWHp5Sqbh0AHE9j3uVcvutOtcfXBhD+vYZ9wGjCt7awzSzHfq2TxMz7xV4EjiYXelXc14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749686993; c=relaxed/simple;
	bh=1A72u3MXBBIIPME008lg0HYcIMmuQ2C7cdsSY9keEn0=;
	h=To:Subject:From:Message-Id:Date; b=V39kWJFloq2tUrcs5cDAqYZLGxmzBx+6VR1+LyBZLWupiFa+S8mCNz+KHAZkFmLAwkdIbZcltWXFrXRpmTo4Xkra978hJwoI4e+d0Xf1Sa6+o3NvtlmLo/Gxijc5ZIChnNLCD29Pj+H8+U77jmQJcaS8Il+mSRx4/fxvr5IHkJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvMsH/NO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvMsH/NO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94D6C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749686993;
	bh=1A72u3MXBBIIPME008lg0HYcIMmuQ2C7cdsSY9keEn0=;
	h=To:Subject:From:Date:From;
	b=nvMsH/NOYUL7L1qmNhUSVU1hSEHN7q74e/TuBNkR+BnawRO3WW21F3V248gEMPS48
	 VSKTYMhDWJXxe3XGyK0I0CtpZSxTcstEbNkepELCLp5KjWzfRTMGiR+aTKmoesqxcQ
	 i+wuFC3/lWs18kiXkek9seJ5XFC0JTjUS2Wc5HSxPSlsaX6UMTbp5a1N7elADatFLs
	 zVsHWyGB8fIcMuaU8ibtqzjk1uJ372IBklTMzvrHR7EIxl4oDBIk+XXr9mHPt1TiZq
	 EjlIpeXFAKvzeL1+E0lVR369L0B6dfWh6GrJQrN+o4ii31GrHj3x5R1LU0C5dV/22f
	 yP9aShnChL86w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B58C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968699358.20065.69936071652887267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a5ddf034b699459ea849e22d3f1f38a369fa4f0042c4d771a48d94f102d594f
Date: Thu, 12 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749686993
