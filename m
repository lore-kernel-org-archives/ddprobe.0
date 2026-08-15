Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B59741C71
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786767634; cv=none; b=To7tof1YbiAy7DuBPiXk+bdmKt7W3Zs8nAE76i/i4uqZEm5bMn55DQ5Ld6CSss1e+R/SFnbJbFn1y4IpuNL4ysBPf9LwHHsQJUonWdeek0oY04GAssEs3h7Nt3E/uq6xHdol8iDCJ0SRI/FRyClQd1xqNBQhBrQtmae+IvfLmT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786767634; c=relaxed/simple;
	bh=gPNc1Xh/8BFUTH48FRdcm1nel21k/BCPcxDoSIXUUAg=;
	h=To:Subject:From:Message-Id:Date; b=hVaDonHIUoPcVcJkQravJC+rPPnp8IV5JaNmmUI3wfLuEEHT88R0z0PLb9Tbr8hn4jbylouXdCnwZXyXlI84OhYbZfrbElod+IZJh3GjAEqfGyPk46CyyVn0Z95V1bovSbeck4GDnU82vM+VYBuzJzDFF3NPy3e5Cvvh1SZMkTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/i4RwpI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/i4RwpI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E22C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786767633;
	bh=gPNc1Xh/8BFUTH48FRdcm1nel21k/BCPcxDoSIXUUAg=;
	h=To:Subject:From:Date:From;
	b=U/i4RwpIzPn2P1bzCTI8XP0bSnN5Q5dVtZKSLs4SI/cL7F+MG7H9GqthvL5zVuTDk
	 8cuk5hqnpQYWmC+wTwOSZEFOZIkblKqel6byziS8pri/bsvl6MIM+spDA09IbHD0zg
	 aPQLFC5z5URUBI7M5bLO0A2hKuOyaijEoCpLCJhx8+DMG/lgKpkBCbQ6hhUvrNtYA0
	 OX01a7nzpOJiZ73acYMzrRuUzsVlHw8vAqMYE+MBLYVZ0kp6zoOmFSzw1/Ocmr3pfG
	 uCCn7JzbLYw4pDDdJu/fAFtIsczsagi7sA0BdIAMuc7CeI3VOP021Syo4MC6FCxBJb
	 DWNhtwaDCvtPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AD8C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178676763371.28502.13118213627694441758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8494fd485f32f11880cbb2cc9b17c25c80a04e4afaea73d85dce0793d96442
Date: Sat, 15 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786767633
