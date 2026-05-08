Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEB3221540
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778276254; cv=none; b=CsAN0Bj7m2WFNudYeVeOFPyyhw7KhN5tE+ROd3JFTPGMXc+3FEI93AStGb3K+fAeajy+iFEfVjl2weX6uOo40S4EHtDT9rl+aX1cJJ7oXHpySz4upHV0gfHmlUW2MUZrzKKpNXYIzrU8orgUtIw3wXc+WVNFukddHbmH9oRMfPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778276254; c=relaxed/simple;
	bh=9V5h+itKhE3jyNS9k4ZfAZG8eVZcFNdbT9m9e/MVZLo=;
	h=To:Subject:From:Message-Id:Date; b=dexyeCYLoXVEcxNpO2nyNpR2amtI4D0j46ErlhaddWNfxq9rjCskbWX1azMnz8s0k3xbOAjet2JHfj3nemYsW7uDLTLTk1/POS/aswmjueCHn2dPUGcH/MsZiT4ifHdJf+ohohp+11DSUazC5d8/IT3QLKqqKc5rDoD/s6YRL64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGM0yxwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGM0yxwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0B2C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778276253;
	bh=9V5h+itKhE3jyNS9k4ZfAZG8eVZcFNdbT9m9e/MVZLo=;
	h=To:Subject:From:Date:From;
	b=sGM0yxwM9Eq29nTzJAXroRF2Qa84pG3h4od9igpgLF2loLo/2ILKo9iqW6EGYOwTS
	 NrY0O1BnvT/odt+VT/c7DetGwM7YrKIIw45FA/a8yprIwvbmXw3p4b4NKtzJylLlaR
	 szLyvm+A3MR2pdh0HbgWFHJSlbGtgn7fJlN+3T8vvtgnBheeRW2qM3QctB75sm/fGY
	 7BEZ0jajxLJW7fVFhE7BKP8rOvHVHUkpbebTKkem1vHpBbEKjG3Kgx5EQhrtiiVlu4
	 P5iIs9gobPJdyOUMGzmD1zkgtI/KrzQxfppfeBunlKhCo2WqNJG+p0hzS0kS+ipviz
	 YjJkHe0Uqy+Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD70CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177827625368.22537.5424083292108266376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0d70f6732b51ea7cffcb3140dafed3966d8dd7dac541041f3aad38da578e62
Date: Fri, 08 May 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778276253
