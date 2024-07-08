Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4745A469D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720406783; cv=none; b=XLpXGgMQaCTvqjTIl5wDhgDrJ1d2kowDGilgiRJ5kAzOC/pDVh7ajnkXmaR321hHIsjEVXFo2y3aFUobRr8KaPrT0KygXZCuyKmGk6k1pzMu1Y1H5G91ojmAw2vroDgNXSOgMRlrfCXij5/+iEMVhBWe8FtZzdLaEWcHns4xx/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720406783; c=relaxed/simple;
	bh=xGTdlls8gpXpnehOOOpecMaP7kodtFUJG/+U30cODaw=;
	h=To:Subject:From:Message-Id:Date; b=SgwpLURavAAsErhpEOSwwQJ4CtOHZ5TZzQG2qmlsC7qZRIopFZzGZ/ApGTPA7EVJRHyl70Ky2Cmfdm2M5NGS3Wuhxt6UO9GsKYtNBjNoIl59uEhU8sY1zYkURQ7DS8G90ib2BpJx436PtTtdhFqc4SmSnyeCoID3QW2OYX2F1t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2IGBZjC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2IGBZjC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF420C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720406782;
	bh=xGTdlls8gpXpnehOOOpecMaP7kodtFUJG/+U30cODaw=;
	h=To:Subject:From:Date:From;
	b=R2IGBZjC5VXVD6MWD+cRUbrq7O1f1b+V62n6IIcVGQXp/pwbzHdtlGAhDD7ogETXQ
	 /hgRUamH9MKPcLu/nrptQ8L+3QfzpDNS85WdAtf/tUfixfpef8QLWnp09yFUWb5vcH
	 CCrA7+rdwxdhAJ/hVLJ63k4PeqjzvsNVK9L23cDekS3pGTpvZCI3W9mlm3OrrMx3F8
	 8GIOwydhwx6s6ZhPtM+RVk1OyhRfFrwPgHmUKMQfK6aoAFg83xmWPRUUIZ9IE75/Sy
	 fRfk2z/4w1hY2V03j6vbFZiThBjUiU2yYz6vjrxXvIBJMzh9wzCN1F9d74amWSviy2
	 ZW37x5hK/Za1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB358C38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172040678282.15436.16132625230185067207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 438a459b600bc17a7f9e67b2dd7bf06dcc8c4aa8724237a0d948106af165c7f2
Date: Mon, 08 Jul 2024 02:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720406782
