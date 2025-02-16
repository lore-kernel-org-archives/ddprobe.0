Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482D0634
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 00:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739664534; cv=none; b=hBLJ1LpnCj7WdgeJ0WZcGXNuUXWyKaqIbYtzSULB0wwB8kp21JbqhgA6M/kSro8hv5BZj40cdvmhjoWPpcei74yA6GbXTKiEXr1kpHtiEZRVR3DyFs8VbnnadD6MWsJyeZ3kG9q57UzMesW6o+UaOY4NiYzjESnaAM+s6nh8Nwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739664534; c=relaxed/simple;
	bh=A3HTbkmANQS0U93eVoZoF28ovcMSZlmbhaZvf14JDY8=;
	h=To:Subject:From:Message-Id:Date; b=MrJQ7ECjb+g6Y4BIAy/LW/34gueAUqDzwBQ6oI4E8UJIUfGrGmOy23M6Yz9Q1qw3taG2ACj6h8RCHFW1mM2+n5qr9GjGgmbdNI4SZB67mPMBMmU6VWJZcQc+8QJx81mqy3UMlrxklVT6+zLJJzctX0cqnql3DYp+F8etHYlLIWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPI+SMB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPI+SMB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2628C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 00:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739664533;
	bh=A3HTbkmANQS0U93eVoZoF28ovcMSZlmbhaZvf14JDY8=;
	h=To:Subject:From:Date:From;
	b=sPI+SMB2IEmwBuVdAppA38WG7PA0Q+h4cSyVUoxVKoM8K7rp6eGrlv2jjoTUmAmiT
	 5Pc3BKxyi6fmsV4N57vVM/XEJ64hTOV7MoDTfWu22ZollwN0R5F2+n1y5c4E+4GjgT
	 YfdYMC4I7PkRBbGvFXmGesBGsTKYtEtYAVr7eyJlWXAq3leDMOYG9/YTxvS4eXz09M
	 srdPST3N33Hbzy6WuVUQhu4R1N/6DpeWD2b2eOquP2NOfOuu09Q1J1OhSN2B1MyvYd
	 G4Msa0j2MtwqZ2M3a71hn94YLS0xbYXUbkZmuHdRbhWapEk5KeYG9VZDTbaEQAcmcO
	 1tReCZS6XOr0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05B6C021A0
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 00:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173966453364.3351.2666900809534236491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f171b37ee28683025f00b75629d269ec1f8fbbddcaa7b011f8a401f11524f58
Date: Sun, 16 Feb 2025 00:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739664533
