Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287362D73BE
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765003975; cv=none; b=AdSSzuXshLwLCsQbSOih82nHIvpepqjrd95F2iIO4/8B4Q3ZdROYxQclWqp2KIq0cW+I49B4kiVJ9yzGL19d60J1ZRacswBzgWP1vY+/i6VKfSt4+tQohl3rq+f/btGyXQQhSGS2OM1N9rueFfASFbJAhAyTkATn9pae5A0+uMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765003975; c=relaxed/simple;
	bh=+jMDrkM4hq4/bxgGWcCtNgbroFU1/fH3DrXq4ZxbUuA=;
	h=To:Subject:From:Message-Id:Date; b=Y78OYb1sQE6CZ2UZ7YCeF5lm2ildfF8i76hlZBxINRZ8JknKKGNJ2spwKQyeOQtXhhoY9p8JBQkYq74kslWjSpNgvUj+bKrymfe1jyNE3mQrVlIRMPGdCHLzxe9jECuh7Ernwt1Oo1VJEjUf2lzeafWDqwqfsUD6cc+v/rrcIic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEANUaQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEANUaQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E5CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765003974;
	bh=+jMDrkM4hq4/bxgGWcCtNgbroFU1/fH3DrXq4ZxbUuA=;
	h=To:Subject:From:Date:From;
	b=tEANUaQGWqXgpwCrP5YPFhfmSMjFOKxnl2MXrQFdKPMpnX4sLYnMKKLiab8MzeqbW
	 iUkeaeEJRR+9d+5P91I1ILRLOgKQOto3vCJVPovbMWR2VYot+rhcLg2FHS37+f/1+T
	 /93iTf0gsGDQQ0pchV74ROOKgXYi+dTPfoyhq6QwJLo/pHa0QT4ZkKkq0Xg1kY+vxO
	 xf3Ku9ZTH5dRmXeMCY14psAKsjNdhqty4sviqq1cE7YukRkgKbbJOF/RwsMmkqmicp
	 q/IIGb+gm150sn4Gae7gnFtAn+xX9oHrE95vvSiI0SKs1qYk9Su5O5Vg1gaVBvzzRn
	 WX98nHGBsLzaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E9D374BD
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500397358.24744.3366422251465136431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b14ffa46196fff54cf3041cca90b4df922d5412ebb52791fd457671e1087f0a
Date: Sat, 06 Dec 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765003973
