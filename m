Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373C026B764
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778808634; cv=none; b=jvFT+0QuW/OL5rbiw++EK1r8U2DmbQa7MhaY0OKjBI4cLnkCR74U5d9xsDUhZ8uvON+sfr2QdvqTERzkiZEu88NF2NzCVKYLeaQi9QiPpbgRYKqiL0oH5VL1LJmBU87xcbj57pJXiooFbvbN+G+9PGXSqUPJVWnYVyABSSzNuPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778808634; c=relaxed/simple;
	bh=8iVOkbH8X2I15/PJCQ7tpDLzqjlgeRv5UHtWMLA4uLM=;
	h=To:Subject:From:Message-Id:Date; b=f3u3cE+awwd0DvNPSjcpjP8fwlt635MozoR5vuiuceHHy6TOs2WM2igaxcxMYzLB6YwA3MXrCLT36JoH9Onr+N4rCk4q6fsdjHD828h+NPKUZYwdHuoWMQNTi5+OHeYKizEbE0aXUEKv0jb+cHm06okmr8GYMQAvFLgIdbBF6W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWZBd0pE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWZBd0pE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AB3C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778808633;
	bh=8iVOkbH8X2I15/PJCQ7tpDLzqjlgeRv5UHtWMLA4uLM=;
	h=To:Subject:From:Date:From;
	b=hWZBd0pE362/5jTnxA++9ZhR1PLMu+tbDdzyWKlsd7LUZHOY52LYtovVLNr/pePA/
	 u4aCzFBHES7KXBZWaKbK9UlshExoEB6EmuEu6qqeXqyCoK7pi4sTeBY+VajELfti5H
	 DP3L4eooBvab3a5GHbfJnPrCGjEKVHb70cl6o7BxrxfHw6qtFwwm9lVdGv+6at4Vr0
	 v470Vw85WWm1EAphmepkXoZEgaVTJB89wsEh4juK+3iAABsX2Qbgmh2XOTRHp1QtpF
	 UvMi7Kyf3MMhAyFrQqmSQkpgd+rBNn4BAhnggfWzYTaMimIZSwz6iGH6k9YxZt0NNf
	 AOQmaGOO8B2Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAB2CD37AC
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880863369.13057.10037092802620157655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11134f61ae277e13ffa22d30369897ea4fc1c05b1a1cf1fadf26e9fa9b76423
Date: Fri, 15 May 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778808633
