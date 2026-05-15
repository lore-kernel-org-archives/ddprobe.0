Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5167A3F7AB5
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778832634; cv=none; b=Y3xLqXQby7af2qWUKUhtYspuT9TY+CPT2RoQ5I/W9htv6Bu3V4wIUGehiJEzV9NLsmxDMUi2e1gXPs0dxuYpdUpXak6TymOfgssi2PO00DZwTFGh/TyC7/2ofZuwpPNlat8CGxyKH0VuPxUpNF4WmrHcEFvhLpfaPqbSTy9t+WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778832634; c=relaxed/simple;
	bh=QoSPIcKcNic4erNyMG3Gw6355wQCHk0LlBqzgsSc5Kw=;
	h=To:Subject:From:Message-Id:Date; b=mq3wXJbbChaBHEjpQbjcN29KXU1NbIahebIDvLoMs8RxhI198mJa/zDlnQitUil/C1OGFZLGQWBZFoYU7qRlqJqffX0cFMWW/oeWCpYC6YiXxUwwtfUEUKJckJ0Cx+qokCjj6Op+lE0bvS7V5r28wa0/3barJmZFykKUWWv2By8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNmw/XFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNmw/XFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF10C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778832633;
	bh=QoSPIcKcNic4erNyMG3Gw6355wQCHk0LlBqzgsSc5Kw=;
	h=To:Subject:From:Date:From;
	b=kNmw/XFx9j/OHax2VZAzaSuw2bnxqZIKkb0oNYl1mbSBiU7TcPrFpXR+8aQrc+yts
	 5Xn4FYK262lx6kJGLB0BYug21phxbPwT/3JBXIZXPE0oTUu+wK+vXeuCOpD/zqXmD1
	 FTezMKOybp9uggj2GdVlfFk9UxJOD+7e8TcR3GyPu5GPAEMEFdvtorwm4kr/vPmNMz
	 h/qtgwayDff0DVukUT0aQGzzA6ALjFWAS702vYTsQ16W+e6TKCJacYDS/xoztopeJH
	 4azhQOKEwBhHhfBHfoty5tdCYnf/wTcL/U7/+I7Og8/4Bh428FoCXpACwg9RjZCQ7T
	 xr7IrNv9yDzgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC40DCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177883263369.16688.8794848078177096697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd6a6f82195eed4b78292c3b218a55cb60c228e1988d727567055ae1ffd3c88
Date: Fri, 15 May 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778832633
