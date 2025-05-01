Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306048828
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746079794; cv=none; b=rcuIGgi9sCIV7LNKsJDsX8CdLPgoam6lFFRl7VEx/e+ovDfk6TxcpgZRovjZGgLql/QADoI48s3SRQYcvisdjC76q0SBp/72d91vkd4Ctn6XycAoU7fepq0p2x3SNdAXb0nv9wDegZRvD2gp8Pg+FwbeJj0tfr6Y0iwheyYBiqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746079794; c=relaxed/simple;
	bh=rW4GzBOqS9dmk66XABGqdQE+Tw3UcaAB6v8M5wPM4pQ=;
	h=To:Subject:From:Message-Id:Date; b=RMb16JfPjkYDgB/HUPd1ZLYWncToSEq5wIOupDdTjyj16qqyn1T0xCJJbQOv4WTCOuJz05vnPPSqxSYNKQJrbU/XhHmDLo6dYnp+B5sk8172l0dCRee7G0mN9LspanBWKz5Q80uNUXw9T97C1e9QpcHQsEF1m8YJbdoCw0fbw94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmXAeIbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmXAeIbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C20C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746079793;
	bh=rW4GzBOqS9dmk66XABGqdQE+Tw3UcaAB6v8M5wPM4pQ=;
	h=To:Subject:From:Date:From;
	b=CmXAeIbAWDSoF+QnTf+L066vhbtd7ijj3xdjsAq0/QWOp3oqQbqRSt4g3h9QCIa6e
	 y9FMvFbQ2fCdz/UN5/NX/d4Yw7KoPwgIOEVHCasNqSHqjp7yg/w15tByI13xXD5H6v
	 F5Mdt14dRGSFS+iBK7orYeto5SrD4Kymi4ey0nyX7fKhYvI0uNbfbnC8hP/Z7ezzuM
	 XmFS28hWViPsRw/YakOI+BWtdtPs9z2vQzcJB5qkZbZAZUiTA2fpo+/YzmgRi1O/YS
	 EPmAoU/T/mpaqaS/0Hr51lcRYNZ6UgI99W//dZRttlDbPU0i0NynnpD3Hw2zBy2NOi
	 nj/i6v7UimRlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D91C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174607979358.26755.6445343348328886679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f80bcb24d7b4d73db50f711f80ac04210d4abd30595d68bf5e677df50fa1bb
Date: Thu, 01 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746079793
