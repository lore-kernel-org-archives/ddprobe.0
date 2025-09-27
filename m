Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3ED6F2F2
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758980994; cv=none; b=ss1BkXJM/TGDto1s6hddb6fLUCAvirSICDZj3ypWNFzSC/tJgLh8+b72YYxLs03hEz2ShiGIwbonLY95LOtA01eKkBveebCJBsI+8oA4bGE1daSal356Gy+iuSWU9hT66oOZkkIv0+afWLs684hbMjywSCx09la8HqIjlS5Mac0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758980994; c=relaxed/simple;
	bh=biuGqGeLN2vCEclhGUPCL1ixp2oJE/sz1X7h2lc3n6o=;
	h=To:Subject:From:Message-Id:Date; b=ihdqlliwZPnj0eKJpc4he4GdYreNEPQxNeyclxlG5eW/OW+NB7YS2RB3CZaGIcD7LX1qjJ11DSbocSyMmcMCWoD0R2zyOO3ZUoVRF8kqiXxBebLRKXG7ptgZB/i3ejEBipKKLrNBZ/JYTjEDsk1j8lY6B1V1x178tRoQRHwhOYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uD5Q/Cqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uD5Q/Cqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5658C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758980993;
	bh=biuGqGeLN2vCEclhGUPCL1ixp2oJE/sz1X7h2lc3n6o=;
	h=To:Subject:From:Date:From;
	b=uD5Q/CqdwrhDm7IZbB/BxW2ikF8DbJF3VuBswNUvz8yO511+T15IJG9f9PMra6GkM
	 aSWz0orbNeswbCgkCHbozaZpVn8hXqKSzQOCsgVg8xjlz1i2tmD0ZqR2uKqQtKKcj1
	 wwsWreIhQ0XdMy3Dqu+rWtJs/4fo7ecFglcjBhrZz6faR5I/kp21jr8LD23a+jQbBI
	 ogxppm5/ydsUnCeRjZaMqa4tB6wScYknIsyCstH4NXZ1JbYyHaBYt3jDfrgvcRw7YX
	 RJxroS+XJ4f73Bi6OFQlkdL4Y8izFJAmTcqi7tj05GD1rNPEaj1sItuKySFBBlWgGH
	 uog1gtpRPlIqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95067CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898099357.12580.8459026980624353257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389e5829d2bace8cbed04e751611190ce83403f4e96f7e0545f6ad7a2f0d9ea3
Date: Sat, 27 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758980993
