Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BC32459DD
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766181234; cv=none; b=ghqIf3oCGkOWWziwcq2T4r0gBer+c7aVrqimTG7F5x+btcofCgnfxA3wtrTdgvfu4MwGkH1w2JMkznG/m/I9O4J5edvC1CnbnudXzc8q9b1FaMm3mYd35wMGUF+4Hl3OVmi+++Uz1bwY9NlJPJRSpqUfrcNoeEShT0V5kWlGPjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766181234; c=relaxed/simple;
	bh=46nuK6LyzH+pBgkm7S6YqyJ+k7O7jMgFSNhcIpO0MJE=;
	h=To:Subject:From:Message-Id:Date; b=F6YmhEXf3nrm/PswhDIciIhH+wgsCM8xAbkd7u7b4AcP0R344YzWH0dsw2e+4q50qRmvB5P2oWll4Nt4G+BHu2Cc4RXAdLNKlbXPMFaetw+xEnhqmDdkP+qunyHAzS0DT+Scp4vXxaBoNXZFPgIrIjRzOkdyhHgThzutIvmKwt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkbSwmVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkbSwmVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A71C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766181233;
	bh=46nuK6LyzH+pBgkm7S6YqyJ+k7O7jMgFSNhcIpO0MJE=;
	h=To:Subject:From:Date:From;
	b=qkbSwmVjCPKEMx+pomiZ1CUOte/z8HQyoPkmT4zDQSjjVhtlTrFxy+xZr+bgF9zV3
	 CNtw0+xZSfDN2oGomC2y8B/g9Dba43nF4WqNVYXMsiqkIEyc5/PCFE93qE7KIuJTcr
	 dyNqwprY4/OCH/I9bL33b5fQhwOAqlGc/9ik2pO2lQjRwVEUkw+v4Lb+rkihu4//w/
	 mjwUePmcyVTkqFzC7d2H4XYvt++hxyT0zhLX9zN8gqYiml4fnDylsuNjtaBbrQJ30i
	 oXlAC/5+8TG0Gy1M5N5uSQqwawpe0FyUrs6irl0p+uMb9eMnC/eP47kt1zXsst1N22
	 AgrNr1uwz4seQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928DDE66891
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618123359.29227.9538882934032356553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8620a94aa2fda5eb02e6eee015755fd11b7905aa710c63ae97e7bcf9ea5f4d65
Date: Fri, 19 Dec 2025 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766181233
