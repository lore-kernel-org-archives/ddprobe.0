Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2642F2C17AD
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752620994; cv=none; b=ODHB4TtYf7m9xxJmZ32U00JzJB18Qu2lXLwFJHgDwl0qir7NheUPuxR0sAvFllnoCVrBzIdou1itta2rpe9TkptHDM++8xJeZGL0/K6A7Kj5sfMMnxD+RCIEuG1Hg+QtPJ/SsCTyjjjLLaQU/Q8RnY0Qa1sVSnKykKzOkfs5DW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752620994; c=relaxed/simple;
	bh=v9EkzikjUUDLz0jIIgXKqdOd6OrD9cYt4q+SNNkg+m4=;
	h=To:Subject:From:Message-Id:Date; b=qiZKaeTvSw7zoLDlP/r4ENohifn3A2IOmPAlfbSc8ASlMO9MZkuNX2xH5gnaDvzPMR2y1ZHYZLsmC1yWTxNczgr7od7oJPiD8w3yQM29L1/c5oplIr5LgkWplDpbhxX+BiORPH4ePg3w0e0PBVsf3zAummDUl+C8lcbpFggFexA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaP+SMX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaP+SMX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBAAC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752620993;
	bh=v9EkzikjUUDLz0jIIgXKqdOd6OrD9cYt4q+SNNkg+m4=;
	h=To:Subject:From:Date:From;
	b=iaP+SMX4HZIm773+P71pbbjJjD3wEeOdYP9F4Q07QOWiyYd/q1GM9MJkEzs2tHv22
	 hD6lbDAX0LfAKBXbSYTOIeMEjPXoIEyW3Yrf7ovH8uVuVuk2Hd86+bqNRaMMXfWTJz
	 d+CPyivfBbvUaQMLPb4BMhCk+G/KWLhCj45cuhk+GL/QG9gpb6e+DsfBtK2uOnaUF7
	 C3toiMq5JesJMEzlFRyFfLF8RNG1Caq1is7Njc7+z2t9Y058JhJ9zTt1mkGiR9Nn+R
	 8XeT6cxfTEJcvhxoS3DibFQ8jOalTk6fmYElZ5kHufmCIM1dnca6spL0dtpZ2SMqb8
	 cQ7hXVUXzTsbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E5AC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262099359.14818.8967751466240255890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84bf44c04d1c143f22bccae050cd0a304297e386c66282e1bcd0b544a0d50be8
Date: Tue, 15 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752620993
