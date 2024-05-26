Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A47A79C0
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 06:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716704663; cv=none; b=lxahOQFowAB0ZVkJl8GpqsP9lIuiGOBEICdZeedF5JyyhFg6wZnexSFTpif906xv/2ItW4jioUOvc9q7TaEYCyCAjH/LuygE6ARazicLlrsSwVSvwA68uqcajtET5HYUdgRsWA2W3Nxejs2LO+k3de16YrKTO5hs2mWcCAEfmAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716704663; c=relaxed/simple;
	bh=eXHiCDQxmo/Fii3zjp/KKoWzBfJWdDsD/zln1rPI2kQ=;
	h=To:Subject:From:Message-Id:Date; b=rkifx6PJSlu6tY9325d0LPR76tyY5VS07auBE+1qmnpeFm5sx1RmHr+YiARELbYwXkVwi0OEuCxxgLSMz8RkQonh56S9+4fFGKk9HBnapFB8e8vW7CXBqDwfXzSWEZ1s4GYm7h0qECrgGPuAFN7keSSmExewFVxPPdpn27AKpoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srsgxTqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srsgxTqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E672EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 06:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716704662;
	bh=eXHiCDQxmo/Fii3zjp/KKoWzBfJWdDsD/zln1rPI2kQ=;
	h=To:Subject:From:Date:From;
	b=srsgxTqsvJXnqiYUWIg27tSf2I8PhcYTIYOwKaWU1/wbMK1wt6J5TyBcJVYghIyhn
	 cZEOFmAJpkVXLiO4KShSebSCpiqK1ViikcjaUrYUlC0m/666/wJsAn7IraE4c/6Z7i
	 +PWxha+t4036262NkL0to4ivteN6mSq4a5k9QUfZNTre+IfpH8zrkA9qLVxzTxkNLG
	 IVDvwUp84DXH7rewHrrpW1H+ARqMtxwC8K4eob/NHsSuHLwFTcENtX6GNc7dsnshsF
	 e3aLtxsAd9EOFpNBETP4SM77liCA1VFJHN4pz0JfNWfqGgKlUfVlRB5Ppu/GokbtpM
	 yfZ3wGLv7BQ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE4ECC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 06:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171670466280.19035.305116375780388217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a5b584304c6832187fb42e1d89e0c3e836fe6713ab78ef50cda600abeadf10a
Date: Sun, 26 May 2024 06:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716704662
