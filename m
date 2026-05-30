Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3473A1E520A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780109614; cv=none; b=UzO0wr2SyhqR5E4qlTr53zHwUna5HWrMJqeEgcxGUCwGl5ZonOPmVpyl2OM9CgWMGghIFIfv3ttVvnskqjfCyZ2v+8NT3leohELbZXq+Im2ERLs5HvkV5bHysNfHakoiEn5fCGGVkN31lljwUK0+wAf6lyqlIdbTZmwCjg0gth0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780109614; c=relaxed/simple;
	bh=7VxRz3HdtmrSHonH58EDfD7El+UJnpsCThcXfKnL4aA=;
	h=To:Subject:From:Message-Id:Date; b=MZ3qTkFWbpjsA2mmRqY1hmVmL/fdRaai6tyJnXcW0152mY1L5b3Bl3jtoH2XFBl8/wIOrp4uyoCp1+NE5KKFBGXtNnZlf8dC+uk9FrVWVAhOXt2e7u5QMkuJhRk26VUBTbRzEf+gQNJi3OTjnsDJS9E8eT4gI4PFB+r979FVGCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0CHkHNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0CHkHNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81E9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780109613;
	bh=7VxRz3HdtmrSHonH58EDfD7El+UJnpsCThcXfKnL4aA=;
	h=To:Subject:From:Date:From;
	b=r0CHkHNtb6NWieY+edcENLe7AGSBuL+uD8xp81BgRoZbi1Zxopc7/XBY+pPX4RdTK
	 Z3YGGafPpMy39bzIh64c6JbPe0ofVildQpjceqpsjAmfUlOYmHZ2HBN0yM4vC7822W
	 3q1N0AdY+VXe401vFXioSafZynClF8hdw+D/C4t2QALlDyt8FtYmnuX57+cMHng5kr
	 h2Xe4umwRtB9yqgMYO7waidGQhcwJ9f9VsjheCl16FkI+B0rDo5cSmhAmen8InDrS4
	 qdPNmnUlVjaAfWFSwqXNkrvrZEb0CdYcFFgszBLaoZIjGtRdeqU/TeEunMG7AvTc07
	 bGCY8vX+c4/Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED5ECD6E51
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010961368.22212.15938653615458147821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4a980397b8f2c33df769cec52c6c30fcbe7d32e733d81267afe68f59659b4a
Date: Sat, 30 May 2026 02:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780109613
