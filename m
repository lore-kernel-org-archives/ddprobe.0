Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD4B1487ED
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750589394; cv=none; b=MIq2eWd5n6W0Jh2ij/ytwDtOAk40xNURyefu+KefG2C/xX9aMxPHstsYiO1JEbmdfvk1DL9kY1Sk55M3qJGaEsngFLMHEszMune6Sk7yRh+nCrl64JsuJIbyA1IHA1OIU5UJshQVSSYTyQbbRhSy99iyjP39/E5AKBsjxSUNq5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750589394; c=relaxed/simple;
	bh=DOJIU9346m7mvIWUfSXSHCRxKXHuBXqxyYs5sJr3Xy0=;
	h=To:Subject:From:Message-Id:Date; b=LXNcObW4N9m0HmRe3bWM3GPQn1Q1uXyc5TDr3G6WSN+gxqe/rqLdfRf1FuCiFtX015VY0xfwEy/H+wd7ikj0dwQG0um94IiZAf0kccwAJU7qJM1Ak6f0fkLF+YQ6RiJ10lxORc/SqZsrwStMhblHczJGge6r3z1NtQMq8oatmE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nO92Isf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nO92Isf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B524FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750589393;
	bh=DOJIU9346m7mvIWUfSXSHCRxKXHuBXqxyYs5sJr3Xy0=;
	h=To:Subject:From:Date:From;
	b=nO92Isf1vYIb7HtEc0a3MvHvZblKwGH+vNFBIMdbKUDfgTd6BisHvhRduR3k8sOFy
	 YrDW1UUFErj7Do5t7KuFZMBWo413+pSRcp9pt+FSRPwr3nqQjlO3OWWCw5S18LBGmS
	 lo90589P2cP9dMVzn+ifhJ8IELZj6OigMVnt5hEBTJse2TSAKRgVIyOydAs5/i3xa5
	 +cpep0UkiNT5tghyuWsKAOFvsi8dfdpOSW7rhlLkskp1IvkQlrC3GyzfErYhCSWLnE
	 X2cAPiLBnwFccTrw848xrRgvoFyGuMwtIA90hJcu+GRmjDSwlDVBaMUAiHHnqjdbUR
	 xYoGwkjrJ6stA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F57EC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058939358.30435.13026515513066043931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376c0e77043577e8717585f5ca513af19dedd152950da56af566c37409fec141
Date: Sun, 22 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750589393
