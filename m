Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1C82F532C
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763301654; cv=none; b=AbXdgL4Y7giw8q+rBsB2DiYlodiM69J4nUgks+P9wXxQRaKCI9UK200DbhaPJ848zmxxLqG4E+hcfWs/MULOm18K8UFpP0jTGHm3O15HW/4ANnZuY7bQsmRg5v0B3Tu897oX0w45JC6N4hCrCAXfXVOtVwZRe5GLmHKZGZeSk2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763301654; c=relaxed/simple;
	bh=0vGrYy9MgydkWTHj8xEDQ+48/FfYwOjhpzex1RF4HEM=;
	h=To:Subject:From:Message-Id:Date; b=KikuVRagsoAK5QA5R+PEofva0v2lPMUQuERhM+CwBd0BAc2M3kStyPOTlgcMiedBihXkXpFT16dTIm5T7jd456MuMexeNxJ8ZUWHCHOjZITQmeCI/3Cw0NGAV05TBorcxaXjLaHa0P9OTJefmKopMPJRdYQ7EUp7LC+CxnfuBQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIGlwC4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIGlwC4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB28C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763301653;
	bh=0vGrYy9MgydkWTHj8xEDQ+48/FfYwOjhpzex1RF4HEM=;
	h=To:Subject:From:Date:From;
	b=kIGlwC4W0HGUm1oi/mtdqfOh7oTUauLPMGj39DhIURuwtvwINj2UbiCdgaDvDVKDM
	 9qFxIFwgudNjVtK7dyHoYmbPPDEnG1XdAiUAAIgPcJsCDT+Dv2v3BLXaC9BqRryCPa
	 u9pQbPBp+WUjdQK2bf7ZW0FARj55lPLppnLY/dQz8C0m3PFOzb3MFSCiEntYDbaSA4
	 cDTWRodgoJOVRMRhlXtfzIWylptf7yfRS+ZP3Qv4TBrqXyeSbGDO0ki/s0l1jih7FN
	 D0aI1YR5Kt8GGwp9AWQmsH5mHKV8r85Tf04O2VfqPP1hf3pRGueI6C4cSmvBfw5HkN
	 1zDBUtHqJgXFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98047CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176330165358.15909.13494562611828304883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002409baa040a71b16d0d15a42adcd9741bc4e7bfe012b6fa0f85b01f58bdec2
Date: Sun, 16 Nov 2025 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763301653
