Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6568815E97
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784437714; cv=none; b=jXxBVb2o2KhYxGvnHTUZxWVyOUX+n22knoMYyq8MAi+7Ew2qMv3Aw9bpp0WlH9TO+NomOl8cdmJa/NzNc6fs4obrVrbtlQM6C6RBAfgMHHBvIJCkEthe5lMZiJ/K5CJgN96wyl3Dlm8jrQIGwUyiFV2kCQMFG6MRUCpt8cgFDdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784437714; c=relaxed/simple;
	bh=0IjfoB4RMRFHrv10sJHHjCKHbYDOlloDGzYRj7MJIPM=;
	h=To:Subject:From:Message-Id:Date; b=XIAlh4XJzGRavu40iNzSNmm4ddPPl+TzT9eOfoalq8O4wQ3GOHOKf38PI/HxhStJ+zzLuddtQVnXwwyUjDblPBY+CdAJ0VI6okGpFX3PHEsplyWcC+SJtE5PaybC18z0+QqL2VH0yhI4VUBHFDtTufc8GqICbJghoaFrFSXVvfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ksm9aoQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ksm9aoQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B7BC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784437713;
	bh=0IjfoB4RMRFHrv10sJHHjCKHbYDOlloDGzYRj7MJIPM=;
	h=To:Subject:From:Date:From;
	b=Ksm9aoQRH+HERKYX0+42pNzgAxyTKLBSnXHYD0DE7bruI5Ujoa3og5N5xnlv3FA+L
	 cHY6tyLxnTraJrWXJf/ykxdkP8BGBzlSKjtxINE6DhIvjD8uIIbABu4+m50+y9wTNM
	 7jVk3VmTcQsAQ3XFQKigcSbdTb1mAiOipp9bE9yDqajD7p/AwP/cmvsx7qx4ZYC0Aq
	 gZ9fJFsyTvd8uhglX274L3AFy+6qQNN5jAx2cUeZelCsY25puGfcZZLE8K6Vv24qwZ
	 nz4aNnG+djl5+358xN4ezNHWQ/t0P7E4yorxDhHJV2LqVg7hfNcKCg32oH/7ErrtC3
	 J/sZsnCOFzJag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9DBC44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178443771368.3546.2508593695780743177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6acb698b405087c7fbe6844c038b542ebb4595c6bcf60c5ca557b5bd6a47c4ea
Date: Sun, 19 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784437713
