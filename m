Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DF4A17109A
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 18:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713378563; cv=none; b=PC1mh8xnoNkYmxm5nsskH3KbvlaVg0z+gF52/Ew50efwKvtaMFGpOZWmyQImAIt/itC/qw+Un9oinFlpw0D1mWQ/cMfstypLjokuI67XXiqm+KnSH7HDla5yIsLto1TdFXkSBZD+zMFXmWE2obvm89esk6h3cEylKsyMIXTS5Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713378563; c=relaxed/simple;
	bh=xpisqRAsOkKAkM8tb76EEIyAJ+jShIq5FPm+eRBOWC0=;
	h=To:Subject:From:Message-Id:Date; b=e3SniXmAExM7V8As0d8YWPtieEJku6/iSbe+x0bZroeP4Ut6Bk1tw3/srNfgQexb2p/kn6JG4L+JeaNTkqc61uhgVBa9rjz/OuGEsRAOe9OaklKMSHB12meDUzvd0ZBzGSJCqlVy80NMpYbFRKpZgLPDRfVIkvXCTCcHfVT9+ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bj7ebIWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bj7ebIWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F14EC072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 18:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713378563;
	bh=xpisqRAsOkKAkM8tb76EEIyAJ+jShIq5FPm+eRBOWC0=;
	h=To:Subject:From:Date:From;
	b=Bj7ebIWtqucBziCYGucVcEAXSxRxMljXTjjAiidRqKry2KLAOl403g9BLWedcvwQa
	 0PTw8AoHz6gOxPnCV8mjqIbWiY+rOrsEzx35deWEysf13ykZePuhs0zNX4TizNxUXR
	 LYUyHQOQJR8pkW1Zs1QUT2XXbpRxaVWgwCiqHOMFSpuNPSh72011E81rupcdyZ7jwI
	 FvEpJbCi2Gt44tdWq1DqcGNeePU4SeUUdW1Ww4uwhgo8YtbUJEppW8OLmyzA4r1izS
	 h894gMNG2w9Y7qM3Q6oONHPOlc/QOY62SRvxb9FExTOiCFjtRapppaOaHOc7NKCzx0
	 2ayZq9IaK3ZXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2EE1C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 18:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171337856286.15746.4988637728429003064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c9dd12f8142736534f1c3ae620ef2a3feb4833dffd14e4a8db2b7c2ad0a2c79
Date: Wed, 17 Apr 2024 18:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713378562
