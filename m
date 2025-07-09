Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3CF26B747
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752043194; cv=none; b=JeN3QrbG5tAs8lWapHujLlA+u2tRbTgjy59bT1IqrzBxPjLv5dj0D50LVJlgcXvFKfQrDBxdRDDI712szGzBx7kF8n0fxkCY01Frx1DkgsvndtRcgal7kGFdiSOToRxBhgwdvMVmZR5yGml0x9JwNbKnDT7Wjzumbb5FIUJBmyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752043194; c=relaxed/simple;
	bh=Xhs5iL7hqhgZHS4oGghJY3oeP3dGXh+fB/76xSnDjd4=;
	h=To:Subject:From:Message-Id:Date; b=ppBZVlZbExicDO8PLYa7aapvzg+iR1pd0j4wOnCy6cEHgzKs1jzjNuFWY7CI0hy0ng2/1F+tqIkcWuJVvY+FIuXumOmFgulVvG56huAZEM4zypFkyZLAaJ0d+xcczabiEmi8LspaR2NnQB9iHPuCTpvwtxH78ngFKNx+PDIfWko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anpBDSJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anpBDSJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EBDC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752043193;
	bh=Xhs5iL7hqhgZHS4oGghJY3oeP3dGXh+fB/76xSnDjd4=;
	h=To:Subject:From:Date:From;
	b=anpBDSJqueZVYr1jHCgnvCEi9NmQJUu6Mg1A/WeSjoT7Iv0KgmEglhh9ovhDxEiSA
	 LBt0CtZplg7VZyKOf1+eFYy4v+hHJ3TFI0/Bt8ouzPSyepmv2t47dnLnFGCLm6td2P
	 EBUTo2LX+13eCWXTHX40FH/KBfLoZkmb54xd7QlU6QfDfimH7LKYTEz4XxLB1KvoHY
	 oB1Hb9F/aGAAxZPFSGOhDOHF/iIGCwN7Y5soZBkkSqgS9drNnX0snhVq5NlKOBafAz
	 U3mFclkgJcrI08VS5TeM6LeddUnYxt/1r8oXMTfIBEiDnmQE3CwdgkxsodqdPZb9K2
	 mxfj2ltfPqzzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907DCC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204319358.14834.7349096010802394710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a7eb3691b267a4c1b4ca314392e87824c3fb79028c5f6d7e6bcf6ff49ed0d7
Date: Wed, 09 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752043193
