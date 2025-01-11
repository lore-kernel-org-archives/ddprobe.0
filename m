Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB2A1B6CEF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736629554; cv=none; b=Gk9dnA1Kkb6JdTgv01fujSeyWlOdQUN/5ytOXzcYtZ/pBp/G9wVLAfmFIEZ4YNm+z6zZYrBZOtdVIPM76985/LRmo7ZJr2oU85C+WKXTAY3YAVYsK5AbwAHg08XY5bOCaFgvzqFt9YY2L9B8S3DxKcAXM2zjIRZftSzMxFM6EWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736629554; c=relaxed/simple;
	bh=1RNCDAf6TuQjzfijsuPIeFQiDkpU2Almkf1pG0dfrYc=;
	h=To:Subject:From:Message-Id:Date; b=Pz++UocEuKpkDjrl01VJku9+1YGY+CnJsxQcW7azYtdQ4v1zePh48kEj7xvICzV7ftIq0gWX0+AwQ07Phxf7ocGgywCnfmBav2ySwjmHb5hNNfvsP7P9MEh80may7qBGQHBh4RyaFOZmdE/jkH0DC/H9EhFT/HEyHXdE6PAVvhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWIR4VdR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWIR4VdR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A841AC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736629553;
	bh=1RNCDAf6TuQjzfijsuPIeFQiDkpU2Almkf1pG0dfrYc=;
	h=To:Subject:From:Date:From;
	b=KWIR4VdRpaz+O3N63Nu21uiHzOj0L5S7y/hRySqP0/oSpus0dUJ3yNlLnNnEQ338Q
	 Mdl+Jha9MEGlonY3pTmMTGYK+5ZRuJ/r5SDxwtKn2WwjklbUM9fDYc6wCGHE1KXGit
	 goY5i3/v94/55ogiw9uvQ88g9d8eN0P8T8SeSaYqgiYOBRcXudChYZcQF/eJ8uszwb
	 wUJMIUgykM7UBtbOpfAOoWljozNIF6UaIvPesLzCdygTi5bLg8UuMssPOBTpac83IM
	 uM+gc5eMVnlh8AAo+2booYBNipbnygL0yTPSfArhgHR1VFcH75pDiNbSf/OFltyuDC
	 64HxbD8M3mVuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F49E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173662955357.31808.2411695433445242138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506c64f9a4823e7752260d263a1f093d819e99a3391382e06d70bb4f5cabd7ca
Date: Sat, 11 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736629553
