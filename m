Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32547635
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760075394; cv=none; b=kVXFgGbBv16p4nMw87HiSuL2RTvFLf+KPlyA76vql1Ppc11hzuK5UQedKJE7q9usYK3OGlSdmuaGP0JG7jer49gxsXWhN0ZosOapSU7zNK5oAVgwq7ONJR1MVOJGrgV6hUJH5DEm0KmxyP0m08Wn1yBxcVXmt2e85qNYp8LStmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760075394; c=relaxed/simple;
	bh=xUpPkEMuA8njeODWYDjmQcywsLz1CzykeaOhMWs7jIs=;
	h=To:Subject:From:Message-Id:Date; b=TbMIwdAbZg0m0Ker5HlHG3W1nsBv91NrHQN3K2finvrJSjn/0u7gjsxtz7DGKAbN3l48LwOmd68hWnRXf55m3LZWyAGOQsPDPKxP83iN2eFcP2pwWM/jAxYWNVUNPs5p2Px2GA/ajFSCjvlvUqbN5tV12N1C1K3pfIGTzlO/QbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFeyv+Zw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFeyv+Zw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89B6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760075393;
	bh=xUpPkEMuA8njeODWYDjmQcywsLz1CzykeaOhMWs7jIs=;
	h=To:Subject:From:Date:From;
	b=YFeyv+ZwPP6XxspM9dU0R1qbz/+GNrvMpO5A2Sf8o0jPMdyfsjCeUt+3Acb1zxWTq
	 YGxzdMFvUJEvw/D20jKyOBW/QWZTKY0McOW/UqpmEn0Y7g8OM08tvKIahWTN3vz98S
	 7xi0baVT3lF+NAOMamaDdenQvuiM3dbodNCH6Srus4rWN7kQ88AJ8IPpSYgYhbEzMZ
	 JsmODYS6x71J4Q0cIvr96sGQRbYQlZTS+/beM+WyQhAqXofQix/OcVgkS+4trqMm1Q
	 m97cWDdk3U9TVX4juxbSlH6EGFVImWocF9RpY/1rUaHIvNZx2ux7ewYjXVEXMpGbcW
	 35Ww6pydKkv1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9761BCAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176007539361.15841.13324324221337954527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42b4a6c7a880b8c8978c8b6d7916f2b2f22c116c458ded13ff681123d2698f42
Date: Fri, 10 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760075393
