Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E5A285CAB
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759260594; cv=none; b=Aj5xPyDSdfV7S9WfgcHmaUFeRnNv2KTTclW1gqtfX9Ho3+WHxeUY36WHAD/VyzO08MSOPD1FTQYZ+JYeESNLzG0ws/dtbYgCVfTDTKbbmd3F5QdWAdc6tnW25yhIZVeua0gqZUzxYUv847ahQYE5y/ARNC33ZihGZFr/XdcyUEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759260594; c=relaxed/simple;
	bh=36gy5gto6EQ0eF81ALSsAcH1g6/qkLet3I+eYhFzyKk=;
	h=To:Subject:From:Message-Id:Date; b=giBC0aJvSupYY+WGu1M3MItJNFg31YPAzQuhk25HWxqfSAc5TcqBOJk6P7xzuak5gELUwU/uh/24RTggo+y/Bx/vm/Y9VP5xk/7mtKD2qfx5cMpz2r9w+vxppwSLkg0FVsPQTRWNr1uflFeAHBKXZ9eIsCKaZkUEOsWwTuaOTww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPadxdIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPadxdIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEC5C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759260593;
	bh=36gy5gto6EQ0eF81ALSsAcH1g6/qkLet3I+eYhFzyKk=;
	h=To:Subject:From:Date:From;
	b=mPadxdIO/jK5HVy0PTOz99SCxhvlml6+kkNXLPRBxNOzrm6jPssJubfipDAS5V3Ls
	 Kg6xjk4IP4N6rvF8ppDIvHh+NK82W1eclOPlipusZcPR9fIEC8CkfII9fW7rBFmZKL
	 lQjuNHYPOFubRbe1dh1EleBq3zDCYNsAVsuEY2YV0bMY905hqUKIO/1yuvxGEd4XYa
	 Kteoh+8U7w4t6ZEOCK3xyNtKyf+fXHYjnPXHgO3vYUAaXktwLy8r9ivdazJ2SupcON
	 u6CKv2IUcI05PZX6LNUbifGd02f5juXdRq0V6PZnMlTvdpR91HejJ8lwrqo4/xd0y6
	 tb1OYvjdDMoJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FA7CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175926059360.8483.14271846671446372211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0238297f900df929dbd76aa52743f2478e93cf30037261bbffcb6f2cbe92200a
Date: Tue, 30 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759260593
