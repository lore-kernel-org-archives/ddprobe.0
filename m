Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5DE35971
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761186594; cv=none; b=dk9uv3TRrlt5X20BjaMCO2GFvE70GT4dHav3VdwZX/OC2n+ajAkiKNWO6VIBWakDNtTF8Kz50fE2GM8sKW7Re0NTuc6AhscGfupY+4W5dfSEjC4No4uJYAfEnZhCOmK1+kYvtHtJ9apFF5yjg7hOScAJn2jvHbQBhSZNs2gsdpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761186594; c=relaxed/simple;
	bh=8QCTUZbJzb7+xlHTj9S51rhEN6m1ujg7sqe9z3JGwRU=;
	h=To:Subject:From:Message-Id:Date; b=Mk2iI8ppIHax1YpdKOTHkwezOY76UKXz+DAT8qcQcTjVC6HZT4jV8xPkwGPov43WYtj1lrVHRTJgVYFRDbrskIE66NiOXan6zVvTGFqoukWJJ60ddYM+iDfx+5EzCbarZez5TlpcQp+5vcvAILPyMPp719v6FaXjtxmwtrFMFy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5n/7pHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5n/7pHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D12C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761186593;
	bh=8QCTUZbJzb7+xlHTj9S51rhEN6m1ujg7sqe9z3JGwRU=;
	h=To:Subject:From:Date:From;
	b=D5n/7pHlJMQDTw4qghFlv1zV104EZSCCeTTW7X5SVxpEjnz0HzFj6wfQhnx4G8BrA
	 yFWK8mVTdDCTOSn2YNUvsclokt1kMJDuzCUZF2BYVtARBAs7LNqmw0eMxmbre7w6lO
	 KFVridtpR/+WvxTma1Db2Bb9EikPIP9gvQDvrxlAto2U89PnnrAbeZhPrVdGAA+5Zy
	 dnR0PmOVTN2YSqaez2ThBPkgzSq8hnu7hCeOFAv00BLww6lIQRXbI9t5x8NN3CqryK
	 r05sdImXiPzJa37RZHA50tgfuGNugjF7V2IOy1wzgzOVrBR34bjmVgtvNz9zOIVP8H
	 4etCxQhslNxxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E8CCCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176118659359.10733.4710066889654261772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c21720347ee6b4aaa90f2b7a9be7e98bbb9dc31813dc0ab0f0be4cf55212a006
Date: Thu, 23 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761186593
