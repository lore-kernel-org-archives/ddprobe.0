Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542F1363C73
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778155654; cv=none; b=MD+lNezCXZbL30yX4LUoQ+aQeuC0tjzgH9APdZHkohAMi2vFGA1nwdtEBWtFoabIlYrQ9Kv8pKDFrjsw39zbpsUd9WE8ZXJZ4WHOzsfnN0RzZlIkdeSM2f/4oXCfEMrhJDnfTEDRK0Gh7/3Y+M76jDyleZmKMjMhhhtIWobiu+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778155654; c=relaxed/simple;
	bh=ooVf5wv98aFyDJL+jPsf7BAhiP/sOTc3kikNmq+mc5c=;
	h=To:Subject:From:Message-Id:Date; b=DlxE2TEzJr5gOKaUf+bpf7pPmiPMiqNPN6DpJrpfUtHsQEmrUfLyGEd/IFN6et3kJsoVRvT2XKmBXMd2cuMbDlgYDeKWSVRESeJCcHV+U9yRzsIHXDACIfmLt6H2Cz47m+V3JfhIBsQUSTa0j7RGDnBH9Xp8OZV0jaAnmTJVvZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QihLM7TL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QihLM7TL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF12EC2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778155653;
	bh=ooVf5wv98aFyDJL+jPsf7BAhiP/sOTc3kikNmq+mc5c=;
	h=To:Subject:From:Date:From;
	b=QihLM7TL9Jjf1ibcM24BvYUjkpleRPheQz1z8lJD2URwX4sZyhvXw1bg+Yxdbk1pL
	 P1+2USbkG/FROTGQW1XjfIZ96Z9gYMV0GUxytwFZSGU/mj51kltfWpwh9C4H0yVWbN
	 1cMt91v0Of4APRxlmGxAocaYG047jyL1+5riOwc0C/RDzubDTnS4qcfOKWud7h7CIH
	 MIFxXAKfp+MXmFnUFM+WDooBtdgHMojLFCJIIXjGtQACqLoIkY54QRYKHr5jlpOAe/
	 qeRtjADdp3DGxBCr9Yx6epN9lhvRssSzfGaB+UX2EbGlzl0mMnBNeDcMkzZ94vF8vk
	 g6qqJqBJfjczw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB01ACD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815565369.23383.16067747416506688315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9df9868feb2d1e5ed1a87806f0537914cddb66069e8cd517bcab1a7359bfb8
Date: Thu, 07 May 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778155653
