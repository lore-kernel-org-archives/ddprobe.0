Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB272D7D3A
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787987434; cv=none; b=Qz1QFd+zY4HwrwZll6BtHmLmw/JY8UjKCu42otD63OgKLJ6OO1QvOd14GLLVH0mPyoNXLjDwH8+OCOuMuO7tbtdauaF0gXIbHUaPmHOhx297o9LyL1lHfEeHnrd2ZnSXqaEVFzQzrls/fovY3bIZt3//C27zDpb4waHOWiap1js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787987434; c=relaxed/simple;
	bh=UMtRR1tSyYXuiPKNJhUAMR/d92LKSDe6868dP2OAfo8=;
	h=To:Subject:From:Message-Id:Date; b=aByo2QGfLaz/i0bhzXQk6iy1bruBKgvAzFwPDNDDBcHsw+iZYB1afjrft0ks1yDWO30/mRSUBeJAAzL4MRVeZ9h4PIrstVvDZu0zHIToJOdyRn1AQQbqJ1U24MZB3avk1mc/bK0UHyBUHpBFMA2Q2nEXOeNfbVLob66kH75x8t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuKrOUbK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuKrOUbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8572C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787987433;
	bh=UMtRR1tSyYXuiPKNJhUAMR/d92LKSDe6868dP2OAfo8=;
	h=To:Subject:From:Date:From;
	b=DuKrOUbKEZ96aKr9Wb8xAJW4fJUGVAGnGov2P+iCHR0exinamR6zYccdKyNWkNaCw
	 zizm3NWvHIaD7OBcFfkS0UAaReFzn6rkwyoKjJ5GJdVuf+sdEmy/VKw/byna065akp
	 vdnsiwRp/xArP1OCxnIgEG2XG2dMV/9jrQ2ubErOiIvPm6INJ/FCVssqXbOT0NbE2J
	 0hH6mmknTYTD8FBLy+vkYKyfQdmSC+upTjajXYbj5dhsGfcIrGamOXDlmBCMhMKtHG
	 W/Iddc4XG/C4F//BMVd9FoGXn/p51o0b+XzKv0ZMleuox+bVf4yVxQOHM6UhPH9qhh
	 FeuIU0JX1eDVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B000CC61DD7
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798743368.10535.14853811353630147417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d17033e8f2fb555eda946d0d8c4035e09f251be29907ac850fc65428c42e996d
Date: Sat, 29 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787987433
