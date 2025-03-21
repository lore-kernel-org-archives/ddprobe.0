Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5113E1F0E2D
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742547594; cv=none; b=SODLF/jV8/yZCQgaA7wwC7v5wd6xUfsF4yOA0xz1WJ3YuBBmbt5mBRUOSR3jXxFmXYRQhI5MxCvb8uR4WzcqKOZwWpXB4hpidqSq32iHAsO3bHBTWv3SGNRa5qGHy/EuwhdCBl1rwvF/1IFkRWjHux2lfqfbZojiicbIgpu563s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742547594; c=relaxed/simple;
	bh=l1sma7qBml4woDAWxcJpahxg9eFA0oJ2NWuxZfW+VLA=;
	h=To:Subject:From:Message-Id:Date; b=XVGQOuYbof2cJjw3cmpwI3F4Jo2T6s6+QHMYb2o+c/KUmK4WRdPOpHkQLe6MFVnS3bYlIkY/hYd5z7nCc3lVX7PBAiobXqpkYwJvUrE20zW2mXVFsElbLhsSzVXHAYlAVZgw7pJFlCCT/rmUY4qE4QYiC4qfsusbR4/Wyy2j9eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjO+XiX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjO+XiX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD90C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742547593;
	bh=l1sma7qBml4woDAWxcJpahxg9eFA0oJ2NWuxZfW+VLA=;
	h=To:Subject:From:Date:From;
	b=BjO+XiX9WauGqCLVeOhP681WT+su/C6/qXXYtZILn5iA7bHbPV+bfALzzI/OKXsp1
	 If6mES2R7aFXtOnrGrqfkeHAUKDrDo66waki8XJr/wKwOQyEJWy8Qe1tUs7xARe7ah
	 DcLoDSsMVCSUIg27zgEzMPmwIjGCRIwUd+3FNnskYlMY6DmTreqoYgWMLTpJruyGZw
	 PEu0lOqaNcXw2rTtM2lG/amJ5TEjtSpoW1O6zutcmBuinI8q2sgBChhOxZPSlG0UuM
	 9CqaVfxnN0OOok23IyGcHSlqAS9spq4gLp0HcyJW311bNn5btyZzvyUO85R8BbBWrh
	 Ncr4Nsb+TP2mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4603C35FFF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174254759363.12146.6302936887667636360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0421a8acaa7d87abf141cd34063034a86e8b3d3888ecacd39c659e52945b332a
Date: Fri, 21 Mar 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742547593
