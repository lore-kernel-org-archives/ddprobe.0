Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129722459C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760086194; cv=none; b=Akp3YPljtgnGu/DlRx2KYHOd/6Dht2dWgBxqg8CDaDCyi1uoswTHEkMy6e8DnYBOhyptejSvsO4NrioU39zNWTw7nnaYdxtJYnZ13hUAJaC2OS5ErLpjpW5vxLuJ6WHa5PTyfsO4H2uhoJR9XqsjSN++q3W7fiREo92qpfMTL00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760086194; c=relaxed/simple;
	bh=PwZHOT74w8p74a4YjU8kpDw69n0gZkM1Wofxt8kFURw=;
	h=To:Subject:From:Message-Id:Date; b=BSZUUJntx7UzHBBZOp1jYKWi4jUqvEb4IvAiN26lqpelfZyXupMbJwMHZSyE3annS1R4d+6W1P+1JhnmUZArUnNJi1Z9SpyrXNhOsoe3pn6lakt0ymvpqJ6BX4ZbdKIX2ildfnVT/JZYVmaBIYraNHbdwMbiaPvDRW+y8FItraM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTiK73Wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTiK73Wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDDFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760086193;
	bh=PwZHOT74w8p74a4YjU8kpDw69n0gZkM1Wofxt8kFURw=;
	h=To:Subject:From:Date:From;
	b=lTiK73WmBN4p5XuOMr9CuFv0loWMjLTNbxxzBXgCDiRsuQgUKMCzaFJRjPLMoydtf
	 6+FbccD77Susi9NmJkWIOAetaT9EZfAT1OIOu2vFOXVTiy1FJVpPyBBa39kTMKScPI
	 akiVvf0g0k3KUgObtf9CguSwACGUDVnQfaUTbHEw8ZMUO1aLYrA9BvpLLv7YwyMmgI
	 JyF12bhkOgE6+JtZW2wX26tPC6V+LOVtCQ9oSs/dBzDTSEqXUPU3yQC3oxWPk8w1JV
	 ecokpP/ySfV131rRwcKHMg01bx2nIuJ5ZbTmyqXyilVc7hmMLaFaGIhDmNwqBM4TqU
	 23/jcfy04daUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69DCAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008619357.24709.2888567536218805851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e015993a40186b462e1a14d9758471b6e3348b1601c886c0b1d91a93527f668
Date: Fri, 10 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760086193
