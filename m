Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575FF482FA
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 17:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717347923; cv=none; b=bi3lXDVSWAto/XtF+YZh0ToQW5kXICfu2UD+fGhwfMFqs9hg903Vtdu8rq0iJ4MCcmf85FJCubPx/j49cvf7ie3RA4TxYVhrNBKEhQkSdsAJf9DKACHT+aYj8E/Hx9+uEZOX6KFxolzhKbyellfF870gU/mzeN8RPI1c9PW8Des=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717347923; c=relaxed/simple;
	bh=txzNqmNNt3CjJkbLeFjS1iVKMeMHO0mzAAbfCyhAnAk=;
	h=To:Subject:From:Message-Id:Date; b=fJmkWOzSKflSziftL80hsB940vN8qc3ySE5b3SxiRRYjUUg+2LPhhj8SLPXUHnxb2ZrRR2rWxZ4rraTEbDSIhloWhA4ohXe7T5VQwYOOiA7h12JKOMpuMf6HyGyEiulNiKjPgFXWbeBkFHU3XeJoXHxZCJ4/YZZMgqkMR/WFTeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jrkhfayx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jrkhfayx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5500C32781
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 17:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717347922;
	bh=txzNqmNNt3CjJkbLeFjS1iVKMeMHO0mzAAbfCyhAnAk=;
	h=To:Subject:From:Date:From;
	b=JrkhfayxG9Nx+oMxioGgpJPAopu5K6iYZAex3zwuIS4eLCGIkNs9wNX2LuoOIevE3
	 p54GMSXrJAJZD14uAvc4+lDKp/cGTcvJdk/WQOz43L7jiOyDbjQLDse4nEMrveG7MP
	 q/3fOKcXqGQ4b5HI2omIglKmacxYba48QMfOnfJEATMODbIBLug+c/QiCL/3nrGbB/
	 0Hg3ewgSsmyEAfHT6s6BOtoHo4msQ8oslNYM9EiY48UQZWb5dX1cfrGX319Cu62yVt
	 Fyu6vHXLJgT/KBBfRy/jDA9EwAfbBLt2DAi5YEIm7qm1ccZvORxUnOJ8uL00oUR5gM
	 iKdcZnOcn9cqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31FFC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 17:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171734792276.6736.3287454115461414689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f7ed5244a242e69b07b096d21709859060a6387139d23235cc6268169b34bc1
Date: Sun, 02 Jun 2024 17:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717347922
