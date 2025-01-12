Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2D3D2FB
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736654754; cv=none; b=ApkwnDdvLLGaSjm1c7Y7WxOt8/QmnadSNLh+iKPrUhV62AJ11hHV6vBT8O9v3GuzsFlqwIThfIhKPe/P5In81Ml02Mae46HR+NpwpHOV9lkNGMIf7am2qU6K5Nm9X0zohQTd7QjfpIv3tO7HKRFur1ZEwk5onovEjq0+pGs/vCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736654754; c=relaxed/simple;
	bh=itndEakOGeSgU1QA+hzrowK186/u3TWzq0RyhHNW0zE=;
	h=To:Subject:From:Message-Id:Date; b=ms3D2AJLK6YaNH+GkNrvthskj8iuayOfCufQNbl/YdrZaiLJKhuY1KxRQgfatwFWydaFfl3k5Gwd8gEr3DViQ2EixqS6xyC2iYWKr3jmduYUs4s3c2FcKOySCQJ4ePl9Abu9FKUH8T2sGBM7uZQ8P4bGNuvmqH2RKCBN7eGvI24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2KltLJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2KltLJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66F5C4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736654753;
	bh=itndEakOGeSgU1QA+hzrowK186/u3TWzq0RyhHNW0zE=;
	h=To:Subject:From:Date:From;
	b=Q2KltLJ7OvcGRC+Ywt0BMnQphZbtkDwb40sgrAQRQ11SODOk5vaz6IiiuzUOQaOwr
	 xWS9XGinclQQiKD62Kt/UOo2FoUYt8S1zvw2hm0Isb/qe/DNGSRfd4ZsfO473323xf
	 5De474RhD+rxkkO05Hzqx0OQJ+c0gMd9Zcag/+HCKzJJf/9QzBjAVru7hEU9OsSHKU
	 ADaJ5fiXCGnsalnkFwo6aL5ylj5PnixjOVcPiDhTY6v4R9hFfwaCMziV/YHiV2QwTY
	 Bje44XkYdkNfpid0v1bPvP2d8n/9cpoqcH9Mk32aiudhPLJid39ZqVrSt4BG7HwTi3
	 w/9Ot74Siebig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E81AE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173665475361.3957.14226029919775232678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 594bf525f8a1a5746ff8cae7c12d94e2d0334e35e5b06b546568f4a764cdc5d9
Date: Sun, 12 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736654753
