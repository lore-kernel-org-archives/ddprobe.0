Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192ADB665
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734575154; cv=none; b=rXx/ZSYmHdoXVi3bozMl35+oES/Zpl0LkBb3HBBCvAJWO51wTyaW9euzNaG3o/rRj/mO9K/yMMpjBcaZHx2THnsXeSD7H/fSfOKQ9Yof+GypM+NNC9ry5IwaSMLd9I5evzXYravF9zuNN3Q4/UiYC/epLC/28ARJ1gyiKe2JyuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734575154; c=relaxed/simple;
	bh=KhImytI8mT3NmdQ+v/W+OC8v2rEE1w8nXIl/rEl2gdQ=;
	h=To:Subject:From:Message-Id:Date; b=PwJ2IaYm/v4zY6GdhOCAKDq0jH0iRMaJ9Bgpz0NxoulkUa1gKf26WFcr2V5MIU4Gt6jyIkAk5PnxEfVgMeJRb5kgOkj/L8dojwREunZ3q2Mg5keZVMvuKl1HOzjxa823zDd3IslFDNf/iYOG5cdMFldyma/wFLXM4po48VTiyow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNN5mUaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNN5mUaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0A8C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734575153;
	bh=KhImytI8mT3NmdQ+v/W+OC8v2rEE1w8nXIl/rEl2gdQ=;
	h=To:Subject:From:Date:From;
	b=CNN5mUajRIxhahfgqDEIhhT0+cdu3PJfqtYyWsUNnBX2gbS7wL7bRGGXHQNsvLRx8
	 3B+7iL7FgjHi5n6Si1M+jKPElOtNRYhFSF6809SJ2mco7qHeZfRBQuly6VGZY81H6p
	 u1i/YNmFiF23YZB8rZ5O8wCBvak5/O1ylB18K6Gmn+bGD3xCwq0xlcpzODS9E0VHwE
	 Ir6zvOkCBqosARl53uGgHzR7JKUxEgn/0SDrl+3SrMSByZHlwEvrRFDC/Fzw8ZZRy6
	 DabQKq2w+UdCo8ssttZHdnUNRkmu1YIz439XnmWra5rk/WWlBViXzdVlHhma4rAQId
	 80P2FzqOmfRyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9762CE77188
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173457515359.10003.9396997868164781804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf84c5a180fbe083b2f8c14c94c4b2900e502f9efea692c3266ca810cc49f230
Date: Thu, 19 Dec 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734575153
