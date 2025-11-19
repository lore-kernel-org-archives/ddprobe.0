Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 803D52882A9
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763545914; cv=none; b=mMqLnSuApuySDmT3R18ljkXicPif1BtLksRXHjPIFuFnoj9ByWeV63jL5bPcuL/NYE/b8wlNgr2A9auvp8QnQy/L15vAtAieIyODFYB9KxsHI5Hh3LmKC8oOKK/tk7YGhPUlQlTKM6bjBRg9bDvEY26eFP5uUAB8VXjAIckKhDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763545914; c=relaxed/simple;
	bh=Kwt1N1MGRi/um4U9kgJKqQpRkYsqcL2Rrdh5z4r58VI=;
	h=To:Subject:From:Message-Id:Date; b=pRoC5vGmbDpVNS8htEXdE0SrVs0T3z6n6EaZ5CRnynY00lNn2CmV3ws/dKB8DcykwzyDN0MBsVvEHp6l+J0a6Dzlw2Ok0p4FHenznGaO591mL0qp7vXTp+tEw3tcLVMB9K95uUuB/in6CMXh42BR5uPOB6A8mdB9OGvJYUsSIcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEOTB5k9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEOTB5k9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A13C2BC87
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763545913;
	bh=Kwt1N1MGRi/um4U9kgJKqQpRkYsqcL2Rrdh5z4r58VI=;
	h=To:Subject:From:Date:From;
	b=OEOTB5k9rm9oSJ9BPRX100UqzKREjm0NxNmCE/H0pahiZeXanypxLSFbdeXS/4qP+
	 TENFdtIikjfA6Udwh/U/U9n9o6n6bzjmV0xjt7dLGiRsYnqyIY7ofPbFi8SWmPXJ3M
	 JbN5WM/fmhT3ZnoakHmXhRsvHZf+WnaBpOmdilVgPBx9EEcfzoAfE8JOr2TKYanh31
	 az535W7m8FFPZf5qj43or7S/U0A8QD8/yvtWIXPafs1iB07zr3wbrPmsdHxcaGwiNq
	 jsRzk2BP3DW4ds1j7ghr3oGLNEYzwS3N0IaJA5gSzBSVRtN3x94oTcGNGG22qGKufA
	 dccA1/+d3rl0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90910CF258C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176354591358.390.8109768890570835364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31b9ef48310ec7fd61ad6db3da0c122a0a936fba1a40e319f748e727cfb11d7
Date: Wed, 19 Nov 2025 09:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763545913
