Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322991D7E41
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777733254; cv=none; b=hoDNs3TB8zZFijKZaVaOGS1DpgyB2JP+C48PZFbcyxiCsEgTzfPD1zmL/JgvCBpkDABAS6e8D0+XD3Et9t3w2zkN4AijWt9wf8Cs9LWYzRVjctpR2vdnSMciorwolwJ90/VKqrGXy7Rnnk8zN7egs4cf4ZfEhmKHj8FYn+YFkQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777733254; c=relaxed/simple;
	bh=W1lDB47X7O/EPcF36r/jnEMNQHM7+GoUY4SCB8yl1dw=;
	h=To:Subject:From:Message-Id:Date; b=sxKoYNLJxnJfv+HeEkgeuMAlOkGAXdp85eVAkmQRv0XoT9+OEXbId96PCAuiOUyBMZXKqsGQQ7VrZVZ3mFWUvNMK3eXcUmqyTp0OcUvKKfIsEoihsUqSoEowFmWvuUWy2zE8RUcA31XogMFKLtTqdXsgd0pinx4TrX31ePny+oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUFRGCVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUFRGCVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2247C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777733253;
	bh=W1lDB47X7O/EPcF36r/jnEMNQHM7+GoUY4SCB8yl1dw=;
	h=To:Subject:From:Date:From;
	b=qUFRGCVSB8inYM51BVwvzYIufNdR4NlWvbwn+rCvndQ6ATDU0IVkfFIF3Zv1aJdyn
	 FO29EGXuR0AkOjVrMCCxMn5CY3TUPK+dWZeh6wIE1lxJLYXiTpwLuxMfIfmnTociuY
	 L5BEiN+7T9yahoFFcrALcYAfwEjFDtJ/LQDwvcfNtzYsRk3cSNkvF2dDZxgWUiyezu
	 NAlPoepP9qTtWFrZVjV6VZxHgF9VNfI2wIgzp0hGIj8JQ30xbhTFhG0wzdqD/cQojf
	 ukbb+cUqqvkjrjBCCbt3+s3OstfT9eIbNrHXKm00cvIrWsycwdCqM+EgsM3/akaOda
	 ClzqKWD3e41AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B020DCD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773325368.23210.10587036532156787419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0f56ae4dbee2c025967d75aa434aee89f21adc4f29368616c5f55f4e76b5ad
Date: Sat, 02 May 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777733253
