Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6646F2F2
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741898334; cv=none; b=gXyAMxlQnsoncakud835ngKGtZ0MYrtWrQfJeRPvLlKZsAStsQyiUXFYa0NZRZxAWHOtyzhvNTQueaaSug3uFuNg8U3zZGo5hxv0eGECke7y2mGFmKvOEscojRfgfgDhrG87f7XYVkgi/aYUo2PjYSzZZd1MkZrCG12gL2FuGu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741898334; c=relaxed/simple;
	bh=rXBkhvDHSPXa8QAKFLWLY8Cbq4MpNKsb3UZgkZQTPGA=;
	h=To:Subject:From:Message-Id:Date; b=YYrvEfLlPTRC1UQP2F+RPSWtsrOpDXSvALviGjSkOQO4lti25XhpyI1a2OHVQgk/pK0Zx8VD6I/MRJOgUpnhdcN0F4a2enZi0+JR+92T4T3+zTFYn35n7HmAQsK/txnl1CfaNcr9Tr9rkbo2621zIFYk9kNRjiC03UNREADWfLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGT/dUCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGT/dUCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1198C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 20:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741898333;
	bh=rXBkhvDHSPXa8QAKFLWLY8Cbq4MpNKsb3UZgkZQTPGA=;
	h=To:Subject:From:Date:From;
	b=iGT/dUCldB8Jo67u9u6prthtiT1wXHveWGsNz9w3cyZ5QH/XE19HXxn6AltPVS+BH
	 GIZSel+8HJHO8J2SQwAf97PJc7eWvYdWLjHeT3EwCtNJfAUCL0QqcmOwyd7WqXIiWg
	 PYVXTxXzVGq+0uMZpOk87rfW8AET4BeNbe4Y0NNZJLqr7PPvCvbT04FYu8ZrV9LxlQ
	 Wgfqo4xL5XP6Zx1rfNjbJgydX0E+QZJy42RteflqdLPeg9gylM9gSCz1csWwqsHe2i
	 OlYpTmgLOIkFYUdcyY3jNinCfC/4d/tG68ReTvqD7YicBRA16BJwq+eIy3uoxQZvxx
	 0etpfUsCnlXpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A25F4C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 20:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174189833365.10841.9934070864830572891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cafe54de0e423777f0bd43e22cb2f1004ddfe5c62a895741a1f375d8b55a44bc
Date: Thu, 13 Mar 2025 20:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741898333
