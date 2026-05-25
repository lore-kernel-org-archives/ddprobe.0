Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AE61C7012
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779705154; cv=none; b=Hhjbl2RVHDOh1j2voRAYgUufVFPwhsEqExrsKVCskmkfV+sPEyiICm9bVc+B4dB4etXc3Vl8qzGaZwO1oU2fg+0e3h5q0gMsClF8UsYVDJqpFddRNDhEyuPLYu5gYY9PPj2Q+S/Eg3Kf5Q6tDirBiRz4BraM1ONtaoGp1ttmlx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779705154; c=relaxed/simple;
	bh=m6JYF8RrvdBJ5sb9jdIN1RI2Sjdw/32I5waSypdPRQg=;
	h=To:Subject:From:Message-Id:Date; b=RNqEF5cG6EUgQOitXCVf2n1VRAkhRStwxRjIs38Yit6Z+Gb/hUZv+WcCSIPLJPIUA9PLe5oEcnAFYkm6oNlBbu0wpQpIFQJU2sAyHNKw0xG8x+lJjhyHBuikImJ89owrpd70BAp6bh/pi1L1UimdXPddSWrLgMEy9y/UZBkhMxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5P4fmyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5P4fmyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C476EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779705153;
	bh=m6JYF8RrvdBJ5sb9jdIN1RI2Sjdw/32I5waSypdPRQg=;
	h=To:Subject:From:Date:From;
	b=k5P4fmyF1N3/dM9IuWedpIj3VVPmldbKhTE9ZnOYCV5YvFc/3MLHVpjq2KAoNMBcR
	 NDaJVWHHLh9UhFdh402dauySV1oFBY0QBQJujTGUBLKYfqzGRknYxW4a3rhN1c+a3f
	 J4jpMHWe85yhP98+XoIF16NldBwANhNFmA5ZVGBIdM8Wxn2m/ya03YpQpKNOV4t5mU
	 KZrbLRWVTKXgJSvmGW+2Z8ANWEZZ7y3H1cO8DG5jviML6Dwmu+IOo6Afb8NmiP3E65
	 dqS7qz2vyL2UtAD02/6Gd+XiQn4qEsb7nFQRF8JMFoCyVn8y8eMe2J2dyZCCZldP/h
	 2xCPJu2uq2Vzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8B7CD5BD0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970515368.24317.9419613940621055295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401721f3c3065263b1515b2020b9ef42f198561fd0c14c66fdd1bae8c62a1544
Date: Mon, 25 May 2026 10:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779705153
