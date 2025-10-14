Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34173213E6A
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760410194; cv=none; b=OKd+0jtoS2DPA5bszWAKTJ4aySxb7PVHiP3JZCBsMfpIO+RKEa8FzacXPDVBDIrlfXGVXBLb8FZe5GknrB1seSHNiahFvoOwzd7/C9GE9soPRDIalW18C6vx4aHQfabPhaLJ4ZaK9/hTyCw61f6+D2p0caIFl6s2GP5pjdTfbWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760410194; c=relaxed/simple;
	bh=6gH/R/KhhUXCUs1VzeZB4nFyX5L2p/Kd0qMbD46CQV0=;
	h=To:Subject:From:Message-Id:Date; b=a6b2slMKj9vEprnkBJkzpq2k2EBWEvepXRuz101T9uxGvkSQ6aJlSJq1/DNaVPCJ176qCWZc7VFfQ2mZUCaoIidNCR4XyG8I2evNQQ21gODnJxIYD6yVNP5umpbGDUNdFqH8CU/yqc+Gjeos4hZWw97djHyhmB24y6+SU1WO6gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uef8kOiP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uef8kOiP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A537FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760410193;
	bh=6gH/R/KhhUXCUs1VzeZB4nFyX5L2p/Kd0qMbD46CQV0=;
	h=To:Subject:From:Date:From;
	b=uef8kOiPqgJarY97KigmbxyZwg0RmnUGgp65fosrvNF1L1tUk5XdLMqp3wqHKd8uM
	 9fc0oEyU2jexUd18X5NxsOPY3UhRZ7nhAGjVhODuycaHSSwnDYJKHambtV1S0buhCY
	 K/58p0FQXHbTb7MiLISkSweP03E+p0yFfIMjwAVVfdUtX6FFMP1VT8ububawlD2j4O
	 +YdCbzgaGcH8Wjq/m/PwJzuUE4zujehxYrPsQY/NR08H9k+34iJMIsNy2Jts/uUXmP
	 DTyEQ3IOzaWEaAtndDF0A0hcHMIJdD9sl+vXEw4stvWrGaNpVPZJ30lQkkcfNZdmZN
	 rjztKu8s6aCZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AB1CCD183
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041019357.6617.5707658665621742965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad7c228d62f26a150ca75453ef3b9efe9367d0485afd810ef52bdb1a793dd44
Date: Tue, 14 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760410193
