Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6EF19EEC7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719246143; cv=none; b=J1sf/RmtV1qA+ttB1D6Js3s1lypyTbjRhGQk2zbNOQ2gcHQPBbYsXCuG7OkCNn/i81onOKDx0BPgHOLCsdgYu/9SBP1vr1T5oRwiqYLfHUoZcOqhf4zBlIlJc5WyB6whtcLui599Z53o3RvzamzKRAAcmTCozT+63h80twq3NY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719246143; c=relaxed/simple;
	bh=5pf+vA3C7AiymemH2cg7m1SUVUT1pMrDdWGMoYrusNc=;
	h=To:Subject:From:Message-Id:Date; b=DB3wkfHLh7+q397ssJFD4oTQTMUptScqMm0KKZswOfJcStnaT1DYdDg2df6Xckc/9scrjhsXBfsUoBxduVA9/kyeF9QBu5mipD1pVCJZbDObOEMVXRYzwQd6H1CiRPpezuJg0rhOsVmbE+9utyA4qVAivWWOxrQLztzgis5Ig4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/e+2Qf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/e+2Qf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5146C4AF0C
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719246142;
	bh=5pf+vA3C7AiymemH2cg7m1SUVUT1pMrDdWGMoYrusNc=;
	h=To:Subject:From:Date:From;
	b=f/e+2Qf90i5C2qFa1oqRMieJ3SgrHRq7WF9n/kqF+RUgKRc4hCDCVyE0Tonr6wKEt
	 fSqxtVcM+y0IOP+40ct/3wq6FLnlZ53znLbjUQCNjdEegQK/x0x9UF1Mat5qrx+eAu
	 UapO8AuWmguDFz0jB5lB8tbJdxKbkGDzucOLAxzZZeUvKgNXy416T/4Xyc+nDtKoHn
	 XcUrVGX5ueP1zLVG9nYM6y0zHIMXIeq3hf8LlXMhPeXqocgOj0KXy+aVFddS9SA6t6
	 KW9bhisMigjq92OSVHnMwhWfTe2ubbzC5yjShCRq9MZipJishQKk5c7Lvddo4nRJHq
	 t/Bfwr8zMTErQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0030C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171924614277.4058.16097828036753838574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfb1ace397c4f20366d6934a5fb5639548450787ce898e3b76837ae9d7e9e2ab
Date: Mon, 24 Jun 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719246142
