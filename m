Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A26F39A071
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782804514; cv=none; b=qCI/uOkjmh0CWUkxI6rGScmZkJRbUk2SjCvQBhg31BQ6+JLPDAIELLL0Q1y4T31j8J2NFIxCRodmuidQjpybj/XOI3C1DPbqIIH9D0M3DGVHy3jA5fDcnTou30S/HZ9G7hnf9kdRTUySWEoaUOCrVYUaf0mUwXOemmrIOaaOFqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782804514; c=relaxed/simple;
	bh=NnS/t9jqlNO0BwPxoi3wIs9uxmxEOuPsXxu150QUwuc=;
	h=To:Subject:From:Message-Id:Date; b=QZHtvwOBvMTNTazy8uFN0KliRyyPVkhhCPdzgz3WsVqmrki/Rpz4EWx7Pa98ctWiZ2VUkN73ic7hBDEow+SE6AeDvbnI0QR5T7I6P8XeDvWmqR0AlSDDoL/D/B76wXZ6bHAJ2+qaVjUNzvV6Loa+l2GYdZ48/bwEZJ/Ukn6HLis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWpfm4v5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWpfm4v5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF198C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782804513;
	bh=NnS/t9jqlNO0BwPxoi3wIs9uxmxEOuPsXxu150QUwuc=;
	h=To:Subject:From:Date:From;
	b=XWpfm4v5yb9FwYQI6U2uPk9MOevIRc71kB0fg/4c1h4/x5py6SRge7yRTRljQKvoT
	 9LoFFBH73y9Tuavt+MlSsH3TTLc+bBG6TU92DYA4bjazW3Q6T3ervHTVaVcnT11DJ/
	 SYIhWzDVaXfPb8qIcedsuXUsAPxy3aXJPCVxkvHaFV54qWJdfttNs3TdNRCx3CyPLc
	 xKhG7Ikv5rRbw5yUJ7u6ZhkPF9d0hiypXwFD7B72T0fY7MVlF9Vo/L1oUSgyA3800r
	 EXdEIleP2oaPcTxpQLhgf7N34G569AomPUcmP9g+k3DUSXaHs3ttLyxZrvjGqGCnuq
	 korTVERT5yhMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C05C43327
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280451368.15905.16296259957509637140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fedba8699de34043ba108d97b8f67aeff9ff70ef5dfc34769167d6f7ff74861
Date: Tue, 30 Jun 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782804513
