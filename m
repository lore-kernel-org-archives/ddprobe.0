Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2220E2DBF51
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756336794; cv=none; b=R2VQcp3iq6lkkFfli7powsgtOWGGfz6f1hsBZOWdrg8Ob0LI3GtGQPnS08ZA0h8+lZN61+6F1Ckb95qeCv/jiQpuI5iFv7IIW7sbL7zrYaPjrSNGJGhJvDo62Ul2EQ/sVjGDH9z9UW6v2YHQARmclvWQMO6cgTPvCxbAgS/omi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756336794; c=relaxed/simple;
	bh=S3WSF+OTUb02c2nnTQGu6MT3IP+yKo1T4J26qz5y5Ww=;
	h=To:Subject:From:Message-Id:Date; b=P+GU3XSVExOHAPz/+p0wLkLWP3FUcGqXqTHJo9Bj6xK1UU1EbHn/79AONg4Zq3RVJMXs2sFkEAIgS2Iwd3aIHEBtff45NanZ6pci0nI+W9FHT1ro2Oj/I5cfZyAEDnptDRyXouLO8A57jkXLAor/coYLYNQq1+Yd2yuNNWvVKog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdUvTnwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdUvTnwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAC7C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756336793;
	bh=S3WSF+OTUb02c2nnTQGu6MT3IP+yKo1T4J26qz5y5Ww=;
	h=To:Subject:From:Date:From;
	b=jdUvTnwbeq2+96AKg/ufMSPzvAa8/ZrXyFjUsfeVurX3PEsW6TOQepYBM6srtc7Ab
	 o6VUj82AThCMOeqe9lzYUGHKw9V4bmGACmnacjW6T2rvshtNIjFhw2IeU7IBdXqssx
	 ZlIB5lEzUajAcN24KZLkdU+Zs05jlFt0osKOkSIgGR11nSGeu95mLbSk6bZR4+A9u1
	 sb0QMOyt0HD/jpR4YNw3niY8Y5u1Lraa9pJd+oJBLv7SUsvie3THVRd9xWWv0dFlu6
	 vRCjAKtLByumM5dxCBZAvXnIQkW2H2aFHhkJuBf8v6BZme+kDTJeSHUAyLHvwEvcBx
	 mI1Fb99lnBO4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E2CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633679357.11971.14073461340965658310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62dab3f309b9715fbc1c056438b96dfa21fa50a6c877e9644128cd5cc0beb1ef
Date: Wed, 27 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756336793
