Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F1F45039
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791144034; cv=none; b=cF18d5LDfA1Trcnp+N9+glB75ZaEVVY7zQ2pHst5aS0TA8MKbv0BSS9eLr8iuW+i7iYf49uw9H7aL/dG+1PAtBilxJZnpfdoQXLJ7EAG4lCOj3Nw3tQnQFY9c5IsbQahtqpnnS7zRoc9fVBsbdfSnqybXM0O9VP2LKsv/+dmAzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791144034; c=relaxed/simple;
	bh=nirYakaYUPuILnOGaiVa+fbuvszXiELuy/vBPXzbZ1E=;
	h=To:Subject:From:Message-Id:Date; b=kHgt29KeoYx60kaA8jNmoKUplj81B6SeP7ARfEYf5tExr7O0iwnY5wB8SvsoqxdsFylBiqkQHlxCEu4cf1B6ilh0S5y3ClRVKDfIyPO6KbuvyNnoEWuVWQegyZBUnvCE0pelB58Tol3iBJ4ts5z4pTRk8GgdjTq3LlbKZxcif5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIT8OK/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIT8OK/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCD7C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791144033;
	bh=nirYakaYUPuILnOGaiVa+fbuvszXiELuy/vBPXzbZ1E=;
	h=To:Subject:From:Date:From;
	b=iIT8OK/UTowrLsvLIdBGV6xYk9B0HhX/r3KWqS8iGB9DZ+S32Nzh5noQDwPmh7tDE
	 a3USuxSgLmUSC7mTR2VlOoYFZjZUEPry3lFDjL6Bp7zRvJn8huZeAlZ114eMXkX5Z5
	 7z4I9txPhBwMX5nvR7a2k6yO0AP73A8YOoCeXU1V5gKIRziR8tuyoxZ5KwRbunLj7B
	 EnsGH3+ikv/k0xHhUCpKhT3ExeZSZ4xX8fgow5hymU0/x/XcpAi4hrvWCW63b4IxEd
	 wum9UcYRzosV1vSKejMBMdglUOFYrqwIFxKxPvS/oWP+p2sIfqPz4DFoOdpReXS8ZK
	 5gEZQUuQt2Snw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FD5CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179114403368.15860.4583475257222142144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81494ef98bc495aff63cb3a7bcf01f640831ffa178b68e93c11e4d99a8fa7e0
Date: Sun, 04 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791144033
