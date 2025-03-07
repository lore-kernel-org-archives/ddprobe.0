Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3784B33DF
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 06:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741328934; cv=none; b=bFN8ucNg/xdN80U0MZbl1gMAHc9jBI25IzJq7A87lJXNEdsQMRP3GkoQ3Q8fAOgjLRCxIgGUHs0xADgG8r5ZsWDeXbqgSc2Us5vtokdNF58Y36qUvtnXO5ZQazU99GzfNU7t24+3DSEcPt5whH9ZnqIdboRVr5fjLYoOuCDtiG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741328934; c=relaxed/simple;
	bh=3xC6XtfsExi8MgbA0kNbEHV/R3vFIYnMpMwQMhXJ70c=;
	h=To:Subject:From:Message-Id:Date; b=mdzoZTL1UgGqiqhhWx4FlwQZGHT2RqEEQvTM5/uQ8A8dS80hwOuiXPsC9JhQzS8t7RjIs2Cio0o2kM5YMQ3myv3C4IMphpCoqtkHSAcyIx0CP7MmjR6QOqyvAa8/on1fnP+4cS+fF1M5ZQal5WLd9iK4XK7GjFwjnx6gR/xzDC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AS32La3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AS32La3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC279C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741328933;
	bh=3xC6XtfsExi8MgbA0kNbEHV/R3vFIYnMpMwQMhXJ70c=;
	h=To:Subject:From:Date:From;
	b=AS32La3JuihuHsv+1zFcvzeLOgZJdjwjItVlxtZKjhS4UUjGTm53HxZbziWvWqWnO
	 dJ68AhdoO1KkLNtsRUznYw9J4FJzIGfr59NgaHgDMQPiGOzC6tGpLE41THLMo2qiok
	 //koMOdJ7M8Ty750xGH5rkrbYPq5dxB+nFBRbDHs8ILk8YL4tgvG5tShf1z6htOk14
	 u04LeiJ4AuNXEXuAUcEmVX0crISi2gk4rw1Q0U3J+Vxy5dNQcFCNT+zzvNhvcmmmcr
	 JGRUmyJhie1wRnkt35CKrnIBmfjO5j3y7qb10oSh4+3vI9oQTZ8BL2UAVRl/ertxD2
	 0GTTSGctLDe5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C58C282DE
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 06:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174132893359.17085.1431069686144869804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed6e11daac9f59daf813779ae40e185bf661d2eb4b7abfbbc1dc2ac73ed1dfb
Date: Fri, 07 Mar 2025 06:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741328933
