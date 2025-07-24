Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC4A41B4F0A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753392593; cv=none; b=BasR671uVBZN4Vc8Nlp9A5jXQ4FRc1q9/W3nP0n/nR89OU/uzxuH2NCz+N/VvwJfiFItODg0GkhjPV3kQgrkFrA5C8GnXPcb9QszYWXHVCpW/PBUWXm19+LPIEWhIGy659evdMCPNJaMCQWrfhRJTatcxAc1ni4dmbcmr1HYOjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753392593; c=relaxed/simple;
	bh=bYgvs5Ao16THYKMxFQrY2aN17nAv6j5DgSUinmGxynk=;
	h=To:Subject:From:Message-Id:Date; b=prsi2UGOl/YPHcfiyaqt/X1MQkkLNLfy0U0FIpf5ywUmJ7P9bjqYQVl5W7H2E0HYSpHQ9qES7GwbdjUtm02DBYIivrlU7s+cj+wOkjo0P5KJO1D3jRZxTjNgelkih/RvgGaaYQmcoYH3BNtE0bNrV0lf7HWnLQ13VBB/qfCyf0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5c7VNy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5c7VNy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1536C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753392593;
	bh=bYgvs5Ao16THYKMxFQrY2aN17nAv6j5DgSUinmGxynk=;
	h=To:Subject:From:Date:From;
	b=Q5c7VNy9wpOOeUGhKs+VVf3pLhqOkCCGnbn/QKQibrWyPIvk4Uc5UrJ2QpFsp7PY2
	 opIzTWMJQX2pS0yT+LsQJ/903mhpABpTrXDDepz1XFW3HztTvMRlaSIab1d44VgsiN
	 Q8fLYb1h1KC3521kdiuZmxNd2REzu8lRdstZgrGuiM74fpNmvOxZeT34kPEtgzIuzX
	 IyV6xs8GMyoXbUcXzFddrtn4SSJyYvX3BtTl3foAf4wehNsYF1t5EBQQM2MaXDtPGy
	 pk7/0EjBYp33Sj2z8LxQMesL5BiiSuow3ytgLOamVYiLRydbCMcIQg4NnnUvcnRgkY
	 EzcUKOXK0+Hzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF81C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339259361.27249.1312653186800779987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af32ebf7d1bc1752dedb55112d9aa7ba4bcfd9060d167f92b8b577d87b41d8d2
Date: Thu, 24 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753392593
