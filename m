Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0519A36119
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709951897; cv=none; b=FihIMPc/gvzU5BKnUT8QYf36r7GgK/nC8lcvBfJ51AiYrtP+f2Z3yWTj7NuLpFSLYxUlcXcpVV4uOtJWyp7RWYHU/6GyKiNlQAYbOWbuvfD8L7yojFuyayfdGwh6V3D9+LqGMi192iYdRgzffieGTjLy2isR2Xh8FOKxj9IMzGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709951897; c=relaxed/simple;
	bh=N3aWpDxdYiGIRxQzsVCnLvMU6eQ5NDnUDPbKidAM/Ms=;
	h=To:Subject:From:Message-Id:Date; b=pTKsehjEYaRORy+qq4OzPjRp0BKKlFWd0MpcUfKzfyhig0kRpNdmw5Xoe2OVsvqqkku1EelIAxnHKA3cyoQeED26a0GC8Uy+b9L7o9qSNsBHrMH6/Wz9pjq6Aa9HVI/vDVHdIvLrDN9v6dEYIJ/5JphTW5XHWlteChmlLSa4dMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O14jtMor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O14jtMor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F191C433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709951896;
	bh=N3aWpDxdYiGIRxQzsVCnLvMU6eQ5NDnUDPbKidAM/Ms=;
	h=To:Subject:From:Date:From;
	b=O14jtMorsoxqBEgAcFTS7jd4Y3raOw1PPU12WEWECByP5Gj+HwwZnuAoCAySxofaY
	 9NZ+ym8GzNngRQ0JIzi2Gb0+zgMbiVtylse9ahZQ8MLT48u0ytezWjA1hpuxfcyWJH
	 EI4H52ETCiHXc/Nqp9RMfWkwkhCcu8Zhcp3piZHQMFSJdnEyBP9TCb52f8TBzdyD/N
	 i5Do4U40AttaRccFs/UkjzJx2JCWlYDXYQVK1tutuMNzH1Si4kk/XAB2vfveGQQtbU
	 0veAsV4lWHEH6sgpcquTXIF+1X613NZnv96Nmv2KfR0QvE+BDXoiFbBA6AzoUPyyBJ
	 F7F6ljb8Gz3Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63488C5475B
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170995189637.19488.7130159559912248654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068abbead0c23be6e1509b6cffe87226fe12fa5db7ba41f44e447f839dcf14b4
Date: Sat, 09 Mar 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709951896
