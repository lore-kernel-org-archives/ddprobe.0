Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203AD481FD1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781023534; cv=none; b=oTL93y9TwjympRMQAtrLSZiPtUdWXl7GKTkfUn2s6hannjnPKxFBM5QHpXaW7qrSlDhWu5TXKR1JuyYyNcc3nNf8EOMBMAu7YOuRYdeI/SG6X8VzH1qP5ZsUhna5XD9mNvvC5iINjIWocPR1v/dzoK/O7VkMJiKgnmdYnmdYTA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781023534; c=relaxed/simple;
	bh=RI03D/oTsG33QquJwxKXTS6MX/uOsWYQnsxt1J1eKL8=;
	h=To:Subject:From:Message-Id:Date; b=iCoi1BEmrAYhUha8C3AYkbw4aGdHeve++OE5Gt0U9GAC6CGpA+H/Hz+gez06iBiTFUEK4YvGtwSCDkk6sMvbxQ9e38WVUiocxGkxP3I4089d6kPg3+YDxt4DTep8SrleOnrpDmd74gLWPoiK9a5tdtx3MJI049FjVJX+fx0h/2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0XyqvnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0XyqvnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5D1C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781023533;
	bh=RI03D/oTsG33QquJwxKXTS6MX/uOsWYQnsxt1J1eKL8=;
	h=To:Subject:From:Date:From;
	b=n0XyqvnR+gGq2kQcDvujBzHR1aZRpZwV/IPJbo0BDSEz5dzYsBou9ePHP0FFiAB6O
	 CEMFlmgghY4I8mJhopm+tPu0ySBO7J++RPM8fm673yGF3nv117k7a3KGhIRa26RSc9
	 flglX89NOdbs4vC/V73iMSbcVxsEebuXcwRYVBD+arzKDhqJ34smDe1eB1B0Xvts2q
	 f/XOXurj1jRwJ0WSzkMyJzaduDvAuWtF+onZUmTZGlNVTfjfnwLe6sBiyEm3dnNY5T
	 /yM+SnDtKHFssqHgwmVpqxoXY2XZkqKwLmneRSuiTKuNHu3C2S3ZO8kvzg7/B3B/wi
	 nY0Zad4Ueh37g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD341CD8CB2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178102353375.9794.39522516674069772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfebda4e27874d92b86b4c774e64777b31fef8b1b6175fd817f8f28841cf3eef
Date: Tue, 09 Jun 2026 16:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781023533
