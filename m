Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E20A1A76DA
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752555595; cv=none; b=ASFKBnEkbzLtZM+HoYxoWeRLPmboyEEb6bKUY60k0r8YrwKNdoPg6Zz83FU0SbvzSK4pJ/xn4ER1sWWvPXXEMMx+KCYekHqQ+VDHQz1ztJfMVJLsFvTTS+CGTRX40mf/nE0kHtiGmzV6oQShzvCx8hDwtyQAAZeoVvnAlFLJLtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752555595; c=relaxed/simple;
	bh=hSw48MiK37dO158fZ186PFefgcGwJ/R9B577YnTgWdQ=;
	h=To:Subject:From:Message-Id:Date; b=nTc3SLtdW2b4QyvGqadbIvbelSXDOf+ZjTqmRqOWTuTf/CkK1UayXGhIoo73b5ZrZVZoEFlCzu1nFSABNFCB2jI8XNIJUA6XvOakUFaEwtlqHVsNmmPox2rroZms0kuAsy9B5cxB3va6GTW9hmfuBsQ3CLlpD9Azz5k01LgUf1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5usCf7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5usCf7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AABC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752555593;
	bh=hSw48MiK37dO158fZ186PFefgcGwJ/R9B577YnTgWdQ=;
	h=To:Subject:From:Date:From;
	b=l5usCf7QIAIdU+LYWoWpBGKwYGKe8Rd9LM3Yf8hNveZQLQFOLeVAoFyt3mFtDaVqt
	 gOdIEY5KAWvhbOQOIW+MAmgxP3LdMH2HhTdS0M8n+W6Jdv5oDPRx+PZNbC8M0hTV/x
	 B63Ck75axW6YU/CbbPVG9oJbm+nwmwlC4fR+VRfG7I3zG9sa61bJjrelaJpWMzN8cM
	 TrIvP9gEUtYbt5D5KHcZ8JFTJpKNoDN6G4/FzL2jwjDE2sWzjLg5LkI0ms77on6HqA
	 /c8/SDMfLUa1EYoH5oIpAxnGxwCFOk4o1T3XJVnakjSJwfVh7KueyoblcMFCLz2rMq
	 T2eTrZIkAsXYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925CEC83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255559357.28118.18384874096240616413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9b44d027c9b472b5c8ebee36f8e90e3b612346457097bae92fae011876517a
Date: Tue, 15 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752555593
