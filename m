Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DA32E8E0B
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764759173; cv=none; b=ZqnCmf/pwcNLtvQwU02QRFeUi4E/WzcTUm4itK72sbFk+k/4L6a64K2QtdNxTgfOMwh1My7PtB6ebDQ/2zktEI4NqJ2D+MVT4o7XHBaOsFE6Je/1Myre5tFFVpfDxxUZR0LSSgJUG3gbYx/byjfR2S55elfN0krglG39uzVnm1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764759173; c=relaxed/simple;
	bh=wWh/XygfAWMPgmYytXT0vfoseUvVttpdfMxRY72hOy0=;
	h=To:Subject:From:Message-Id:Date; b=cR3+wm/E4paj261VHXjxUOmqilZVIIpZQeJAh5cOIMAVDraE7e6qvDPeHIZaqX28pyHkV/5FP8Qz6B1q1RPdK7SdEqi5dFhaFqtJiybbWn1BFCSGi5hAhxpQmFNyfBuAYrbv+o7mRAVuO57Ew3C7QF0VipD99G1pWs9rA8WS5J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B96OXaHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B96OXaHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D88C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764759173;
	bh=wWh/XygfAWMPgmYytXT0vfoseUvVttpdfMxRY72hOy0=;
	h=To:Subject:From:Date:From;
	b=B96OXaHzfL6QAFSV3nTgEUDBb5DRasWeDR9OjaruT/D5laQ3ohYReKKHV/hewFq1g
	 lWGwSWf2OPkS/5+HrYYpcvVUcmllmvAq7zI146MtoXNaiF/n6VI/CiDfXKeQggDo6v
	 lJrNVAQFvRh0mjrUip+3ciJ9i7Qja7RvCS0USFBPwLXMchKXZ/BdOnk00iwaewOP5a
	 3qxx5srlG0WPeLelHa6XJ7pUhKa7YBbu3kn7f04bAIekVqROADl33iVXWggtb3c2uY
	 NNExVv9aIA5jsXPhx1PGxFpNuNccdLzLGqij4mnE7GsNtsvogarlzqqr4hYks7ZZnC
	 GduVFhFJJL50w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91077D12D41
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475917358.29795.6399507966608058527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484e606eaeed37bdfac9f7bdd91c6b6980558420ed8170e31fbd59c46cc78bf4
Date: Wed, 03 Dec 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764759173
