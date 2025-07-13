Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC38226D0C
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752419394; cv=none; b=tXq9jtAYf4vMDXLbLKfl+Z+yGjeWIVX775vU5xkjejrQtlBMR+tJYQ/53i6EHzBNkOfT5EbmPowE09aF5wr4Xd/LGz3MAVFs8ZhzsPkhy6bg4iUZjBg+mz4FmJB5eP4jPU33RN29leDMfU8EO/+hrF4JFPzugcHKt+HhUNwxZk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752419394; c=relaxed/simple;
	bh=29AxzHiPz95gnAQ7QhoLh0DyzKZrSW7phLpSsqe7rPE=;
	h=To:Subject:From:Message-Id:Date; b=NULv48eUpM4ANB0FKKBN57JCVWqUlm5FEwLZWUii4Cr5EwQzarIZX9hKyJ7Rs+KWqEAc02vGJG9dU60XE1Nh2++OZm4vKuuwrumxo80XUqn6KQ7xZmm3Tl4agNAUKOKxCi0kb8BeLN0uCHkMhbCbu6lx39SUruysBXKHlnwQIuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbW51ynK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbW51ynK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0016C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752419393;
	bh=29AxzHiPz95gnAQ7QhoLh0DyzKZrSW7phLpSsqe7rPE=;
	h=To:Subject:From:Date:From;
	b=QbW51ynKNdrm1bOcfwUSJ7TNN6j0xdQ2Y5ZwZjckzlGMbMPTIRiiQnKgLpdI7azKy
	 LIcnggFdA+hCj3xgJa0MsMU+YlySV6RkEm0x7QU2n2BY0PjskLtWYuIxbpV9d0B/Xa
	 sJSboywiDK0EPj0oscCcT3th76ZxI2mkuGCvY8zuqaJLcEdmvdljw/xld1lCQfbAQU
	 yuYb4qy8LxQLAP3fOvpqDlY54WSVcm1SW9/mFNYGC2MuRi+VV7JibM9++ZaSZCnyM3
	 /hC1lgsmN86xacAy/OJelNBcwNS3sK5QJZlHcjg46w5Xy/Jrj/2Fz20aJCBK7OwCOE
	 DLPwwuT78FvtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E693C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241939357.32524.9003750023417522859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ddb4b5ff607830a2b24166a252b206959161b8ced8f592e6a3d1dd6af067484
Date: Sun, 13 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752419393
