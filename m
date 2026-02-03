Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4E82AD10
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770090234; cv=none; b=DWMeGLsG/lfsPq7nXGwM3VFHu95Cg9y55eddlCWcoLKxQZKm2VZ4b3KIkRKjNNV+g1JrlWmtAsahaAdDEsWMpbUcc8RgxKeQD8kt/8RyHGCWHnrHgy5ac3NelasExNN0pqslsob821epjL8rupm7jz4zIx0tIug13LYnn5HSiAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770090234; c=relaxed/simple;
	bh=7sekvq8e7ul3JSbAVy8S6guYr4pAMSNR/V/3gHZGtUQ=;
	h=To:Subject:From:Message-Id:Date; b=uCIzCvmOnxIZD3QxxHVAL+C8JZjtLNeah5Z1e7egXmr7jpVM8b9/aV1N4m+mB4rmj3oRCr9Ig3UihvrU78xi4zkZRXaUCxKEhFqtF3f6/OK59a6ibz/L4og9mpyV1SXR+XgWtmpH3Ps0gtk0e2KOGlxROGxGjdbYBJesuwaU/ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHd4mMEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHd4mMEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7671C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770090233;
	bh=7sekvq8e7ul3JSbAVy8S6guYr4pAMSNR/V/3gHZGtUQ=;
	h=To:Subject:From:Date:From;
	b=qHd4mMEk4BSflmm3cBj9ibJHFEcGTqiHuEaq2gAIVKOO8TZs06q7HM+hlVxgDZd8D
	 5kiqQ/+82bDoPfq7K7akMNa4xqb3Ug0ig6GSFnprzhpKAM3qpswjiahm98Q5HVjfrn
	 jJ14tG0favrNshhUA0RM4NRjJAijfRcudT53vJXxlGWN+8To6UKCSasFmMKxLIoN4X
	 S0LteNr46dJHb6lUSuP3+XjCUVpWqstVIB5jletBUrVerM9dAa6CeYcpkmXPMb7eHr
	 qapSJAuVMrsvgq4OYJok2qWQNURrURFawmo3CUUA8EljYtoyYZR9nVg8WVKWRQ5Tl8
	 zWuBUNYOGUGZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920A5E83040
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009023358.2315.17092275287257320770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81365a8b06accb845905506d1e12e1e2ac540f7fad89694705c01e955bbd71ac
Date: Tue, 03 Feb 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770090233
