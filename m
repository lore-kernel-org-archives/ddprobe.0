Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBB5214A79
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762436994; cv=none; b=u1D2hOcqqxUHHeO5FaQ0+Tdme4BxrS12vV+XV+wlxFeVJ7cv6/qcz3xPHbtCeNku09d87jGl5NhKiiUCm8fgRq+80f+z5BJDKzVBj/pzsxs3G7GuMFpNjrNKo8mvrZ+eIvHAGnbGDwhgEqKJPIQ8WAqCj02RjJY2WLbcx/VcKUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762436994; c=relaxed/simple;
	bh=tbtVk+LaBZpl6A6PopWTvfbT0p6MPcqbs5TDxaIwLe0=;
	h=To:Subject:From:Message-Id:Date; b=OMzTOmB1FrIRedofUUk0viJyJa4QeJca23t7Nfe+qiGRZP59xiNlQV22xrE4Hk/AIfxtPXpk8/WZDzHEuMSXz9d9EhyKhRoXYsSGp/j3M40vi0ekwDdEFy3HOwoS5stbp81SJbOWaFFODaYrNcIjK/1sLcIh1jJBRaD/67BA8TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJqUDOLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJqUDOLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81C9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762436993;
	bh=tbtVk+LaBZpl6A6PopWTvfbT0p6MPcqbs5TDxaIwLe0=;
	h=To:Subject:From:Date:From;
	b=CJqUDOLb8ajh/kfjCO342bbvLL5Xhcl33Bl/vwBLuCUN3CWMKCY8rRX6FR5HXPRtx
	 1x//t0wYBusWwUv+uChrkrpIsuPO5A/fHVIaFddzWB2kSCL9rkTIOw6Jo92rdplP3N
	 Ja+wKs/5OJZPYbOodxhl8CPGAAmkLkWN3gVnpdPSQDS6c+nuUveZdL2HAKu+u8lkd3
	 G/3FW8MDleI63hN4ZFIs55lWMdqKz5hoCBCrC+O0J+EfHf0Jao9EKyhOAC1KrX7pdL
	 jysBBlXUQcdr//odx3RE6VXOYCE+ixK/s0WcyWJxPsZnfPgNBBBR0ZoEwPEvTMhQIA
	 Fpvt9EdI3RVPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9176BCCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243699358.942.13254244929308132480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d81f2b0b892031da5112c3d34e5e4faf347ec26fdcd26325f3649e8780e2411
Date: Thu, 06 Nov 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762436993
