Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348FA14A60C
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764999174; cv=none; b=Tj7FCxZY7E2CEKig5+n1cUJRd/0kjkbNOhZDY7BxWSMiyZE/8i1a7U1RHpYsd0pY7PdGaQMfwpjZqQXPeM/CZ2umEoPwcPkSIlioGO4GuQ582TEtnUf0L896rOHLG4WqD2hm7UpaHqRe02ELs4DXm8H2HkJobUsNPTo2O8AEeeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764999174; c=relaxed/simple;
	bh=7IennZR8uLq9+I07nuk95xE0vy6c2QmpD61hLEtrPdg=;
	h=To:Subject:From:Message-Id:Date; b=MV0bznLdF7tMuKR/B5BrRddNj3eCNRI/0vw7zUKqbE1rREGLTMwIDf5P7yyiHLFoGsLgxas8hoLC8FzhThrllUks+vsS6821cn/y18hXfTQ6/FPmdDM9WwTtgEAkCxTupgUPj1gf94L71+HkUSWwik3YyLrIJuJnHIK6qtGmmKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVCb6VVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVCb6VVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA900C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764999173;
	bh=7IennZR8uLq9+I07nuk95xE0vy6c2QmpD61hLEtrPdg=;
	h=To:Subject:From:Date:From;
	b=DVCb6VVWcvdySsBqJ4AEqYNMrDih4vCtlG7eGRfI47ZRD9J5E8uZkAU+fa1+3jNFM
	 IO60DEpaOIvUEIOdupRHnahORbucY4OigZ1InHgBmBK+00ua2eqjwbj1KNY92wRvqG
	 Sw/AxarG/tWgmurC1mY/mqVPL5W744w5mggJlpbEN0Wq03Z1mx8FkRSQ47QHSqWp/X
	 F4sHu/TI14uuU5ndC/RyQBeg+qOeyqlneRTWkkybCdnj9e6HNexRNJS5xYDf/OiTJD
	 JCnfwPIFUycdteoQNh9jDmlSK60l1Plrm6DwGVrKANyDTvk5enzMd0wYKalODUBvXK
	 CKrcvGayQ7/qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C50D3ABF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499917358.10677.14932198946943845155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b063914e0bb37e78a27abdbce040226168c83f14240d60e8d7a2b2e6e3ab460
Date: Sat, 06 Dec 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764999173
