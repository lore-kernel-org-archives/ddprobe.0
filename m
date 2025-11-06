Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4220D18EAB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762402194; cv=none; b=MwWvP01lWITEcaywHrcPpvg9ehmq/BBvOJj1cCV6Li+33XQOZEccGrAmjISuEaZ5mUB5+/Dhn9g5aE7MpgZQhsJO4tnZkKTOQI8GtTpFxi9f5dN/+fgBXIkW5xfMe5/yDuMpeql48j9fvWitZUIhYHIvtfMFQAI1899u+wdfUn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762402194; c=relaxed/simple;
	bh=TCo4Dks/JyIFQpih33BJgi0b29/UcOG6pc5EBdSTPq8=;
	h=To:Subject:From:Message-Id:Date; b=hPDkd7hm/zUM7uu/H1krB19Eh6Qo8Q/4xr/uDnF1cQTYV0d9W5NVNprIb5IXRGgj44HKvJDtBjRraklOzj76E42iNGq1YC816eP5K1r0qBtzHVYzmVi9ZNjtmxgvvp9V6OHNJRQzsyctRMnshR57TOuKtV3x4H3Y+jCZ7qrI7O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvsT4fC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvsT4fC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEACC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762402193;
	bh=TCo4Dks/JyIFQpih33BJgi0b29/UcOG6pc5EBdSTPq8=;
	h=To:Subject:From:Date:From;
	b=BvsT4fC4TZTY5466FUCpjiDnkw/dxT/DInrFYy9o52VekrMtZPMTSmLPskGUngULA
	 Nmg0XVQwqxTY1bOO7KrSAiN9bx0meukIqi5q0DbwhZDd3Q4o7Bi6Vcnn/tZP3pQUzh
	 Duh2XJ9Ba0Fwea+4gjzW1EGVmF5Tg9/6vU+QSIXSu7ltiGKZjX7H+BjxFMDyLCGgf8
	 ZcXe2Fguk1pepjZov6jHTjLWKGDu/JVDXMm7/pm0qv9q5naiynCwXjvW6rjJ8XWJyE
	 5JHHLkkXYjmsL7udwG3bPEYpdCLQZozL4RnE1c4E18M0qOp911qnYlSXblNIRSZ/Qy
	 vf8goVPjTUF7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB25CCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240219358.6145.7118021619416132585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ed9c15c811b2d34813aa02b64d7cb1cd40c567216cfd1a5116776287c3c84c
Date: Thu, 06 Nov 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762402193
