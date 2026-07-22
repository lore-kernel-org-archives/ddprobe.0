Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B19257851
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784744974; cv=none; b=NP/AIHvQqvqb5qbGmZPvPWDBowsvQ5rlHiHkz/eRgqAX8yHVAb3EgUA4VLftQ24DMcmUXXPj65cgeBBQSqz5tFExlQ7vEUmVhK0rzeWVUOnHuLd8jqV1JABqpIoC2La38ZVsL2jVqkg7EJXoGqbNfC8XUJrJkbBST6GI+b4K0wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784744974; c=relaxed/simple;
	bh=ml8BzVTCuq+ObhvaxDOxDS76MpVE19V0z3RFGkoPD+M=;
	h=To:Subject:From:Message-Id:Date; b=EjrPDqLdbqgI66Hks5nJIr4F+YOD2fI3ZkmjRDlIwtGRFigwKkGlG6B1/299LEsUYGWiG/+KRwUu/2NsO/ifXx6/H4mR+4UelWwBviWmXufXPLOBSJNLVYuqCSYJpmU6hrrCVxj6HSDLxAyKd7tds7aVaWSYG7jl4IMlO5Tc0FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caSSpMWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caSSpMWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA807C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784744973;
	bh=ml8BzVTCuq+ObhvaxDOxDS76MpVE19V0z3RFGkoPD+M=;
	h=To:Subject:From:Date:From;
	b=caSSpMWh6RNcYdsBWpOh2QjJQsGrdYlc3vTta2qM9H2DiKscz+kvbtiYe1n8f63ug
	 g0RZi2mRjGXv3GAHUtqHBskIWqfLZ0/2qy/6mJz8clS0tUZkUXYMP/kjve3TaWWKjG
	 DBhliG1QEM+DclvDjc+mtayZNcJXXHafYbXioaVib4+fwGQpzs3tjsADyHypqNSEyy
	 WaXGCQ0TdhkYn+s2xsSndQx8WoXoni5cbjnmmJi+SiU03WzM+F/X7i+3bO8h06kWrw
	 PxpN3kEBDIAMTE7vxbR/ghIB0zYayLFEaMXuycV2cJU1q2csfRNmXPgxniB/dJeY2o
	 ojiUVhe8A6KJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FC6C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474497371.26641.4975735848938985417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd637194baf2db15dd6160c056846aa183f6a087f35f2fda4cbcafefb46cdd3d
Date: Wed, 22 Jul 2026 18:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784744973
