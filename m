Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1796C303A0D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770417834; cv=none; b=ngSYhlZB9VZ5Mm2zj9mx4AyG3KsCnEFmqoWT/LUOwe+qxk36gofvBEuVqlP7BHuzFq+43SrP+y7QsWiJ1QRk5yTYyBgEE5IoiMfo0TiNl22Na5lny0TYxMX0X3QCKYSkgnHG5P1qRFRVaEueJ65lW0mkp+IASNbRprjjPpcy3es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770417834; c=relaxed/simple;
	bh=zB6wJHp1rdnJKYGC3jL7Am4n8GN4VH9Zv9HlkmiaT14=;
	h=To:Subject:From:Message-Id:Date; b=Yj7qT5hGvMOmadJ87AAtMiY7s1/71NB1PW93kazjeADryr5wKrcimGjl/WWQluXMiVLHob/2VQ5ixRHnLVwh5oXJlIAWwgW7qf+l2gV4I83llZ6y4DtYNkwt1uhL0lWYF3oKSRFtCrm9TRo9nxPU1Zqzvyd++lLgV+okCt8y+DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Psn2uW5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Psn2uW5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64CCC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770417833;
	bh=zB6wJHp1rdnJKYGC3jL7Am4n8GN4VH9Zv9HlkmiaT14=;
	h=To:Subject:From:Date:From;
	b=Psn2uW5YKtPGw7r6B8DJdDDZkqW4R2pmZaprn7HpYx7/viaycslCDoL5Lx87JQ7Z4
	 3ZUWa0lHC3MVkFlnXWKDiQKwioIxPWS0uJmN/FJi0xklCOPIen34gx72dUDQ4Mbd+m
	 hlRaS8pekKaAI4Zl5ODgZyBGwRl6Q3HRiYK+/cX0lUwYf04kdMccMXMer3ox6dSmog
	 UvlzEwvvWm8zAIUeaCr2K7y4WINS0vnj9HAP4XSNbyw2aPVEEO+8iKuSDWU7DdJcBd
	 9c9V3y2F6DbgX9N2J6+p72c3stRYo4FM0S7XGc9sa/ZLDJr/twpmiS4SFl+gqCoWoJ
	 +Bk0fagtSNZBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93452EE6B66
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041783358.28816.5274869698697264345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a4f111eedf47c796e3550054459f4ceb4c14c4ff8024848a4eee77976b0024d
Date: Fri, 06 Feb 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770417833
