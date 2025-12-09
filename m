Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C0D27B34E
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765266774; cv=none; b=GiA3ChRVIND/6C960UoYBC3KjYWFQoHt0K9x8FYdEcKCvdPnv85U4munNFokqgqE4ncza/GpgmsqGkQm8dPZ+kVUzFqev/DYoUvZePf6cr0rf8tDRnG4LRNqcyt7v1FaseLZgctUJdVyP8+92fwyGUfrNGsoE58AVPdJgYm4YCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765266774; c=relaxed/simple;
	bh=B8MBREt8mYF8sMYr/TtbSwYlT4Ug7SE3ulqfEMdP0RY=;
	h=To:Subject:From:Message-Id:Date; b=ZQ1jbU1uXeGddTcve4DYr6TuGOSoM07vGyBeZBjGphGYZ7mWg0Y5vIcii0m5XBlndpoUuilkDYIXLs7qV4RHFKtCt+9c6+PArUdkelnaXO+rhkDJCo1ZTlfiHGv0NS0YFBvC3xsccn5kl+FpfC7dBcnf7KA+EsGQxrx8Y8NKBkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlOxj0fR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlOxj0fR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ACFC4CEFB
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765266773;
	bh=B8MBREt8mYF8sMYr/TtbSwYlT4Ug7SE3ulqfEMdP0RY=;
	h=To:Subject:From:Date:From;
	b=YlOxj0fRHnwdDHhYA3IxhKp1jatXSYjRWDrpO4lf8ZkynsTSq+h5Cub/zCQX9Babv
	 1lpP2pW/cXrzIl/OZ9341wxq5MFQ22vz6agpZNUu25Yp29qGvr5fQikwad7FzB6TXG
	 PaQLojK/9T4bdQXf76o1FwjnSEv/35oYkDzRpuWtKq9giQCJj8vnuJgayePyplb5TJ
	 iqG2+k9CyMkrI838xhHc2cxWebcpvUOaQzkmf6jU9U2QiKyDF9HETQxV9mRy9486Nb
	 LRIao5bIV132rKuDlMbOCR5Ti7/V2bCpmnPyR43spxLG/1mtspaY9tX3zsiu1zQT6P
	 ztadnapCRmkmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92584D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526677358.9801.14883517957746431108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da9c5b870b8ce2627e033a6021f1031dc6c183c7655faf7573238b687cc02e4
Date: Tue, 09 Dec 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765266773
