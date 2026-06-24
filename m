Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157023D9DD1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782314254; cv=none; b=V1Y0IUANTAh6vB1WFo374gY8YBaAOFztIPdRjrDu5UUZFdKoxNPwbyCUPpZ+HbjEayGGmfMd9SjFoOEf2UcsafrE0ii+0CEDHNXdpSx6BM1eGGILgdP6NjVxu8UKvuQi00QSR6Di4DxBVsfirnZy9fiLtigpUdre1Uxn0oQvnBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782314254; c=relaxed/simple;
	bh=tAQpYm8i0T5w95PdpOkWLApS3fFti6FGjA6hQd+kvuA=;
	h=To:Subject:From:Message-Id:Date; b=J+/9r7AWozp8fH8d1C88PBbdl+vrO3qAMZJ9rG/bFAfHLGnH9A40VY148IYIcliGKXSQMNesPmfql6XwyWW/IIhch4SRF2bYCBYScYnE4SlXaTUtsoffjYfCemutPefB5rTQoGGuIfAEEFTLM4WIrRe1xOrQgAiy9j+IGwEYLg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqNOmILP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqNOmILP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92F5C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782314253;
	bh=tAQpYm8i0T5w95PdpOkWLApS3fFti6FGjA6hQd+kvuA=;
	h=To:Subject:From:Date:From;
	b=MqNOmILPE67LZaTpa2UkDcfdH/r4lR5vm+WaiBvcdMKx3acXGEx8Fu63Rndg3VNG8
	 GPRam6UpTgpRzyZ7swg/ILOBFWBdhtc30gmQ/Oqx6hODBSBGoQjPWu4WiwAtogwmbb
	 HlW25IVLoL6v9MEFVKkbtrCr3BKLGkhDAHHK7yk2ePBu8WgjZIxxG3CG9JFo89+R+z
	 yOtg/w0+WDh2OIX+l17RUxjrRuVaAl89yznhfJRvtWeujrnrPsA9RncYhAcFS+zkL6
	 GF7laVbqhPh6T9+XtnxX9cjF+xzLb+G5q0Gn+vKv4ECYfIb8Y66Os+koPKSzdB5niq
	 +IORSny68RY8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE65CCDE001
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231425370.27293.16671007411816892782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c121663184a5ebebc0102fd4f097ae708b5459de3d6b07112c4ba9a27cea941c
Date: Wed, 24 Jun 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782314253
