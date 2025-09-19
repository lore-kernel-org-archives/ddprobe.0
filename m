Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EBF29E113
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758270594; cv=none; b=k3Lgjh1Ir8ORbywRnrz7BFgkwqJn6yX87WcfgkHqjE89PfNH01U8nzvfBYqTmffPkd/TfBXcK4jJk/pRGs9EN9+qLIys4f6U58uzyxE4b1cS8mLVzF1Em+re6b3PWJ2lPYHSCK/KH+j5QkbEDyIh6JQ1AT/GxIw1KPEiruyTunM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758270594; c=relaxed/simple;
	bh=oBBfYpBq+KAhCUOrouRfnti0CQJUL2055Hvu77KfC6Q=;
	h=To:Subject:From:Message-Id:Date; b=OR2ef1r8XLk4BGKBiQJGCabSZ/kVsN/krzE0EiiTLxZnYjPwmVC0x4fpKG3YJe7sgHf5KyIrlK37jHw9Alu7/S2SU8hFDeO+yg3aXM/1Xkx3+ymtW2wHu66qR+YQLN0+OxMOwguf7VxJQcm3n6y+jlaLlarVXTke7flEo4DFSgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTyzBqxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTyzBqxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE771C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758270593;
	bh=oBBfYpBq+KAhCUOrouRfnti0CQJUL2055Hvu77KfC6Q=;
	h=To:Subject:From:Date:From;
	b=LTyzBqxdd38TJbgzMCTsOUhZPlBBuczI2k7FsS9GzUSAURJVyxyqxFqNECyKYhoCd
	 stFcHNAEAN0J1X+DEQzWwsgaB0hjAO49GlRYSrvnl12SzjjuxLWGr+EsmKT6sT5vjp
	 QYBsHbV+f06WzRpGPKFtAGY4SV4tWdl94aaP30to/2WYMLYfds0UGjjs0IOaY8g9Ob
	 8INBVEmB3/nUiEIb/Jxy/3GfSP7vDrAhNWYnGW/gE55z6bDqMjLa47eXdceThyQqk6
	 AkXvMiNkh2kTNEzKl/F2sJ5gCKJyX/GCl1CLjwWlQG87jLIzB/ojOwLAoVmr76CsZR
	 nVJikc5sH13xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6E9CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175827059363.12513.9186576301560597212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e129f107a111907f8733fe7fca4796439ef75621e7fa996307bc2c03bd565f
Date: Fri, 19 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758270593
