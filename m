Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3093B30CDA2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780748674; cv=none; b=bEDo+odWiDxgTiZiIivj2PwBTEKHqCoDKLgNUXDw2GL+9OAtqP5iV683Yv6+S1TNtpQa3wqAD74tk3TLhCGns4Azny2PLWsnOVmWVdROhT4o66dLsXQ2EyE6af8oPnUp+2zMjdISxeoZkFJnze6KuIEc0MsYesYvxB6Z3rOJziY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780748674; c=relaxed/simple;
	bh=3f/jH7d8q/7mVtU2qYluN+hl9ey0ulHaz131bpGow3U=;
	h=To:Subject:From:Message-Id:Date; b=aoDgOY6KiontsufCR4+ClpMO73GkF5u/I3dIdS9C5Ijz+Qk2Ir8MPZ1CEcdBVMBIz/eiodL9cg23l+1aGc8DEjuelt+KTM/Syv1eIdP1wxPh1n82/olS40+fw4DtRV1G8578zAPZ6GXulLJAAfRpQPqpkEvQhCGPQzS4PrXNDjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrYD1k2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrYD1k2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D1AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780748673;
	bh=3f/jH7d8q/7mVtU2qYluN+hl9ey0ulHaz131bpGow3U=;
	h=To:Subject:From:Date:From;
	b=FrYD1k2IoyHqI7QXlMQcNiJlFsbR4pr1Vi5NFA4t5UJeWWkP6BtEndRVWhqJBZlxn
	 IYqjG3oESTIJo9v7ITqbps6FXPv6piC9MwJ+hv3+v7Kocz+rqCyG1qQS5Yz5PSujlM
	 Cd0vPWkSuDXB7zltV5UTfHDam/yyiBYEEtmDDUyeeNe/93PbQFqotO8Nsbc44RiF8h
	 isbmnAUgZ3uwnJ/WOtGD4UQYMlVE0LFEE+P2IHDptiPyYyf3j0Zh3vQGrkR6Yvi/aC
	 EAYmjMT+LqyeiDdLk5OClB6PpP+Dq32rpv4GcC/cncNnfhhffQ4T7mMuyeAST1NQ/5
	 Vsb6ieyyzawXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E07CD8C8C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074867368.11680.811521281205629775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f605540a30f281f0b88d37f1f7ab942ba79725688744e4bc1d11a57c5dd16f
Date: Sat, 06 Jun 2026 12:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780748673
