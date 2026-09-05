Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B37A33DEF7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788589834; cv=none; b=LfzNGd8DGN+7bon8VYq5++aH3TryJtVZ0JzxChA0mzdgkN2spTG4wxpctWkuXf7UoWabWyqLxcsORdFMJaQq3azj29V+zTJkRZn77TzRikMfJhVt3eQOtAG2V4RYI9V5pnXWAP3Yp20qiSosU5AA89+ivKZynlFKD394jLBhzdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788589834; c=relaxed/simple;
	bh=LB6aBME2JL/8ieTyAdl7A/HY5uhkcoE3jXhQy5cPSrw=;
	h=To:Subject:From:Message-Id:Date; b=UrDIgwMlyJjb6khTStiWFRyE+auPbklnBTtrZnT1HaTMX0oCiFuZpEM4dISMMfc1X5brTgSqq35nbXjGVAxplitZeGISEaexanFrXAS3vnyZ2lniYiTqP1NezlDbVxWOEvLUeG34mGgQC99a2sCLO/3UnpI9oQHvT92EVwxYqAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICfDUYZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICfDUYZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E96C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788589833;
	bh=LB6aBME2JL/8ieTyAdl7A/HY5uhkcoE3jXhQy5cPSrw=;
	h=To:Subject:From:Date:From;
	b=ICfDUYZRLSuUcYT8rla9Y+srOwzAH9M2O/nev0Tt/uHAvK5rlFzqDiqhDQn85kmue
	 OWla1m1lSh1NHgIp3KQGMazUqvjw0PMyLYkG/DcymMK1/ETklua7l/fRl9Dy/iVVBH
	 Jgem9DLFuRN8Cuxw+3uySata3OlExwHJWbL8qm3I6oPFAwQnmEmyHHMRIzv80tZ9jt
	 AdLsi5EkqpYSy9B+S65A68MI/53zY4WCcPC+E3NGlYu1NFMoHUTq/Gy8WGFQE7C71m
	 HFRC+QjtYgAaO2p+YLY38EXYmkW9gS7zdlEvBZWO71LrwE9vV4nYsZckL3fqctiIJ4
	 cm26xpqhzitmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1A9C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858983369.29749.1276909554812352420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f77a5c52b3fbe38df75ed9392e60363801f155abf9bae69b94de2a8980b14de
Date: Sat, 05 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788589833
