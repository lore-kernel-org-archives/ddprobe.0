Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298E93C8C71
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790718635; cv=none; b=SJmNdK0nr5vYW6b/w6tzRKfJPVFroMNR9OneWL1qG/xd7jrA1I9Zh0Nc20c3ePIoPk71FpcMaRY8DrJWXgHb6O1EezTZx4INaH8E/xhNTIyxUHw93+6tvVA2gETX4Rjb/DQ8ZbIYf278n4S/hhyT3ykpMjY2ZL6KRY+erm47cQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790718635; c=relaxed/simple;
	bh=nstE2eUN1HwdWYefcliU+si4QGx7ABRNBhtQUJD15cM=;
	h=To:Subject:From:Message-Id:Date; b=XjcqdoRTA2qR4d14T3RBhetnqSCSkLsdlNLPzbQioir6C6rb27LznzIyhSPF7mN4KRIZjBO/oi6E6e6lsVN605L0mq3gnB9qp/F7+nTy6KJfWaiAuy0kH9H1Vo+hlUrX7eqye5P9I5ikNnBb/8Zwdb/cRlt6HMEluZXb94lYack=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ki1VyhLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ki1VyhLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CEEC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790718633;
	bh=nstE2eUN1HwdWYefcliU+si4QGx7ABRNBhtQUJD15cM=;
	h=To:Subject:From:Date:From;
	b=Ki1VyhLAuYGDPi2JIF6o1DC3Z61O7DMNgVo/oXGziqueseIugntWzBmQYBLl7osSB
	 sWeEjLkiG0XamH+fYSfj1CPEUBMTaWyFoz2mrfWaycJkGpLxatyAMmsTTL90VRjh2N
	 6qAq4wV9Nq5sPWBOaf2SwetAL+8J024q7oiPrBR/I38mkxCRlJbxkJ3/pS0JSvZI0d
	 0TyVfregdHjkY+lKihs02IGgupbPYGhXIbPvjWJaiOVPiGVY1ION4d1WKgd+4nkmfK
	 W1padrYX0tkxFjckBIVHVcdkw4qu8s+C7nvjizqKG8Iw7ZrpOKigV/tRseO0JxmB8Y
	 +QxRAoG9/Kmqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD281CA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071863368.26417.781619615066384651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8fa7a48e6ee47d730148077df5fe68551dc0146442bcf1dbe5036c01daa26fb
Date: Tue, 29 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790718633
