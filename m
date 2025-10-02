Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3525F2D2387
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759394994; cv=none; b=fw++VrhyCrSeRr5L3QdGz2gzZ3PRB5QXWGWvQbfPbqE5J5XCDQ3JoX4wk0ygiczbyNQpe21xqgiQSOlQeV+CtQHCobuBJzp3kWi4PwawGR6Aa3t0JQiXiqxB0l73KXDd4mOyVCrcfcHe2E43eedsm41LRAnwlU6kK9D6kxghZq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759394994; c=relaxed/simple;
	bh=z5nmmll4cdjpT75P7SHrWFCaXKzHmDa32lIJs3QWKQw=;
	h=To:Subject:From:Message-Id:Date; b=SlQaH1vN9vDm8JKIvy9PzItXe8nKBo06oQK2Yt+18ZZTZjuSqlWY9Wgc0+ngH/mZZXYPOlwwWIvxCRmcTuWkraEzm2TEiS058gtMIKnSNVVphJyVA5B9o6AGmoPM1ohzDBUrTCMEAfYwzxgW4NYcaBGZ9BUi7BeDSrDvw8MafGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HERYV0bY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HERYV0bY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DC3C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759394993;
	bh=z5nmmll4cdjpT75P7SHrWFCaXKzHmDa32lIJs3QWKQw=;
	h=To:Subject:From:Date:From;
	b=HERYV0bYriCA8Se2qfMo1XT/vmotqMoST/UAe/ViJP8CaWJWDXso6y4EVI9MZBJXh
	 w3WIfW6N6uYBTdTgPxTwBgDkR8EedT/JejH5YXT0GAuOjSL64dsMmRI2Br3Us8c5tT
	 eR/3dwPNP4QCs8MGhceND2+ewEsAC/1n3WzvpnskTIfoZUhCn78Mbo8uqF62gFZH5M
	 QmnYZVAMEZef4F1zOQJBzT+5dkctLzU9grxtfTprsMOLACbCWWJtx8b3ZvisLlQBbc
	 5Dn1NZ4Fc5HBto0tXPRCYY8J27afFuxfsOnpwLggUQVpUnA86ognocyzsxELNp8AKA
	 dUnBgGTqaLqaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFD0CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175939499358.11507.14584607249899790574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1efac2f74f34d5b14688c03fe50cdf53ae12826a316b7a0f8fd82b448e7424e
Date: Thu, 02 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759394993
