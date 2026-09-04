Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB5C3C3C0F
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788539434; cv=none; b=tRYWadJBtakNty2EmpKMkTJKthtThpyjK53kUdlWjNoXqMDFZQ+Vv1FlVnPiVpH6yUvrTHqgF5hrtEkmOUegPqf2DUGHqfe7j4P/jJ5ySNxzLwx3+uVOv6xcNJWsDaDT2HQIjuNMTWiLeSPOFe9egANChU8maWVyvDY4LKQSouI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788539434; c=relaxed/simple;
	bh=9N120Z4feUXfv8r0BlR/Uwicaw0nJxJXvU6pcKIfEuM=;
	h=To:Subject:From:Message-Id:Date; b=inTXWkP9yO6fb1K3OKH7R0z7wbbPUSkjGsrAUZt1QZ4jCzPqWq4qDzSP1+rLRJ83uYNGagSreVmSJbPYxyd6VWFj4P+mi8RRcQyKJqTTlzhODJ0/MCI7dMH6GbkOilpgU8y02IK2dQnslQa19fV++xqJ+TZ5BotRpOTLWBeFBNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fb39Tcce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fb39Tcce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF95C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788539433;
	bh=9N120Z4feUXfv8r0BlR/Uwicaw0nJxJXvU6pcKIfEuM=;
	h=To:Subject:From:Date:From;
	b=fb39Tccebzu41E9JkUV0xJJC/9mDYyWp8rcaYCPxPpJD6/oslJiAVxlliLuLULKrZ
	 cdKHpOc61w2uCpVVNhsq1T3Y47iLH1tQhEWpOTi+orCsqzHmBJ9xekQB8sHJKKmtat
	 d8puDFB9KkBiuahDL2IGrY3jvuauslFNjnE5dyCGa7Mmz2A+vQmVuvzMhZy17dnBSC
	 AFXLeX2MXWJugjmq2YcoQjQgQFN3iGbvinEdYaWmcaPKgpRmyb8Cdtf2/eh2ph5JBO
	 Fo5VbB01mSxwnrzl8vxxel1RvNvBliw5jI329lC68LtCrvvQhEZa3ZynDcISgofu5i
	 Q8jrbvNjdEYiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BEAC79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178853943373.7501.4601768960103520977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc8c3abf6a72695ca03cd3c65d2eb37f7fa8b4fa0be758dd698c104fa2e1d06
Date: Fri, 04 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788539433
