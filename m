Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A7530497B
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755194394; cv=none; b=QdhjG1OTZzN4vVG1/x0Ztd8AlBkRbDCwlBIgT58YToJKoicQTFD9ZH5aJgawgA8e/N+ijsB+kzfZMhT13HMlFWkvVj2ww9MBlMQGlPLn6S/RayxMecKzy+RFQZtEAB6Fr3z1UZhKW2IrKbFQASipRb/iuiLcmGda9UiLQr0GLDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755194394; c=relaxed/simple;
	bh=0eYvwiwYlVwUmXJxfJRBqzN+y5yYPyqiSuofXI6bOKs=;
	h=To:Subject:From:Message-Id:Date; b=GBxiW5nFFsf+DtnsG1DPuqerjkNadZa9ftF5hUztG6HPArLuiV0IfrfrciW2x2fJgL56kzQGKrQMHazPxbSHJi8k0MijPE0TK7IqnVCJW2ndJiixoSRuHcP443kcTQSdpj9+HuzKRXhtNFmLX3ZEBiSwZHm6FiqByXtuiiFC2wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvwQvTcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvwQvTcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A387AC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755194393;
	bh=0eYvwiwYlVwUmXJxfJRBqzN+y5yYPyqiSuofXI6bOKs=;
	h=To:Subject:From:Date:From;
	b=bvwQvTcPjq+iGL+/kHao4X9t+0FaOclMTbQVZv43KE9MR8jGStnzY0UIJpItymV/j
	 ZULSBZOvo+BqdczvGb9ELv9TonVhU/DAhbYbwb+nftu+Vnj8RpRohArLdGFTPBNqjJ
	 6DTg4uDfroZMbwtjdWCmOZQip7IYYpumowUGKo+Ij7rqXpXHhdlqy5DES+ilJYKTYx
	 auBuf9C5qN714o5UmJyhbQr4V7hPPKH3aBkb827pJ9Oq/MjdYKoidxGsyolRajPToZ
	 XHf5exThH4yGZYBHMeUblkrX5qVNje3fptLOPWJvGjnnENkX0J1KaQvVKgu/iAWNLs
	 jaRJwK2cI6OjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92313CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519439357.8732.16895403639204807569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00ad09b45a3e3cc221cefed8568060d569e0641a301a2c6c63ff58fe5f4cd7f0
Date: Thu, 14 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755194393
