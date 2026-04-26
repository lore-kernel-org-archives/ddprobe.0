Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C14342517
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777195654; cv=none; b=c4Jn/YzKaCryjPK4+qZADq8Q7AQOrU9aecyTb13luXR0gFftfHN7Lhz0G5ttCE2OH31fkdSiB5eh85dJqsj148XUcs/oXflommfhfoJ7Ln6RM5okSFSEWKD/yjLTGInWMT+0lJ629O1HvwskDvecktdoIlV5YiXIpgTvlbUSZIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777195654; c=relaxed/simple;
	bh=p5Dq72EF79rADlPWNTPjbD2fd2LW5o6a08jcBsTaJMI=;
	h=To:Subject:From:Message-Id:Date; b=I24eRY643x380C0GKGK7oYcqI8J6SDn+awDSgJmq8RgKUYxPdPjFtS2jg5283bkkcap/qaW6pothoSWL2SXeI3izq/usQO9PpJgmtCmbPeFhj0O/RgO/fegozy02wLlMA+/r6JAOQV6idPFkOPSBjdQqB7YtOvYC2Hli+m/BbE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccDWF+7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccDWF+7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6D8C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777195653;
	bh=p5Dq72EF79rADlPWNTPjbD2fd2LW5o6a08jcBsTaJMI=;
	h=To:Subject:From:Date:From;
	b=ccDWF+7vja4guFDmXtpWTxCxzZ1XSUy73pxCxEnw50f/ceOj1c6fTyrS9vE6/8rUC
	 BWVH3sY8xEsxIl5By3jW08OYL+FQW1nukqfKA/aeq55cc3jhjzGLN1I6F4dVivZPYx
	 YGnw3TSPDtGQQyxdCvJ/B+oZa5+VifSkr1k5AWKq9WKf+kQpP0UsmwwyjEv/P+hJ1q
	 zZVEv7DKa6M84Gn/0oIfNAo5fGQw42lUuZO3S5c/6wYP/nYcjXrM5p5DLEAdWLfOPx
	 qgpnaieLe79PU4cuF5MmDtsE49Q9X52fxBX+CMYAjjsiQrcczUrTnMiceoK51uSuy0
	 ORvytkTg4uSmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9211FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719565368.28788.3091212875050174356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18407eb9f118f0a79e186fc6ead4085fe71befc5550cb5f9f66036463946e8b0
Date: Sun, 26 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777195653
