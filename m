Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2408D48CFC
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759480194; cv=none; b=ssXht5Q2AT8yR0u7asO1IbD8BXLOgr8Bs60vBd3MRqW5OGndFTjWXRgSZqGtGz22j2xVPAijPCnWytWE3GoVcND2jZtStemJjbql4bzFOhCVOBKHK2hI0lb/xR+WeELhZn6laSnsXpDlmgpAkHuAT6UjSFOGtqp2B8cL5W70iJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759480194; c=relaxed/simple;
	bh=wsDJAfno9kmVOE8MsDa5YJO5Wq70A7ouCxXBJZY3FGk=;
	h=To:Subject:From:Message-Id:Date; b=t7THygUiQil2Zacn2c3w6CeJwd7w/rf8+pole3DWSOoyyDqrpfJ371NYYC+2L/hBlu+WlJJGLf9UOtfK/ifNdRaOK67L+HXLrZ51+PqThs3PlGbKjkGBAPBikPdzueHiavHgxsrtlheCe/NTpgQTunuPgAPBBu4OwPG8kxps58U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojsWD59o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojsWD59o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48CBC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759480193;
	bh=wsDJAfno9kmVOE8MsDa5YJO5Wq70A7ouCxXBJZY3FGk=;
	h=To:Subject:From:Date:From;
	b=ojsWD59op5ieuRLby8sY901mEwWoUcSYtMr93MhKetdjHyCHxdL2CxC/lK2b0NiVQ
	 MOwvu+obZLEiqWsh+VDTLmn5GSJ6GRyzKGW7fd9lXGdG2NTQVUyXB4TD0UlP1nn40O
	 MTcTrflzK3mjBBclUTIOOIi6OnXeW60IOoJZSwkRki/42K8/vivcqAWM38oJDduxMe
	 fiEBjstDfT8H1d1Hbsq8Rz4Ti+ng7b4ujL+Njpd2Pa9bUb36oVu43nkjxQ0qOVipAz
	 19uXjYn+aXZIaKNfnzIQ2yhdrFgfNQELWoGiVAMUWZyVqys5gDunAeuuzIp5QnNBkq
	 oqq4XjDfh/nUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D0DCAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948019358.21651.5724987828060131511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 268a7535946192a509f1a9d8cfc6db6a3d8b2b2f367804e25c28a8d70af739f1
Date: Fri, 03 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759480193
