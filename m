Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312663DA7D7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788167434; cv=none; b=kXMZcE/QiurJMOuRIl7LF66wqhI+k7wEaSKyU1rHeuHrsYZeuVjMgRCM+4CGPodnV6kUz/j/BTvrUupQHtCNXus/nLinBYUKHNMGYask4H6VEqy4ztFHbf60smENkClsgPvm1F4ALplol1oV41xbJnfEJxzuw6D/GUbcc7YaUTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788167434; c=relaxed/simple;
	bh=IcPpy77wfz2LjjgjpkF3vkaMxf9RVcC3O3EPzy3iu9E=;
	h=To:Subject:From:Message-Id:Date; b=Edly9X6+DZoMZdXMe2TrG1gUJoc8SMPfWb9O3JwWBm4BLmFEDTJgTm2D3BT4DaQimSuPG3al7M5h412EUawCb7aPciNKFg49VHlOnigElxU/8V6fY1AeFP7Dj3PwThfnTs/EmGlHbEMUvXYlECBaU2zuC1x9HpWDqRe78mwAGjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbdpeXe9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbdpeXe9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7367C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788167433;
	bh=IcPpy77wfz2LjjgjpkF3vkaMxf9RVcC3O3EPzy3iu9E=;
	h=To:Subject:From:Date:From;
	b=QbdpeXe9AMsuUwpFkAxMdg8pSaRxt0XmUaetsyAHSqIadUDXQvcRr4wBZ1Ob7IR1M
	 1Qrn7Z1ZIUyQbEQWn0+spjFHQEZR1UjbVdmMHGY9dFLfAv9MhSPpxNqu97TQVFGOa6
	 UsvXjY8arBz2smGCCsMHXmBlZZEMtaBgJ3F5g7Yo4sN12MjY71R3/zyfyb1EYQOoog
	 HRLAmZ/URYzla82x0Qm5gOmtK7s2DYeAkR1FsViLOjbvMqyTRQTe8I6EPbrs166xW5
	 O3c9+mdQH9qwTzOfuuExbBdcjtfQ0IB3QP3YRdF7cgQizMCyHZy0pbMo71U4PChrBQ
	 6fqP4UfQSQrMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF922C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816743370.7197.4490612247653483929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92039b9e592d0c5ef46019438a10fc97b25539ea0348baf826a3e3df6becbdce
Date: Mon, 31 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788167433
