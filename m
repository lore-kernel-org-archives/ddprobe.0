Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687E030BF70
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789956034; cv=none; b=lKcGiZcGEW0N0/jRMywEkYqjD+BhWW3XH/4+pbzlaY0JePFjviR3tq8rdCVbDmVOcrFkru5IPeSlLx6C8T1fRqo/VLCbYHxZ08b+5CAUdFVWJS0WQyDppAU6ojwQPbz/9epuysWbPZ2nl7m+ig8EEHWuSMC2I665paOwwtJvIqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789956034; c=relaxed/simple;
	bh=cypKLsP5OlkIX0aj2soPE5KEii4w4jtqe+dPGm2A6vc=;
	h=To:Subject:From:Message-Id:Date; b=S6EeepvdXbHNDC//F3e2LrX1kh5sCh90RCMv2ChVR+l4+KyP3gdQkvWuScH4WV8e6hx3rsE1pPYLiWiC6BlcYxwcraZxwf4OKyzIYz6TxpWw7ESzJDtdGnrhi+7wpv/udp74B2ZKOpaWxC4sccXV7Azo0yRgdhX1nEAcoBoFQgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECSfOu/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECSfOu/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A7FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789956033;
	bh=cypKLsP5OlkIX0aj2soPE5KEii4w4jtqe+dPGm2A6vc=;
	h=To:Subject:From:Date:From;
	b=ECSfOu/2hV0cVjztJBTXVT4DFDLYbGT/GoMEPk8Dc0GEjqfI7k2uvvGX8DZuKVkIt
	 V/ow45smn87pQCc34SiZKIOLJ6m43djBCXi2j7PeMklKgAPUmjJOa57anLGBKpQpj2
	 hJ7UAQMwft/V1N7d5KEXvNrIiUvV6SYV52umFXiSaTBWCx/NmqnThmQksDK3yDyPb7
	 y4CPAl4QtXJS6LlDCr9FsY38pij+hEmcEtdkvzC3WqLizGqREebzJJd/55CrnfIqOF
	 n+iaM/Unn7E7VLo/rwc1IAHiVTTSqn8TL51PKR3BVZ/Lpw5bO9dozkiPybPDKbj5dY
	 slBKJxLI0cgDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3547C982EA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995603369.19456.9031461436233411328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af3b15aceec8478448d94fd0e5abaf9e17eedb2d65fd9f6d6e144d9735ed006
Date: Mon, 21 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789956033
