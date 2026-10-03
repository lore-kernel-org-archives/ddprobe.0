Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51289235BE2
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791042634; cv=none; b=nyqtu5uV8zB7VjC7x7MvSqlzA2TdfJbpFvri+d/nSfxilMY7bnbv/+aDIzsEKWFuE6W/VDySjWcOtKsrpPbUNBUMrJdBuxn0DbO8JWxk6hWNGNYsHg6jIWOxXxyAFt66Nz+5etj508Fntlnv3Yskv25S8YnsJfqbOmNH9jhRgKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791042634; c=relaxed/simple;
	bh=xRERHEZl8TE0vUquYmB6LltYjNrYI4pH5zTl2zWqCJE=;
	h=To:Subject:From:Message-Id:Date; b=D0pYmaHpyPd8/PY1ClB5w9LxmYOzuuOwUG5jl2RttKwArPImuVcMB/ZfJnfae2Jaub+LbHfDCdDnDq5a125CXj9NJSuEP8ZSdEMDkRJ0P5dtbxq5+kiozVR0KRRtSWi7a3AJJigm0v8QRKs0J37juTLbp/QQIkgFY2Xbc4qb8JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L57C3d5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L57C3d5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC56AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791042633;
	bh=xRERHEZl8TE0vUquYmB6LltYjNrYI4pH5zTl2zWqCJE=;
	h=To:Subject:From:Date:From;
	b=L57C3d5/okgMBTm75f5MXZxMEVkDj8PtXTFWswRHvmXIEXKmamhDqdFIqrOs6URxW
	 OnwEnTXqtinH13xGMciVyfEggS/QGJPwU5o2Yf6A9lwHPFyLcEMV6IQ9j/CE4+926w
	 HNegeDJnXmQSdXXxbCPlL6yrXkk2PKiakRZW+b1O++/iIuRqDSsTv9okSUYFV/Ib6X
	 D57i0cTyZLrAfPLS4mYVq35gLxBt5juMTkZ+IhlFrTJhYOvst/ikl1ikIUi7DhaMPO
	 NFfk//YsjdValqdImThSYojrH5oIz5jPikv0ENA8NSo/Uo0g/CFihnEpfUe56vecHG
	 UGJ/dGTA+CNYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FB1CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104263368.20232.8611809991281439800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c19b2a8e14d284aa17bdfec5c33a9d96dbb3e55261adb22576281c619b7316b
Date: Sat, 03 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791042633
