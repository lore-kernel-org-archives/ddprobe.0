Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4487D4BCAD9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783007314; cv=none; b=XPcmuDDJAIZ3q2rh2+vSMC8PDC4jKITnmFrVXgGR7wxuM4xx6vUBKZqmhCVxibp6kDemXkkvkAfe2a51qrwbL8sRMF53UdxKkqc9sskk7qYe2InO6+4pHD/T/kNMRn9oddIFONrJBt/ckX6TyBPkCQ/zwTCMeVM1n+RKJkS8Mnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783007314; c=relaxed/simple;
	bh=4IpXQxiIv0h9VBnao3ZaEvNGorn08dQJ5HbYLC5DYXo=;
	h=To:Subject:From:Message-Id:Date; b=OSof2GOhKPGDxqQXbLTUEDekC9CRjs/pgc2NZwnBbOONSoHFUt+A8yO4vohZ43trlrfKT6XAkEsDNckDuEO9t91YNQLVTtu2iZQkXfhx4THy3SZHNwl8NxL+ZcKnraqD6qFWc8SQvQfWG0I7L7F4Q4DUky7dGlkemuhxqakcP+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OeMDMm4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeMDMm4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DA7C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783007313;
	bh=4IpXQxiIv0h9VBnao3ZaEvNGorn08dQJ5HbYLC5DYXo=;
	h=To:Subject:From:Date:From;
	b=OeMDMm4LgAAYS3PP61FZ6mfjKn2D2hOfkBImXavKH4TXqWQtnNlaYoGWQX7RPKt2C
	 BdBw1Opj7XucHeejFSMgmhj8dbRp2Mxb/FBzIxr/E2SvemSRYSjm18T58GTZblHQr3
	 70KH2ibVwFUZxWcARqabhvoDiJ+/drhQNU9AG/AkNvRA8H+PCk6S4EbWFNuaI9xcG1
	 w7I00vGC5AZk7LBdYh/+9BVkg0k/3rCaqAec5h7xx0DnZiJbiRUrj8l1URs1ar2tbO
	 eSGrOkloOvbetG278h2icUuMhRSRhuEWc2ae4ID2krm9/87S3Wwi2egNjGdYooOLzQ
	 MsMiCdKjtrkeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93DBC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300731368.4445.7301140738640074221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d930e8212e411a1c1606cdc8ee1807c693576280e64e466c9675b8a0d1a77eb
Date: Thu, 02 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783007313
