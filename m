Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A51A1DF994
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751191794; cv=none; b=IgMnQRY+ZYHahH851YBRjI1f0GgiDKg7k4poqAirOgSodd/1eHUtECbce2AOrKMMAabEzm9I6EtPHO6WkmNf71uNjJfPmlLr0083cs8bqUDO9DacZE8FB8fct4XbeyLnIaImD9of9a+9rkC3iuUmhONP8bJzi35FriMBsZHSRVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751191794; c=relaxed/simple;
	bh=01xoLdafmrWN1xR7K1MR/Z/aoVmDmor4YacL6RQclvA=;
	h=To:Subject:From:Message-Id:Date; b=dSC9USeOlwoxVzSEjor0soH0qWGYYCClGQNIKolTfHb+XsiGf4OFHoR2ESRZDlZf+gjsKQYUPn8NoW+uOp2gDT0Ot8efoMSndfK2BSBMvzFS1J3NMuFyWUdpHSVwD5kvtbbxa+EGFbA1skXMqKycGPQLDA1EgRtzApE15pl6vNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kI9fQfEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kI9fQfEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA41C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751191793;
	bh=01xoLdafmrWN1xR7K1MR/Z/aoVmDmor4YacL6RQclvA=;
	h=To:Subject:From:Date:From;
	b=kI9fQfEWM2nFKMUEj3XV451TxPSqa9cm2V0UARdSZtPpvMFF7MNFdQbXPqs30fTNn
	 nUqTdzVc1mWWhEtiM/aRKm5D9Mc56Ga9avFXocRqQDXb9wXK6c+1LuuscVSUpK07yT
	 xV3C8LRcJiuuE0V5/WO8KKEFx9OGD+og5wq4nk1ar6T5tENqhgI/9InlwBF84cxiMz
	 tQb/EOO0kYvw56zElHwcuVXPW/eZMKTIr1AIJ3CSw0wRElFTqc9lCiF254D4NrTFcn
	 lH6A4Zzel5YTVY0FS2uB5pG9T4asfP0g3XACZKDkoNHhs0CY//Zc19gk2TrTTMGTHN
	 5mrR80npRW8rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F55C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175119179357.17877.5014941375619396388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30ff4622b23d155e6b1272afa84d91815e9cef31380f77d95cb12cf600659a1
Date: Sun, 29 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751191793
