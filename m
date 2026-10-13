Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7427947CA67
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791861634; cv=none; b=OnrkCBtB0/zOmWAatK0icmii51OxlKk6CuF0UhRVSyY9Y8qiPe8tkFKnHOIiy7k8WhgZqGibbGB1f76MoTyXcfIxi4ZCg9j2N3DtqEUmnz6XN4V2CnCbUov9PCsIKUw+ft+YsdYH/f54YEM2SUeK/SeBQBXCCbCLM4f4ZPrAP1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791861634; c=relaxed/simple;
	bh=rGhUe/lVInFUeUdP2UtTyhmss7gqwrhi42DB4UejKOs=;
	h=To:Subject:From:Message-Id:Date; b=RFUvphsAjGVe8QsCva3ATn73duorSgBzzo7AuzbOQucKXcqAzYoOy4Zn1SOq1VqqQy3uIYOX4lEmxDWtxYg290eu29xedGfnR3llP6ZJMjFCvmMPV/Jv4Z3M2UNfvUoKnEl9JFg7xEEYBXycgBYC6/bGDb6GqtTaVfyduQKJY4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXw4JxMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXw4JxMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD62C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791861633;
	bh=rGhUe/lVInFUeUdP2UtTyhmss7gqwrhi42DB4UejKOs=;
	h=To:Subject:From:Date:From;
	b=hXw4JxMrDRdxkin43PcLq7G1xDZRu2k/2DlkMzvur/kPnKFrr4vEVC45nl9lhQmza
	 8X0GavNjcxhVIT98CywHNxj7gNoRU7bPHPByQO/ykZLSOeqmjpiiM8qmrTKxtttZQM
	 IIlXQO861yFDEpVY+lCKYZsooh5Cr35dPJxUOVV1Lox31JmVvfhf8rJzInVQpMpijz
	 dyFcCdi8evGmLZQLqxmUEQkPeFUMiN4BfLUEy8R77mQ0aqFn6xqOewRHCQ5AmNjdak
	 MOUTvzhHmoA+r8dt5TijS7POpvDr7ayDB5dVqxarlr6qGvYGfL179sgcKRphwRqdd7
	 NynLKDzBWLLxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB07ACA9EDE
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179186163368.12153.1971953259448231224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72fca84ab2af75934c5ab4d50160fee499e212a1547cbf4542cc261d1903faaa
Date: Tue, 13 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791861633
