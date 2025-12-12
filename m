Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166AA20A5C4
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765501974; cv=none; b=MJr6YchMn99KjhhMwNV6wnYWph+g0mX28iGW4LmG6+V9GbxSvchgJfOlceNHkCG8SUU4xnHalOIeaRpERLQDp94nayLy2/zavC8Ci8pk6HsX1KeJn4z0LCCnjTP1sPORSlfO7puV/k7H9a54YRCkUYqnWK/Y4A8RRxIFawnfea4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765501974; c=relaxed/simple;
	bh=yey6am3gpbra1gbWquNQd9Cqcvj8offcIEHIDRiJBR0=;
	h=To:Subject:From:Message-Id:Date; b=ohpHUM/MffFiQI+JhQTDEU5+FILSkOzYtNvJR0yPKigTO2nMDbWDGF+KIyiGTpd+68o27WQ6a04Vs5nSrDYq3WGJeE1aTP+OkO1ILR3MSJ0vgyE/LroXW4/m2jjwSLdUzlO+1AQRbnaRmDnCFa0M0ejfG8xDyHQDfaTpZV1gBxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqALp8uG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqALp8uG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B81C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765501973;
	bh=yey6am3gpbra1gbWquNQd9Cqcvj8offcIEHIDRiJBR0=;
	h=To:Subject:From:Date:From;
	b=eqALp8uG/xjLmT9MaCYCTdCjPrL3BeaKBJ3PQ6UElhEJLvTNdNVigb4fuZenZ37sj
	 V1jZl7lUL286BYaathmMEm9wRH/OjfPNNlIrRMX7Usm8zsax8vdUNHX1aYOR+W3ygz
	 ro4yQR5j1tLY74KS/UFLc1JEeqrqvEm5KCRt0Pwkh8aBeNNx+tB7w3ESnELUepo3ke
	 xvxuSYufJZd6iHmMjKuy4Ly4VLhlt2hL+e+r7L9dapgyvezf1q5kmLZpTI/0a73CxG
	 IMViLj5WPXcuyX0dZkylMdRytK2+MtM3WjLLqd7K7oB8zV4skFCWbE4PBM4h0wdcL9
	 SH5Kf2aIYMMFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CFAD43361
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550197359.21643.10635481080318065982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca3c1784b98b0a75c5f33877082b0687c7ba4a8e49f53dd8c2fd4ee580a98158
Date: Fri, 12 Dec 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765501973
