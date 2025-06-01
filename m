Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F831FDD
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748780394; cv=none; b=RtmMIDoWz4SRikHMRv4aepHM/tFLZ2Nly+T4KBOoSVFPmqE5KHQ+lUDmBY/JHLYj0VJNONLH+kAVx9Bzde+zilQUv801Ro8D16GXw07bav5bTwa5y1xBqDm8BdhtSqrg36LMQB99SN8PA/ZiY4ugtbFpBVzRLqx1xActlj3NWws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748780394; c=relaxed/simple;
	bh=k7R2PplPlY3jXJdLFAJFwCFdhI03fzb6QpID7cSsSZw=;
	h=To:Subject:From:Message-Id:Date; b=B4ajBXfYWpolwWm6TbKAXFaNODiW0DFQG2SXvkNBvux/v3Gvh8q87CKIE32vaL/jYJykD2LC3lIlYjci4lKpGXB8tz8hbgMakHVXdb9ksXc2OjzqYBMlw9BOQ0p0zrrAQemYpkg0AZA/Inop3N6LjIYf2tcUPc1IJhy2pOiAOyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQk8iVrw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQk8iVrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CC2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748780393;
	bh=k7R2PplPlY3jXJdLFAJFwCFdhI03fzb6QpID7cSsSZw=;
	h=To:Subject:From:Date:From;
	b=nQk8iVrw6tICcsqPwLOmxc5+i4JXa/TsRicOI69CSRTyxCUfJBqKlWw8Yy3bOXHS9
	 6xiRgnPfD+rZeBhOJS1NBMv5nHK0E4XsdBj9HpLf2Vh60OmuVSM24TxXoc1YI6TfKl
	 nwFHPxqrYHkm1s+1VXcQS/M9iILwQyu8Pk4gFj5+iDxEjLyfuK7rngk0UtsLgjln+R
	 KkSI/bFirVN4qvT6XTyzdu5IkZrDF9zyZ2tND0cuw98Ktx0OZ+S9Jli4mvKIPNcerk
	 im2QUgxspJEvJprxdzYwdvGhVR0Blq8zcfaM7nboVMQ1YRd77BAxJ2oUGuwtV7Q3hl
	 m2B0r6W5+5a6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9026AC5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878039358.28644.4484325894425620426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c93490d932d4bcda6184bc4cc5589a96dd6d6734423b29d0cd710dc43e7fa3
Date: Sun, 01 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748780393
