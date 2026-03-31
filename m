Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05ABA284690
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774950294; cv=none; b=FTNPiYYPjjedhFqoh5kLaseVuW/BYa/wRWQ66rj+Oa5ACBwndmM/k87Uy2Rf/exNHBVJ564rnXKcC5x7aKW2LaOtbCttNcTSha8EZsUbC+4h9Aodawb9Ozy/z09/J9w4+YiVkiLHv2vhMvMf1ewp82o2d1dNmKEr2Ebn1w6EypU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774950294; c=relaxed/simple;
	bh=gQwwNiugcS3FlR3zm6vRY+LjlryJ5V+ySG7bbvvrBIE=;
	h=To:Subject:From:Message-Id:Date; b=qn4MeTrlTPd+fpfoMfRAaBd1k9wx18DdAqG7T4TEE1LnhGR3ikRqWciIaipaQZ4uegjXRM12IH07WWWV6EqZuMTIu/9n+s+ywqCjpDIlkZn/DzrdbJu20nMcWdrxPVogeOsDyszU8HuLMYEzFuYKZZc+dOPEboE323a1TA+8u5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfsRV6R/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfsRV6R/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1141C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774950293;
	bh=gQwwNiugcS3FlR3zm6vRY+LjlryJ5V+ySG7bbvvrBIE=;
	h=To:Subject:From:Date:From;
	b=dfsRV6R/X8+kFnH7M5RC+CBGNEoH0ollAwSCfTcuUjDXHzS5UXaUCPbHOAnecQt7X
	 uyDK6EGSfgdH6B9iEsBEJSLvk/t3LcB2f5bjvu4EXSfaqt1bT4VxbiGgRcmo7Wa8Ve
	 /2EiEzEK1c3JTz6gKYVGOfi3vjYQtkcz6Mp1AVmgwpwQZYtfNPdhF24iPdWFvXiRJV
	 LkeYS2JM/AVVuSURyxAMKsZiFvt0iqvBFyxlAE/JcikVGlguyJQFa819uYHaQHeuBv
	 Bimafk/jBLVZk6K+gCr4hAedbOc7iDdQudHnWPyaknDiu48iU/ChaMdK2zWv5f4GHb
	 iESdwP1G8Aomg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92558FF60F7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495029358.6672.411834148695598959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 698313274af888fad2a26bde1e444bba5434f92f90742f6422514196a215719f
Date: Tue, 31 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774950293
