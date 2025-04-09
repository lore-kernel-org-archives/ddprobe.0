Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E89329A2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744163395; cv=none; b=Ta2+C2wAqT1+IOBasDO57OuOSXelZi5WEIBOThvkoB2thy+PXbXoCBkZpbo6uqL/WGtlz6w5iat2EQJw3I3/TAE6r+iFvWn3CQg18FUbakxNkc1B5ofBUr/5IowvOm7QA66yN/E58k5IyRhxW6AfR2d35pjta+l974hvNSaUdGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744163395; c=relaxed/simple;
	bh=gNuIQjaIs9sd8BLCCNcSphbbJ+xD99DVx4laCsU05k8=;
	h=To:Subject:From:Message-Id:Date; b=JdqraMHdw/VG93Mulhsw6n1iUdc4SZVZeqSmgM6+6GAk/5peybdWvKJNxwIDfTXg9XUyQXqUGIT109ouux6GF6kZYl+SZ363ILqp3GfQNZG+Z1V1hx/0sPtxXrH3MCVyrhcIRLGWPAvFslsloTt8w197hBrrRlB2NtfsB6JYUO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWVCtTVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWVCtTVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2EEC4CEEA
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744163393;
	bh=gNuIQjaIs9sd8BLCCNcSphbbJ+xD99DVx4laCsU05k8=;
	h=To:Subject:From:Date:From;
	b=tWVCtTVRz4IZHBys2e1Nj0VFf2wfg1Jk5ohiQ6cIfwjwNbo73pAnixeUaaUCo7f2D
	 PD2cx5bR7itlgWxq40As0C5UZijHye336iYpaKuaHm6U4TfFbFQy+C8gGooQkUo2vH
	 hG4jNjRxhbrkoFZo78nfQwzgreHxtTOo06cQgGWW7DgQ0W0cDek29KJH6ILoZND/yY
	 xVoDO59u8YIBGkv6bQO0XiPOzvDQD8TLNf4YUJJpN4LMKKidVTJkoxAC5T1IaANj8a
	 3Dw32p6q+wzohczNz93UCYegG663p0Ur/zT5HkmLC8rSHIv6OGjajXrJ21HBorHfN7
	 gCYbc4o7V4kqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ADEC36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174416339361.21112.11438818056531661796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70003af67bd286a637432957d2a178845d7ae0919ac76117ad25f0c521cf8c2b
Date: Wed, 09 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744163393
