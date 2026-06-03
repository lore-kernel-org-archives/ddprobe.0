Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2489418871F
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780518274; cv=none; b=EvcNs2Xsz82uKD00AqQpimlLZ0vNCA6GTSNTvU1gT7NsHBNIrK3DiPZImiQIQIe+lX8z1R1DKufIh11WF4b+1CxPZLjHpMEWLKmW/3dKgI8F89AYwnrvjUnzWm2PJuZDx2b3EX0TAx8RmU77o8injD+7K+PRNVFBEit1Rk7kCH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780518274; c=relaxed/simple;
	bh=QWOo5XmbN+h17EDPx2v8qe3J29cFguWUYh7yzl/hcCA=;
	h=To:Subject:From:Message-Id:Date; b=N2j3Pc8ZW7U45rmR/6CP/nhdtgc0M9K3Pk2HdTdhXZvFUB9U1jo/v1pt9Aqe5ESy9aKUUJ0O7slb1mEe71CGX6wC9JXNC25vc4X/bmRZOGP7mur7tD2TAY+XH7MduDEW5Nl52Y56aN3si+VwUYT5fBFXT+Lc4gGOJAInJdCQw7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwLXKYAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwLXKYAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A05C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780518273;
	bh=QWOo5XmbN+h17EDPx2v8qe3J29cFguWUYh7yzl/hcCA=;
	h=To:Subject:From:Date:From;
	b=iwLXKYAAnbi2ItEe2iZopN0BuRuuRJgKQB/TWt04uhjp9EHtMZUbyTk9Z2djpZw4/
	 FC6Qx5HC0lLisPC8Vlhp1AuPQPmXrwBFpg78c5k5KozFnLhUjaZvlSkFBGcr50r2Fh
	 ALiVBotp8h+U1Tr7YOri9COyRptYMU+40QzeRMWNa3OKLYP2J6TPNzPB6IrmTUK7QS
	 ihNtgwybnEt0VQ3XVK57wG4pWP+MKJYS9mFEwb8FVH0q+HyuJRBkRsQ/qdjE9icGBh
	 7/CtDTTYS6jL/Jg0j3GH4ENAdO+gvbEpu5j36j2kkE+l6z2w1tsZH6JcxeW57ytvge
	 Aymqq7ucBQCWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CF3CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178051827368.886.1145840091834530888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0694cec6d306902c4f8237f3e529cd9fe87e57ba72fd23bd8fb98895fc2a5cef
Date: Wed, 03 Jun 2026 20:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780518273
