Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1F981723
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 09:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716371603; cv=none; b=cO/+PmMMr58BlffdM7Wq85+8RTA6s6rTKKF4k4AdNSh3WzCQyb6HdO16zEa6TdaiLfLrbhkU2TYC6XXGcUwz574GZCGbwGXD55I6RdHJnHsTRYShpqWjY4TyklGar/AhfvSzCjkexzHHNISAwv/Icr4YvaQ/IWt8p9m8Nv/caQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716371603; c=relaxed/simple;
	bh=DE092KHyPJXpGqScok0IqnT2IlAkv4G5zLgk3orcaWM=;
	h=To:Subject:From:Message-Id:Date; b=RxvJjMhjEb3tSXMdkLpF0Xs2omrLEMgsosGE4/mrAb2cDdYYOsAfpzsH2kFum4Y1hzGLxFmO4qPYAjy80085f6Gwq8/3qsFpQmVG5lSyPETJ6tHX4v6pf2zhhdNz/sGepbM31zh3FAUSijvX4lxFWt2D0pqvd3vXB0e63lIQFOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCE9nfUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCE9nfUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7ECC2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 09:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716371602;
	bh=DE092KHyPJXpGqScok0IqnT2IlAkv4G5zLgk3orcaWM=;
	h=To:Subject:From:Date:From;
	b=BCE9nfUr8Kr+rV4hUB9BKSRbSRswxU0G5+qYSj7STegxgxa3zqN5XF+WvExP5tabR
	 CLAAOcX9aQJ9WHs2tNaknx6mtCYHeI3zQvNlwEi7apBoRhanmNx8W6U88BgN0+W+Wr
	 Q92gCgNF27HM7opd2eNDNYcHPJAKxNnucxMr/Bm8YVew5/HHR6zqUS1xVV4Snt40ro
	 X3flBq5YiowKm9L6G5dZWpk4I1MKpyv8J1c6MU82ywLQtSafe27yiDz+xT13edUO3V
	 ooy08Ra4UKRJ7JD/cCnVy9C0TH4sP2M1S9r51WAEfRJPtFWaMpeWg84hqsowyfSXaS
	 Z/mwmjgEQSbyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD29DC25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 09:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171637160276.2898.6358267113679602413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db30c550a93c89e8cf17110a2dd62787f920f8c690629375ed9e3bbf92433fd0
Date: Wed, 22 May 2024 09:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716371602
