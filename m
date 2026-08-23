Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F0BA2D322E
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787493634; cv=none; b=QSdIxeLHYRVeEqooDnStpArF/0xWVCsUT/EZ8BCllpBmSoz7krOEC1RwB0zgaGWxNhvtHHWBGTZRJYQtYinvdR3frHy4T0Wmnwae02y63KDm9xNH5aS0VvOgrP2Lf5Iz0Oql2J11mSY5Slt9eceqc/HKf3RlA3vXZBiZRzScbYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787493634; c=relaxed/simple;
	bh=m/9JE1yns5V+WFjCLvNxJMl2Wa2WCfXGFsj4g16XYE4=;
	h=To:Subject:From:Message-Id:Date; b=lt+iUY7ehg3eUJ1bicU3Bcg8MB+zJybTnm/BfQUYVxP2Y/CSGGIFjxPNLElRcgCr6Prb/vYhhM0S13PjlQ5dtsNel2YLqF2zRwyRDhaIuQgXsDSPiN3mw/yG0WBZtNzuL2bE8ziR6sBhQcAIvLH2bz1VWmEXSAdUZxeXVvV0Yyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJCRQuWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJCRQuWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DD5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787493633;
	bh=m/9JE1yns5V+WFjCLvNxJMl2Wa2WCfXGFsj4g16XYE4=;
	h=To:Subject:From:Date:From;
	b=bJCRQuWPBfP3UvvT5R4PgWeE2L8RBrCXYXK3GwNVoB8auQL41CSpwUNfngM1xFVd8
	 pL0893lE6V9s/YWFahXSE2K46w4BV8L3HuwRuXjVSzzln9LZumDGAatXARqKAbIzcL
	 h9frpeHuNEk8n4LNHqMHuBPTisJG647LItdUtl1YX79SZcz7NnZ0lIyGKWZ2JQjjsJ
	 0X7iqJ0cW4R+1M2wAfnOmmu4SzSbT2gqs0AvTtFviF2Vw1wY8wxM85vwmTXbI6ui1W
	 BEVDmGI3NMcxKwsUxwhXkRWyWb5dGsVxRoFp5iJyMQluZXgiYP24eBPloif+6oZ7MR
	 O5yg2am0PJJzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DE0C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749363368.24740.6733218563336254138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68fa780e0a4981e583c4dcb01f4dd0131c6f474fcfc50956c029306d242540cd
Date: Sun, 23 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787493633
