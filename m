Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D812F549A
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761571794; cv=none; b=tJ+W5QhGNn9JF6sXFtTEmVyORpWFurlL7mvFsdFvszfzHjMni45O8Bp//34DEgoIbCnfv1nAfXdmsg0gfpxPulZ/EY6q21S8IXqHT6TR7wYSu0Re1QtUHVb7ZuXi4YZ/yQzsk5QgO1StMNTuFsbcb2v64WrPDnSg5gsGhC562mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761571794; c=relaxed/simple;
	bh=5Z4+axKjaqctj3vPeIh8Jev1S47qRnF2DVnxXk0JRsY=;
	h=To:Subject:From:Message-Id:Date; b=G3cl1EPHrzrboPmbUQGKU5fSfUUlhSB1e+kd6giGVsaIi+wvgKeY3hgxL7iqngZCu307y58rF6X7ouR6KzOL+aXg1aRvQ1Krjph/CydXsTcUQB3pck37ZmUOhlN2UkLpUyuVwvvAXZg8gRoabBU/UhKffGLRSNykkve1BXX8kk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMkIxSpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMkIxSpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DD0C113D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761571793;
	bh=5Z4+axKjaqctj3vPeIh8Jev1S47qRnF2DVnxXk0JRsY=;
	h=To:Subject:From:Date:From;
	b=LMkIxSpg9tMSMPbtiEAzslFhsSJF9KskwnZ0v09W4y9dnHwqz1MQafnS193qmZS4H
	 GT0qQ1wC4IncoHnK1wGXmxmqM6Akcepmo4w8b8E8mcx3vuNErgZ9bDNFh4xAy/8RrE
	 hMU2/1zBUIjVsJsGMea0g3nx61vKUUbPBWnVqqk0Gfo+bFK8LFF9epsSA2FX66ggtT
	 nEyzMDGoRuRpyOEW0W8Uanp5EOr0neWOd++BB/WCa0dK1S9H1RPTMYAlWANSiiq5gZ
	 1AI/gWUjDa1Q/rEP5vBekHoS3WeKt74dZuoT4qjSSAThKRyS7q1tMQCJaX6DnXkOIM
	 rQMNiER6YMfXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79FCCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176157179357.23484.8243742661664584444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be138542219f05ee3e19fce88d45250e4bbed79cf7cdcaa7ae23c77c13f035b8
Date: Mon, 27 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761571793
