Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0880634CFD6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772304294; cv=none; b=NwrnEMGjyx81azD50jcJWUZeYVHuzBL/gyeq7P0mBb/r4imwML3aaPssOIUlOlt2D/keJrLPTwA3vzaJ53PUOYcKOoK2xSdkPJY68Mlt4iq2uXEyBgbseMh64tGDQP5thbcwnQDsLGn9FdU5R1UkmwVIQ6s4UYVParOPk7TKgbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772304294; c=relaxed/simple;
	bh=ML1NStuK0lb6aXXmkYIKafeHjUJjjTG7RPh8buuCDTU=;
	h=To:Subject:From:Message-Id:Date; b=KVHWPJQ72i0PjYBNvzFL6Zmdzsb66AKE6rv/RzolycKFi5ao/C2eknCmtlHy5eXMZlnQOG8a3I4Wiazzf1x7nITLTF8B/aGje3mWCXe0ItMoNhYS8b4DDRs81JD2U8lIqgtE+NcXeJ6s70og9bxZESKOAdXjU1PL/MJrL08NFeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjDo6PO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjDo6PO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D74C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772304293;
	bh=ML1NStuK0lb6aXXmkYIKafeHjUJjjTG7RPh8buuCDTU=;
	h=To:Subject:From:Date:From;
	b=DjDo6PO27AZZq+G/n5W/pvX1WPYTvru++8cErt+t8fDk4LC4KsyH2aYC/IFm8ZMsF
	 4VHTifGw87SJNt+xFyZhyyl8zykJC3g1ihV9tfRrUph2tpjXsRUNQA3PXb5UFg299o
	 URMTj5x8XOh3wPPvK4WllxHy97foG4JgEFNQGwRnCx387yhlaenqhmEQ0aDDr3Jeci
	 3zJaETUlWNU3SiL6n/f+XkqZkfZk6yU9o9XEMUW56Swb/De+t7iEMgGs/W9imopzF4
	 AJg4cHiGp4KEDmqarVlLYtWUMJ0tFFrRkiu3TRYjt+UmktZ++mePVmGfzlXZmcIQQi
	 38hr4H/17MDAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95212FEE4F4
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230429358.6953.1731961592611799042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74047c23b3d588371f7549afff1db3e05f8aec325e4774dc231f4adc2344e596
Date: Sat, 28 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772304293
