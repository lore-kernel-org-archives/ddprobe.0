Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E03220AF87
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749340194; cv=none; b=dURFgEzIFYTU+oZw3xVrJLjWqWMWrcEvqJ+1W+Ti3uRixm69wg9EyvDZ4QM/rsrkEQur+WJ/MJhoyUBIx9WnOnAmcLaClV4M5NxallISAD/EcpnqRsHKzcBjYnY2uOabCngk7NOB7282H1uFzF4w7EN9unt8re6rwToL5vy396E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749340194; c=relaxed/simple;
	bh=3lX+VhMJsMso6R+eR60oRTzNnbjcnaEAyD7BxPbxjfY=;
	h=To:Subject:From:Message-Id:Date; b=OgBOdPPpdLIKIK3MKYIqhDDCVzQ+JPW+f3XFgAWSqBae5uN/r9GDaKceKk8tkLIqXPPf/hh3kF9ECjp9Sm/SZ04wJDJxHK9ouv8DvNDDv3qIjb9PNw7a0ipF8Wb0PRySWCYtJGrDeiFQh0zhrAmmCpW0z2SqxzQmnYMcJRE7bz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mio6SaU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mio6SaU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A105CC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749340193;
	bh=3lX+VhMJsMso6R+eR60oRTzNnbjcnaEAyD7BxPbxjfY=;
	h=To:Subject:From:Date:From;
	b=mio6SaU834Xo9NDrRRqx4YP/0D5dlXTl1t/7TjCPk7nVkLVznKOT5z8dUxOuNbLNG
	 vWkYN9B2xAIoSNZy11/dAU2ytfi3tSOXfY+EDDWZuMgL5wIbE8IlvNKYTdSUNV92vt
	 c6zQeu2oppj4os+YRlJ5aXyeE9EDqF5d7ZcA6arigKZNkedxcRUU6tGsFD2PnnT7iR
	 2oYqbVwLuR5w536Loc+QVClLfUBx5ZO9PMs7sofqJ6C8qqP8IE2RKZDp2GdFPaUmIR
	 QsMl+LW5LxlyJdmbYMeQ/VpLrb/jPsQTVqiLMmS7dQuA386d0h0zP4CwLzX8kOVbPH
	 KWmEwLMBW1hRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E550C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174934019357.23603.1838987268844135806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826f28cf735e4eb702279d347255ea0553e4e16a5f7d6fca38b626dd3967f2d9
Date: Sat, 07 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749340193
