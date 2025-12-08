Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220E579DA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765196574; cv=none; b=bwmhxOx8J1r7Tew78LEdB7gi6uZlt9HjSU6mtH4B2oijs1+GCsbZachkj9Tj4A9FJEoH4pewL2GANLvC8mX2KgmiZ8Ld4qKlRkum+ZCI0ItLldeRvM2qlrvwx1loYiVIyQhdzARbrktCuL+OZ3G72If14SysViDGNEkeZNvxrvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765196574; c=relaxed/simple;
	bh=fgUaU5PWjJR1j9SXQU95USRq8YfDPqmO7nC0kARsW5E=;
	h=To:Subject:From:Message-Id:Date; b=VLCxHG/WaMLL3nVOk3fyrSaaxM7S9ibg9CwiM8UrqkENBb9tgRZ3Uu3l9R0vzovBgJK8CCgYgM/Rn9lswFhFNVpDUNamFPlw0IFX1jKeOsL50Q8mBIpqXCqdnrB/y9sOYJDU9+GTySEcM9xxgDcej7a9YU/fT/5io1cbADbVreI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzcE+efI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzcE+efI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A28C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765196573;
	bh=fgUaU5PWjJR1j9SXQU95USRq8YfDPqmO7nC0kARsW5E=;
	h=To:Subject:From:Date:From;
	b=nzcE+efILG+FTTNajRt14jILJAjsL6U2/ioGPV4ODfnc6uZfiD4d4wqmOfSmed6bX
	 gNLsVuFGEeHr1ooSTK5GIOgU52IAM7FP0xpILXfs655u++mDgQoscZGNC3FTOJbn2k
	 xhoVskfPbseciNZjefM3lboDoVRg/q7gNN0wVDM/fKmDiOkOXoxCjrln8UCtWfmMPe
	 5gJAKRSaBfg55rPNpQmlDqBM2CUeRXv2kUymLnopA4FN7y4JxYKhXRGshjGu9/cjPv
	 I3DhRfZT4XhrRpVkg0apR7c0i+stp9lVuFeqWzu/kcvH+i15RKVLndlwcf+pKiOVvV
	 LAfB6TElrZvow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90689D3B7E8
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176519657358.27311.18180022370223596948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ea543c223bf607cd21bc4c2ed1bc3f7111f8668768957c77013bbc2dbdac35
Date: Mon, 08 Dec 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765196573
