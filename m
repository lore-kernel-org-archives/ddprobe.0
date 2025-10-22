Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2FC42741DA
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761164993; cv=none; b=PbUY1zGVjU/5FHsSWWYZF3H3H8VsMNc8IznIPMfV0tMm7B+I+eRIGgXRPtgPN2rQ+rosJOz0hxYKA9yiERgVnFaq4j6y2yzD4uUmcrrp61VbayMQLXz6S77PpOHTxGnyTu5jZ5+DPPxQPjkJURsO0oD96xwWaqXW2ruqUcHN8fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761164993; c=relaxed/simple;
	bh=zTgJq81xgqtW1tb9FDg/0XHc9gSBdpRHlTwi8EUoSvg=;
	h=To:Subject:From:Message-Id:Date; b=Th0wNQFlEY/+yQ2AdzU7vJNj+ikZ7SCRT/eHTVcBbHjD5oREVLq35DzkqI8UO6ukE34DcIVDgSEgs1xv3pK8e8H2l1kjsaWQS3dGwFF6B+Unl3K6Rz9TJsnr1mN61EKO+YmYWXMU+6wd35z0j0mKWtSQC+Xy37KNc4Uj07RdDQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngDstTsR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngDstTsR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0F4C4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761164993;
	bh=zTgJq81xgqtW1tb9FDg/0XHc9gSBdpRHlTwi8EUoSvg=;
	h=To:Subject:From:Date:From;
	b=ngDstTsRpmDmoz7m/Tef75AwG5TwuOIA1frR2ZlL/tAaLKb9qb7951JfKwj6ioqjS
	 VRO1lBmLiRGs4oLrrv/j4mNGool7en6uHGIFKihaX23RzPvr5cV+HqbpTCr1fCWkWW
	 /mB8HDMBseeR4vHaJ45Jqm0wuIt0hFJE1H525yqVdPXoolOWoh4RokBI1QaKlfTsTM
	 5QNf5Sf7UFHcS8K0mvld2dUfPgTkKByMNs/PrKx2jzcnuUSK6kLhSxtxwh8Vc8ZcY3
	 ZMj3H4L2w9XlyL6lAa1ChOJpDy6zfIW068S6y/RNvOVoccGBQo6xDdwajz9UZPX7uj
	 PSJpKb4ahTVIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90221CCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116499358.3441.2562304524499581618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5d9c2991dc2aa7fa673a11b1e6169fba9c6de7f7790f66e18def08753c2811
Date: Wed, 22 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761164993
