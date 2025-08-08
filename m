Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E58199385
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754675394; cv=none; b=ioGpZBQL55PcxDXvwmrk3XYiuI+D+J7KDGMh9m3klqbsCSt/EyjTjsqcs3/IUIh71tpnl6aB/uE2MI5Vc41Th5xaQNXw2bndXwooYX9GZHTCE+PTY5NpPhGST+MR5QYial+rBQMDnMDSbEyMnfRKJJn2uPr5WPAI71u/xnMKao8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754675394; c=relaxed/simple;
	bh=rcy3lg9bbTH7VLo/94RpL+qTtdIQd8UMxgU/GwRLHp4=;
	h=To:Subject:From:Message-Id:Date; b=FpDnnYUGsgRzbEdrI94TTQgS1KQMrwluyaJdgEgwbq/tHJhepplUcSstYWJ3+Myxo+jSqljKyKYTJatDXyyLweqMbsgzWodWHdnfO3hYDRPr9uxkMhdTJERm2m8vwtGTD9L0s9Hjt60td/D9F61wjVQiIoqIO5Z660sPSaEl/Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFm7HSus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFm7HSus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CB5C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754675393;
	bh=rcy3lg9bbTH7VLo/94RpL+qTtdIQd8UMxgU/GwRLHp4=;
	h=To:Subject:From:Date:From;
	b=HFm7HSusNGYuYaawmc1tpILyhQb8Zoyn7YPSeBAFuP6iwIUgzvQntY9ceR9oJvDlu
	 SX51+pSOwDchJIaf2C8RIV4LEqKOCA3wvqy3UxmL+35OxYD2C+sC9B8iGEBRODypeN
	 4wAqD1yawj+bV5iLyQCEQeRVVUhG68pOl+8Yd9Q53o0pCKEGyE4R4qpog8zL/2vHTV
	 O8HkFgmLbBPerRC/xnsf7KNrMEGiE6dg+6UUx3ub91SLv6W7VeXIAlHdxrDRFbxN+U
	 4D0ZAe9BoXKWV2/C5WyU1mXbzzEJUAl8pJ7oTXfqAEW+uxOkk2OlBcP5C0c/Qffke2
	 VJ3SeQu/krDvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F233C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175467539357.12408.12677657566256502073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3779d2b0f97f24c688026cb6418587e7b9a0ec1b44fa54915890bea0055c2231
Date: Fri, 08 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754675393
