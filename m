Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318C61E7C32
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 07:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739344254; cv=none; b=DPbFdPk6h2SKFITJQSePxl/mWW+NBX6pe48NHkKT1AffWrwAUK8cdnDRQjQrlLsxQ0RFXwUqI6eQwrDh9TgooWGyE+SIolynz6hB+2OckNzl3mZNS5F3hw+IsXKfdrBcjw+g3HCLbTI07qBhDe/kl0Icc5BIm9Ro6TnriVIRmCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739344254; c=relaxed/simple;
	bh=03HUAJ3ett+fTU0hTpCVKexVostY3bqVA8q24dlh80c=;
	h=To:Subject:From:Message-Id:Date; b=FA2br3LwOJrC0aocUo1fmEuLd+mGthggg2nA2wpSndPH65QbMMe8DW1IeqXEOTxZCwOIuNYN2IZdpGC/ziLoRHatV1PJdQ0c2g2C49yBvOZtBCKLv3ztq0GuLfS6/SPcaaFwMcKXz5KgvOoOpG2wOWido5sOW+xdvf3uc7miEpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuJJVf1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuJJVf1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA85BC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739344253;
	bh=03HUAJ3ett+fTU0hTpCVKexVostY3bqVA8q24dlh80c=;
	h=To:Subject:From:Date:From;
	b=KuJJVf1chRCSoCWTASeBhYqMdISB+nbj9Gy/zIsXcL8+IosSNlxzpVHkolUk6HM5b
	 SY0D9PSgoU54Nca9/4u86VWzXOjKvy1z8laxpTxuzyCRBH0zQGprgZ4gBZeOh5Kgc4
	 K04HxgjQP7zxWjKb6uGgkUAY2MLa70QazhjHrLqmO19YxaMvW0lFKoiVy7DYVY6R1S
	 c8MA09qTAAGGbKzIGpmXE1OzyEtSoUN+lXh6CtRFmi4+O0JwiJ97b+MnFUv6hWodbS
	 HF/rZTizLw00knCViNinRUYU/RPPUYvK/taqjD9kGPAZ9zo04WCyehNaMXT58pZKm3
	 YUEz2ukYGtQeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955BEC0219E
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173934425359.14918.15606061185155798238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4c3f8e0ff8af8cbe98cc7f7ab256a321cc9cbc64291c0b83b67c4059aa8cab
Date: Wed, 12 Feb 2025 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739344253
