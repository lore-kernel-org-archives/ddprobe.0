Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590D8353A88
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787293234; cv=none; b=qmJVDQl1ESRkk/0PYSSlZ5fbY1OLfntdXXAi5dOs0pl5nftZlSsGz0zUSxv2uctgLzQKHDYv0J843+TiUUGKk3+CWr2rwzIg5MNvqU3wdAK1gtQkc9snmaFwuCNWojydWLnSn+Hp79YWPiJ9A/0TK+xb+wTBf8I1rW0+YVgdxFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787293234; c=relaxed/simple;
	bh=Q1WzMZeJQCmKap9Pe4D84BMozaBm2isesLwwuNQ2WkI=;
	h=To:Subject:From:Message-Id:Date; b=L8NvBh0Nz70uYN+NC42Z0fDX/7/GN/w57K7fO9VVpmUcD28D1aLROboGc93vCwJR3M8sCXmNk4ThCDDh9MqpPIdJwoqaCVsU9eIC1iir31O/JMGQG1TzHUFZj0X6uQEwxzVOF2+HpRmfs5tZ/bB3QD+wRnp5p+QAgrTKG7AX+f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvNrM9ep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvNrM9ep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E43AFC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787293233;
	bh=Q1WzMZeJQCmKap9Pe4D84BMozaBm2isesLwwuNQ2WkI=;
	h=To:Subject:From:Date:From;
	b=UvNrM9ep13s5YHrBRFYjEnwWWHAn1tdZjVW930ZJTECwsgyqeIBTyade2cduDDPls
	 1P7r3mFd1FTL3xCLHq4+eJNwo+otAN7pbhr4QV16OB0r2hLEd7wuiTzBqbvKsTpjkN
	 Uc/EpAt12aBExoij0P5ANr5E2ZkRwK5nqNFxdnoBf0g9mLdedn/Ic2XUPGn6MVKppO
	 qgMh8+MY1sZTMeOf+IQ6IXdKxvryG4yeMZ3ZHRl3MaMGkHLO0dYchqlb4w4DWJEW+H
	 MKhlXGQAXukqynoO3kMbMVcwpZYphrNDvTNSw0WFhHdU3W+qo9hrUpKIKwm22iNkRK
	 3ofpVPsfPle3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECB2C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729323375.25049.3902545959388531083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a31f260e6b477d808e290a8acced0f30c5dce99173ee005c2e3ec2922459d9d2
Date: Fri, 21 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787293233
