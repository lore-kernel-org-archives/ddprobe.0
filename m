Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C4A034CE5
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 13:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719149543; cv=none; b=rCSnMtYf121PxFh9q2AKt39lC/UnCzI1iDxVsV9FZE6L81KWP+EHQk8nd1w+h8E9X2lzuY1NtGabRE+Gg2OWgA45yHnKEI5xxyPn39l8hurVizy+ba1kVCPbhs5Pc4qNWGC0d23JcKgv3RRT6Ea7T2hKEGeSYvQ7/GzxLm1cvGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719149543; c=relaxed/simple;
	bh=QvTkgOpslrrNinFlF1tuV6pLaLl9eZ7rMXgbcHgUvy8=;
	h=To:Subject:From:Message-Id:Date; b=KhmH2aQE7z7R4pugXIx6l3B/b2FvPY0A5uKOcNdwAXSvmkvAxL/U/Qs3PDFzC3MgYGX6ZHpvEuErnSzjAOsSmpfRdUoSOo5S7DwNJyWGFvf1ha8W4kfdATUo36aOYqfRHmM8RLsEhcr2Tmeu9MPQeascR4BYugfJiKnqyU49BlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R83Qjt27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R83Qjt27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFE0AC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 13:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719149543;
	bh=QvTkgOpslrrNinFlF1tuV6pLaLl9eZ7rMXgbcHgUvy8=;
	h=To:Subject:From:Date:From;
	b=R83Qjt27EHw5t7kltOxgBYEryLDPCkkSgxtL8pSDzb2OZqhKs6TcKespu/fc29Ryp
	 9vEcFl+uG4etfBAqb0e53fk3CTavAYRMJRt3lCC32ZRTbYnF2Uv3cEu/PXTm1dCohg
	 t6WppT+vI3awRBIiSXDnVYg381HaAbC0FsrCFybJS2f+nsh3jCi2oTBIAxmNphYpUN
	 Ji2Hy0mxmpVe72+1CS1Heo6MfBOWPPq5oCAg0kNJ7dGp5OAM6ePcasoXtfITZHK+B+
	 yBu9N9GCrq646qio7TWLaYdgasuKRZx0wGM2iwbIUflfOASZ7cTybePm7QxdmJfPFd
	 h47jWvTlDJFkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB077C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 13:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171914954288.18595.5157635212336743410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88406836af326d145c38b0c66200774a582cf7e647a7bba2fc2982c21fe2825e
Date: Sun, 23 Jun 2024 13:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719149542
