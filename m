Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211F72D5923
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759826394; cv=none; b=Q4BJE/+XS6XLTxbeucuezjvJwRZNwm6p5lHp+FMZH87U7Xk/aKCDNSyEYDHi8c/1fJW8Ah2gZcA8ipxyz9AC9B7Qt2Sqio8Fizz1/tW7YXTKOU802EqD+klGId5uotUvmJo/xT6D7iyAOj809sQGD/EvBBAY2J+dawecOYkzBvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759826394; c=relaxed/simple;
	bh=0i6RMLjCoCLbzo+7ABnFsozTxU3wjNaNeHvcSeyfDRw=;
	h=To:Subject:From:Message-Id:Date; b=kSymD8XiiLWwFNM28mkmRb9O4r+1uYwjwGk6fGTA83hIzj091Lz9fTCvqvvj7yrob0YIwpQjqWaeZmh8L64H0+CDaHDoRpynEKhCCrKVH4CP8NiZ/2C3W6iF8qiJwD3ptyYgddY9OJMdxXftgRgqfZtUVU3Y9FEtWXp3kvDkMcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWKiN+f9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWKiN+f9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B2EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759826393;
	bh=0i6RMLjCoCLbzo+7ABnFsozTxU3wjNaNeHvcSeyfDRw=;
	h=To:Subject:From:Date:From;
	b=mWKiN+f9SXqSF+z0uICo7kFpCucR2nDGZXcij7PTyvA5xupzwJ8zl3NgtC8fHa3bs
	 iGRxaRwaP5rPHWkfHE4FqrQHYtgdnaHEhNtKlA0j0Ed0xmP7XYJS+Y6v7uM9NbaOMZ
	 e6s9j8Ehi4/qHT7TK7B9BHAEW9W53+s3WmmMPUaqBW2jFK2JKweF0tXbdLpsdJKfkU
	 PVUdA/TfArG52A7egdcqxgU+oPSDteqnyEJC2X2anLAZztbdVDff9PcZUVo6GYwOp6
	 gbiQU/a6QMXjzwEsc4n3F/92TuWdznH1as1jnZouZV2AaWCW2JkRZFfNHyn25M+BN5
	 Eqz3I8vEdEkoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C14CCD184
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982639358.2277.1750770983155863650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766a1653851bb5f8783750b940a949d9ee52c8d5ccd95583ac1cf6d4e5559450
Date: Tue, 07 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759826393
