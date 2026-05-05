Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237B030C632
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777970854; cv=none; b=g21AIoMdwhtoPmiTscEDDerUw0MtcO2jV6fgT6g8e0fOBTDZbZkd6A6nTtgGun+ajyIdNNDle2dPysPfjUKqyZEpREHXoSlNeZ9yYjHyOB/S4LVYZj2jP5BUu6AVNpZz00TFZc0452k9ogo2aDB4IhtA0SODenYtIAHujtInIzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777970854; c=relaxed/simple;
	bh=jYwK2pmUk+qyuKJcBRy4h6nZip766cYPlSad/DUy/HM=;
	h=To:Subject:From:Message-Id:Date; b=bQ0sixJjFaCOWMF6nvLJUr1C4FcVq0rd2rk/AEqBFckpZZu/qh5aLDrRU8F23GauYc4xSIIdgLnqOkLnOy49LagBKWaXodymnmoeoiz0bfMJ0vEANYLGDOOjUTPOkh+23Vea7mj5dgB8hwl8NXOE5L4Y88GFjVFwQOqXbLmhtAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diqaJu+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diqaJu+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B654BC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777970853;
	bh=jYwK2pmUk+qyuKJcBRy4h6nZip766cYPlSad/DUy/HM=;
	h=To:Subject:From:Date:From;
	b=diqaJu+xY5mOopDs7vY4eEatunSbYh7/eimOJ2bJotr+HHQ7D5Ej1BF5HyJGGE2HK
	 ItGHiLDGK897BvmLDmrAsFopiW1qKDEGaysXMPlod2ekLBhvkdqBvpDa14KGLnc1Io
	 CNnmzfuqsuDgCcD6jEdbnBGY9o9SF9OMOODXKJ8fhfakaK7OmAsprkXlvjo5XHFgOF
	 vBXwzStPK8FOqbzOthKg6IvArsMjonCYwmp5Jl//48foetkxrT4Ihsx+XvXQADGBvK
	 byZQOC2mS2B4H1Eriua8fKrqgHisM/4SL6BzU7SUZc9OqD7840tQluMgqArTMbbMnR
	 AXCSnNvm3Nh+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A953EFF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797085368.4494.4656983873747149177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578f52604eada6561af1d358719f6b4456b6e435d6010886707bb720d4da3fd6
Date: Tue, 05 May 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777970853
