Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE483537F1
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783028314; cv=none; b=PkiBzHgxFNwJ0+imieLW4sb0IV9nrKp2vkIghc2n1o31Mjes7ZBAMNnd1XrheaytHr4t/uGK2AzQgOTUMTNTms2DauVoYusahplyulBICtyULDkL553pUB8P1Hr1yhJQ6KivxOmu7wh72G0dOucLzZogTuhGSz2UTZSJ4l8KHYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783028314; c=relaxed/simple;
	bh=L1EBGnoLnOaZ0FpJJH6f2WjpPaDB3kGJ+VbiSZ8QrBo=;
	h=To:Subject:From:Message-Id:Date; b=MFDxLZBiJFggsquXYLsipI8wHuAnGYzvE7aGJTxNSGmRe6lhFJsmWU6IxbGYtEFJQ8m+6xkaX1dj/SVIyVYp6m837o7X6kOvZi6NfXXKYqUQpHYj08rLSGzjae5D8eObEqsAZf1GEHUoomutzhtfTa2ZU/pwKGgknsMw6Ty6RVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaRCk3DT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaRCk3DT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2853C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783028313;
	bh=L1EBGnoLnOaZ0FpJJH6f2WjpPaDB3kGJ+VbiSZ8QrBo=;
	h=To:Subject:From:Date:From;
	b=PaRCk3DTbiH3vRbuQkZIEEZjUp0q2Uu0uV1eaLDETlCCx5E+LAg8Jg7K7Pmpdszyr
	 ZTjZEx5yrhpiw1MERAzc0vYQcav/STmHNK0FcZBCR5wlRMp1tTjr06T7HnktyXwES2
	 ytg4f/osUxZztqpa6AqkdtyZ9DHy/kbKFP1QGnR7Up3xGjRLVZAp219F8MhzdQJCyl
	 c4xIGqxF3rju+A4R6Mn3/ZOPc/cBKK39UsyjtVsdwgaeA9dXwSpE+02e6lsru+P64p
	 HGXHwQiuSfdgyzSvtp825IHfN/VfZqLE8cN9CNKvs3Wrxz9kCcJ29FKhDfx3McAj4k
	 a5ZayqtbKEwYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4C3C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178302831368.16043.3027525716400167260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8634ceea8092984b84a57d02562ba1fe426f56af2511c7e6390571254678a1e3
Date: Thu, 02 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783028313
