Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAB33D544
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758427194; cv=none; b=NV+DnoZLVMF1w3mhm2pRGliIW4Vs8O+hPl9zvQn2cuJAR/sq/eVTkKY+/ujCg4+qkdwV//uF6PNwpH9GDSawoErHSTNsqKa5CnrJkAcfe2U9DzhPbbovoCu8kvhWq9jePhxsQydNm5Er1lkGrCc1KqJpNT1UYNjv7KASNHuEK4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758427194; c=relaxed/simple;
	bh=W3WcE+0Ynq97xXjAM4xf5LYYcKzEFyfCaKXpbdossFU=;
	h=To:Subject:From:Message-Id:Date; b=k2V/PA9SpW9nELzICm7D0ShbkZ7rumrKs4qp1Fqjdfr5WbYwx1fIHdEa2qZjHlwpvs/c/s6bT+Q0Vv53M120yFqpN69tEREGwqUBHbNqKe/EtgCvYewyH4RiMqsZ5gWYlUK6lUr8n3MwcWh34p0zMwMsmPu2CeYBnDmSUDPEGgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yj7YZuON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yj7YZuON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0986C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758427193;
	bh=W3WcE+0Ynq97xXjAM4xf5LYYcKzEFyfCaKXpbdossFU=;
	h=To:Subject:From:Date:From;
	b=Yj7YZuONdn24eRN2ojMDuHVZsXUkXxax+mharqcKiITZMfLZxJAP2/il1Lvs6lG/V
	 nzz4m9ocTb0JbtD2XWY/HKvKjqkm4M3Zjdpg0pip1WCbpNBsnjDf9kbzR4fSmosge7
	 UWYRRzN+b75EIfjxUwtJUGtJS5y/6HNJU5m8yx5z2c3+5OAB7seRzK0Mys5X/p6w8K
	 pYJOtFEZ1fX/29hzlJwbismJfrXSnorcO8yz6tIYd7PtO5nQDE9L+gVA5oeg7CHcTG
	 ZTx6ztI+q61fVnQ04FwACo6lsQRI+1HOPkd2zthsPkJ93rY34lufokmkXICn0hSOVm
	 a/4EbWVyufIOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB36CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175842719357.8154.1721462250381430506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ca42036ef0c9930099f1a3cdd769edf3206778cb84ec9fd58dec8bbb541271
Date: Sun, 21 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758427193
