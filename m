Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECF111CA9
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722658554; cv=none; b=XPYpjpGVapA/citjwNDyUV0n3hboriw+Ub/xBQxuL1t4TuLR3xZkmsQTCiYiL9yH0xpxPonMne5Tg/XDN/56cVOkE8E8KWuJLBOeHGcoouYnU2jHPTD/kELKSy9sJreAmEdIRzKUP3RpKuCps9OjP552ofSn38qU6gqodEXqv/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722658554; c=relaxed/simple;
	bh=ikzOwOsLstg4r9HKLbJKOsy9ggxoXZ2/jHmsU5yqmCc=;
	h=To:Subject:From:Message-Id:Date; b=o4Ghl7VVrZGb15UgC6Rf81t8L/NcvOJS9gbdXGf7Q8kG4A29sQEmKxtfdodqQsAJt4FuGyImgKiTXPKCObkhZu89OYgGxk5PMeYr8ZIEBp52/RskLaA5OM5kKy7vqXONLecCKIHaJrpGA9GUzhtePTCFgbaT/UpHZ1LQodLvUKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRgmDzIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRgmDzIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B22C4AF09
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722658553;
	bh=ikzOwOsLstg4r9HKLbJKOsy9ggxoXZ2/jHmsU5yqmCc=;
	h=To:Subject:From:Date:From;
	b=tRgmDzIHggSrVHMmeUeVX3bcZFsrBnT3/xaXfQFo0r1YdBwDXySEM/scp4sAeK/4a
	 6mUckaiMtaXpBTJX9vQkvetwUpNfpPuRssGPUk6Jg5KOQKNKFqppBnAsbTrq3SWcSR
	 4xAAh9Q/G3iQqVvLCHPkQwTb0hdMjEPglXOdn1QGBt0qezlXFeGia3LBlBylxQ98se
	 XXFeg4yOedXns0cv+lgLv43vfM2zS4MRVNRdml2brcZfchkb3B5x8TD6fXJwZ0rJz2
	 KKpxqXnscrO+BsqgHiCEYjlZumlqhTtsGu8vryVulfsGBNJvVZFPc9Xa6BHP3P6Pxj
	 +lAP0fWMuF7zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B71BC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172265855362.6539.11876644355617770128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95a47be074b555b0c7e815773aa9b26274c8e5f7c061bc1e6637300b01161f0
Date: Sat, 03 Aug 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722658553
