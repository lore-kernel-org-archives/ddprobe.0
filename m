Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158A222D7A1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779986554; cv=none; b=ftXrlKgv+YhIgFdZOxwZgN9kf/KttjslX8ohQKKDHsKMhl2uBebKQbnirOQe3B8Gtes67ZJBGTuMtUNK+SyXDNJOccY65j4KEnxPRVRPAeAJLajXcwh7Uo33NQMjhcesC3nSAY1SWTexdNQf2d4x8aiLI3futVFIszUeT5NlPFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779986554; c=relaxed/simple;
	bh=YqlYW00rKIXfPzt/CGXWhHTtVvsa49MK2hei39pN2rs=;
	h=To:Subject:From:Message-Id:Date; b=kuVLZ5ojWgTrv161PR2vhismu2X1/BA+3giWCeIVQxNl8p1/A9SpzUqLmNHRXWJ4/p6qp0c8NBWR/hPAQNicg6B5UY193tmYBl95fLM3oneDmf27F/xvc8dKw0tIyQoELt4Ro6dOaInT5SJXLy+h6ayBnREwa91nQZintlzPWEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SK9elo5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SK9elo5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03B5C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779986553;
	bh=YqlYW00rKIXfPzt/CGXWhHTtVvsa49MK2hei39pN2rs=;
	h=To:Subject:From:Date:From;
	b=SK9elo5JhNkut5TEgqxtiXMSt8dD5ppYO2mL2bq9yBU9F03Zm0iDrjPCN6eaBT/Nj
	 0H9heHhzEh+1LGjTZF1FvR6/nfDPug2ArZCT8XyNl3jtcW04dmgiKGTwBPAA7wb0GJ
	 AtmtAHcBQUfEzfE3bHAiAs4/pt7JjMc820Ha5oycyUb+TW5fGQoD+gLSEfT42hJUnq
	 Nm3fdy1T8JOFeZPqCtJUmgIplaEt9nxwoCsEXkLp3h2hVrAMLY80Ik1IcFq02w2teu
	 EjbAsIHbsKN6/iuNPiU4g+f5LjLITV6lCdvar/WTl3qXJ2zbeS+7UKOWzTr8ZpPbZV
	 cxkjW1LavJ65A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C92CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177998655368.27402.8938644877380442222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472db5a9755b779ed926c74ce11c629411fdd0324add9f7b8a75fcb66e26694d
Date: Thu, 28 May 2026 16:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779986553
