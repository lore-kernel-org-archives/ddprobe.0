Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B491A3546EA
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788313234; cv=none; b=I9KK5rAzy/o6t/+hXpPDQytjZ+9pOZjLDbAF5JHqu71n2HtK1tVI9C9sursSVXsbWKuqzWGraAo0vdDE7fJ8nEIPxBmb1p+tw5SF1AzRMTWOpO8slWfRKLIEadZlV3b+OzJgtJ5vCZBzWVIzaQqeesDbVOAqCrEki28mvOIzu/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788313234; c=relaxed/simple;
	bh=r0lwloMaYLsI2BcyZYZbVu8MgyzFPTftx96uJCPCOQM=;
	h=To:Subject:From:Message-Id:Date; b=j+9pR0xA2JDFsSrfoFQLZR0060rJLr39oRuqMDiymZKXkKtDjJNJHOrIlGHQBlYkfYNBv1cfym1b+PI+nFCfI5GrBuA7kYa+lOrCEOTtHHOOVeaAvYNnevwqH/YMQCLmQZPvmWhyyu3L1PAaDb+JU1ahmQUnGAy4AeFFNoQ11Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frfm2NzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frfm2NzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB974C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788313233;
	bh=r0lwloMaYLsI2BcyZYZbVu8MgyzFPTftx96uJCPCOQM=;
	h=To:Subject:From:Date:From;
	b=frfm2NzAUBqEBYLKGchy3WceiDgxl09FwHaUCftNCDYKnxXztEydOKrtFy3MopHp6
	 5zGa557mfpYUYdeKzu2RZ5n3EDiZpDbGtlHFdg4Wq9s4b52f1aoInN1ibUFBOaSyi6
	 8vTMz8KLKRsY5hHi0iHYtovecT+mVHoAmWVmb0WYBC8Obno+zVP7HXZGcbbbPubP6Q
	 R4JYuVuZSTZbkzAbdP7BGvUlkFqBdVIOMZvz8x9ar+RDRnI2EeMslTK11eiqZ1J/lt
	 taycjD4P3XsvA0vPsrySiUINLczBt0R2u0pEs/d0I+ISrHZMy4JPCJ8BtmajQdg1Rw
	 qtzvORf+5iVVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E6CC61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831323368.26295.14810201210623092948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b0e04300cf0005c9a5e9f0933ac159c293dc92346e9ac41086d8eddc9f682c
Date: Wed, 02 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788313233
