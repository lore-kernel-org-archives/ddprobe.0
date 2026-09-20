Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFD337CD37
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789898434; cv=none; b=lZXH/k8FLYt/HOPhvMNkY2FmM7hb+KYErJsrGvb3SgGKuzS0MrxfFvyUqSIBXfm7dEl2F3OAk29owy68IgXPGLX6QxqGI1t+8fYow0pUZBrmH6XFWhs8thzgOX2jn5Db4JNYxgL2ohO/ScAegReaFbqSYoJorjpNAvjMqNdk9vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789898434; c=relaxed/simple;
	bh=Jbx8L+rTCfpqGO7hOAngOLEvVUrCkDgsU9PBR6fP0BY=;
	h=To:Subject:From:Message-Id:Date; b=cwKqEDV7adDzLNmwVcmOtPehquifklFPqIeIxnw9MUequuV6l/KYy46SMQjOLkY0OGdjbL24ChCaPY+w4vGoCa/Hl3Al4Xd9MiVS38rxQ8BU5CfOoDqgaB9jVe4+sy5Z6+VopeQlF0Jsx8RJjG3ViyMPyNMFfgO01MGAcZr4b1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hti/JJaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hti/JJaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7C5C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789898433;
	bh=Jbx8L+rTCfpqGO7hOAngOLEvVUrCkDgsU9PBR6fP0BY=;
	h=To:Subject:From:Date:From;
	b=Hti/JJaLFoVXDHfRqj5cjobes8x/GDNKMvzTn6DWqjPYdG3p4xwWBlqjNix5r3GSC
	 kwapgEMRFywAWTXLmTvOdN3tgMjHDgFiHqYUEi9z/jGzbQsPb3Cwlp/06ZerunA26E
	 R+TUP+ZiY9t96ZP5l+Cjz7VV2RkSYKj8ThsGXZVJr7pbSlXt9oDN/EZ1UjT53idw2F
	 KiSQzz44dfyEZKiDZ+N7heCcQ5dzRqUjkFNHvr1/wVzd379bUb7Dm1wz/cskixOYB9
	 T2wuk8tDE2TgLgXZzTIrYxOsrCEcZaRwO/zGlCmgaUnIu2lelpA5ZPzuaj7XmIiYpq
	 fUEGVDpJd0h2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BDCC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989843368.23481.12778105555692019089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe21dfcd0ed496d2b5d9812aeeabd64925c4e949dbddc24885659b559a10454
Date: Sun, 20 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789898433
