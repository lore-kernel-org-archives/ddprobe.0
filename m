Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3367C4204E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780829674; cv=none; b=jvHe8aDtCboeGuX8iyEI5mxyVHfiamJaIMBMM0A6nJ/GtwP/TaNNTpR0kv146yhE86tdToFhbqUBA5nWEdiml+b9D6hoIqbYBtZ5bx/2+vWRyVguW72y9/pTfCaUKk7G4akW72vF9zooWqxtUU8ZqT0t8bTtzromS2rlP1cWUls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780829674; c=relaxed/simple;
	bh=G4n1eFh9AmbNDcDuvluxUhqQnNxZ78iesH1GhLsI9qk=;
	h=To:Subject:From:Message-Id:Date; b=XcqRPdrM/J/29GYdDiuNsWvohIPgwD8UqraXwy3KBUEf72HnOOQrLuUNQzvlOvoT/U/u9dZ9DfAkZhYkiuW2WDL4Me/SOdzriF476uxMhZJezjlULamSnswyHPVE+6fl7z3k2e3q7yTjAR+3WHWZLDn7zDsa9cyrajvgtPW21ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKrBm5HA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKrBm5HA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C549FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780829673;
	bh=G4n1eFh9AmbNDcDuvluxUhqQnNxZ78iesH1GhLsI9qk=;
	h=To:Subject:From:Date:From;
	b=EKrBm5HAOxZJxgZRVc+1XlN0O8mfKkJSuPc2h/qYQ6WvDxF0x5Mu+95UB8xz6kUqt
	 o/dLutvOhEtivT9Xm2/ggJII0MVb7KzEAywhEERpBizfU+JVfviisysyqSZovIZTsA
	 tSSlyJNmcj5XAlMmyxt20hOJS9eBRfIrsownYXml2eJKpJvyqpuPHYgI99pXozby7d
	 1CeBg0G6wSkCWJvBRv027qJ989dHlJuFTF9DvhiXmILeYZH0TfEUV7+Uvkpxa7ZeOd
	 79pVDep8F+5hWz4cMy6VKarOkm5nHUzcNrAC1XsV4pF7IhTlnxjtIW6qQuh3+Lq4w/
	 aPHxwiQYLen0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3B0CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082967368.13671.3375493693097761465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 400474b52f4be214f65c433b0666675f3eaaa2979b2e150c39b737f7a4715d34
Date: Sun, 07 Jun 2026 10:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780829673
