Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8A340D57A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781921794; cv=none; b=OdXuA+n8v0GxAn9mpBXEmhTCQXXIsScOHiB57rz0yxld2FLgw1afmmxx7tT3EAM/X3mVLUO7/4YrZRC26HD4ts7W/1FC1dofoHIl/foSN+B3o1h4kjr+oZOu64ZSuauRG4gxIzTGcqDDoDEQ/BTtsrCnaSj7AHI6IXlC/scewvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781921794; c=relaxed/simple;
	bh=3EX4j70hMvirRLdCpGaHWmp0/bAfd8Tzm1BPql63xQw=;
	h=To:Subject:From:Message-Id:Date; b=OwpZm3MtA9Vy9Sb0NjxTdddDqWDFPd8QZXV4GF+eWDhGMfYkCsSlw2N2e2a9L7MyNsDqdV0bQ68Nnw53RAcAzDpuoju++41pNw/Ys3II3ymcqwVPGkcfBohqMeSCRCDCsARKdHpI+jt0Fmek/R495EjerCEvGwFUOTcunDqasQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fepJx2/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fepJx2/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EE3C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781921793;
	bh=3EX4j70hMvirRLdCpGaHWmp0/bAfd8Tzm1BPql63xQw=;
	h=To:Subject:From:Date:From;
	b=fepJx2/g1ok8FyyEmRPPKtv0Fii3Hoeh7q0j9ZxP4hXbZqAC4zXvxTonGQRBDDNf2
	 m5KQW+xsieAowcdtiNQc6N+0rBJLnhugtSyoxC0S/Ob199BC9r6b8VFctSoSAfbszZ
	 Ek3mbmbu+wDMZIVx6NuRLzGsVyZaY7am46TvKP5HTrIuAhRnlQXTTuaTl58x8AFur3
	 WLiWXtUxKCspm/9NBvc2SROvMse6nyH8lmLM9XKe+UxZjdoiB0xnqnVzkXecHITsPF
	 KIVmzqQzOTMlYluPxcc7Wf/XS1BVjOmHuh+3wOyudYYOjW2SFTPzFCRnTVzCeB/H8K
	 qeyVbnDLFdPGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF30CD98F8
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 02:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178192179369.21959.3270582524815862972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3941680ef5f34bccfbfb6db8b2505eae9d6ab35c4525aeb25383bd999a82ec5
Date: Sat, 20 Jun 2026 02:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781921793
