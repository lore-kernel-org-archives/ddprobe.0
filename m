Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D3C2EFDA1
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772094894; cv=none; b=CajhqzixaQbvub3uEYDUKRtrbcODH2CFRMYo8e05bBQLP4+Y0nSWnmq0xXYAIf4dO/3k1uBUCYab3lDkava/CMf7wbtscdmRf+O5s6rjCThWtHKcDUmx2AvyfnvDNaOMVc4WmQ+w8Heef4AOEJSQkdljmDaIZnyrxsPJSDCWoSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772094894; c=relaxed/simple;
	bh=pl8kfY6rhH8oO/YpG1t95vKh3WVMRAxqpZiIKtDpGlk=;
	h=To:Subject:From:Message-Id:Date; b=XcftcOYTEXW8KUQApFilWee8zr3hdtkG3xPxU/8PjvtxJOhAVuoD7T61zmM90OJsAFIBjhZ9mTWlpOFc3ctV0SbE0SSxWaj7DaVWlOh5uUa0J/c2mhNoypeRo5G8Q54kfjM7J+RYraaqAcdpd19jf6osE6ahMFSR80yjw1H6fXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6e6grhZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6e6grhZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF8BC19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772094893;
	bh=pl8kfY6rhH8oO/YpG1t95vKh3WVMRAxqpZiIKtDpGlk=;
	h=To:Subject:From:Date:From;
	b=Q6e6grhZdkHW7+etMEGOlk98DzlXZksE7Gjdt4wnYRZaHv1OBElovg+wmwv56d2BO
	 eg5MjuvLMbYfs/AMQq1LR1Arz5ZXlbXNv1d7ocBtOF008CRkvyZey60AK71enFOjE2
	 NS7dhr9kRrx4hcHXXRE+3CPrV7oNsYA5/xKs8S37oT/wvh129T4ouPBBqINaa2d7Wi
	 /LfcrPuWzKxe7E0GuWTga+l03SSUTP+RtY+Qjw7Xs7YF0urSUBJot1vgOI96osZ/cc
	 T8SU8tEgSA9BHyt4WJrwEggjeyVYMdRfptO2eSyKKiaEPqVsULxFxj2dbefcjQpPtV
	 vWD3yAdfLA2KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5BEFC590A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177209489363.11710.15077762578375567488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee44c031acfd81023a0879d9da3845666597e2180242dfea535ec53be710adc
Date: Thu, 26 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772094893
