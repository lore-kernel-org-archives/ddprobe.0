Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D2747ECF1
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791205234; cv=none; b=ScWKy2ZLinbTXzhEv69RCOarqpn7WfzrdY3KOnTIZu4vxNJ3cpTdQZi9iC1Gu934beSjncjRtn/2QIiJTOgDrEtrf8pQYlVxp/ocwwEB/D1Zo3RS2upWrrNgsaXemkS94NYDOWIpDuVqYQO7AlYkgZKselI9xuq+8IknQFgB+bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791205234; c=relaxed/simple;
	bh=yu6sSnY9IAuJvWMaFCkYgsx42Yc/PC8a2hTO/ukdjWA=;
	h=To:Subject:From:Message-Id:Date; b=EkA1ssnNMv+X7eSo5rX9G9NViJBgqZPtuGu/yVfhPA4GvcaV0Th8CyptICfSfUxNYw5yJuOoBHZNi2Krq/0mH76LIhOWzek+A7OxH/pPZzvEhlV+jQI9PVZVxlrRNU4Vf7pzxODNRU/r2NxS4u2w796jxwaMUdEx8OrnLn4JONo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhVnfbKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhVnfbKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBCDC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791205233;
	bh=yu6sSnY9IAuJvWMaFCkYgsx42Yc/PC8a2hTO/ukdjWA=;
	h=To:Subject:From:Date:From;
	b=ZhVnfbKsPyYsndiHpZt/6Qwma8T5qSiIVKMAU1p0iYm16zkfFikQzaIHZsBNb6Y/0
	 jSE48erfX5ZiWrAoyrYKLpa1yjFjJP2sa4btPITs6kgO9M35Vzx9hv0Lql9/5rjUMx
	 KR0PE42vNhOl+8LGFhrMB744w0vH51HseJdPgob3/IBWFSLjW8YA9XD0HxhS7H4cdZ
	 8YLPITlJ/+HLX1EYyxSlB1AtrvOWTFgsLnR0ILzOASChK2eYxeiMdkNYdmUTSjEDP9
	 jn6lr0pMinUNeoSfsq2mZmoHEllD82zR78GgsX5ie5r7SjQqMhbHPr+UnvG0XTZRoK
	 XGRqOvTFS420Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7B7CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179120523369.11909.10216543231707816004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a33397159f07337f85076b39d88cffa0f1ef034bb0b7448bd3710adae810fc99
Date: Mon, 05 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791205233
