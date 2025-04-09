Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404F129D0B
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744161594; cv=none; b=N9ggd1G843hiXuz28xFPac3V/VUGNt9No6CLIIL9JVDEJcWHUs+NymmbZ3HCTA9D1+lFxEQXBn9lleo2gzqNPwAC1+p8TzXc/bRx+COOaRp8LSK+nSN1tPsH4xD+E/mVLhOfhkBQ9kxma1HHsvL0MUKnUK1mSSN9Cg87WzQp9J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744161594; c=relaxed/simple;
	bh=ckQg8v+ARFgkkY8E8teO1aEDg20svpgsvbIyTN0cukQ=;
	h=To:Subject:From:Message-Id:Date; b=Z5cnJJsOB0CYDbzAoDlNQkq11d/MAaK6EpnTWkToor63thaaqRhd38v/MVtwRwX0A+FLQmVlDac3wV7z0edessF2mHlZ7+2ntDYpakazzneEtaHCnhqOxybqLobzuzEE/Qb2VX9cU+xtpuudLhrEzXmJ6LqrR/MasFQ3bJwucis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEBnb2qp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEBnb2qp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CD8C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744161593;
	bh=ckQg8v+ARFgkkY8E8teO1aEDg20svpgsvbIyTN0cukQ=;
	h=To:Subject:From:Date:From;
	b=qEBnb2qpniT+37uO8h/nrA7u+YDnJvWnWSJp4qdZTdlHdJWoSBylfeyl7eLKeC6te
	 +cyYV1cBrVxeIDMljgKsLi/i50+mOm8IDpJV6k6qcOuxhz0tbtJXnOhDd1Y/uHcHUx
	 txj19c2b01ZJKODvQRPzclxAPAeFDKR1OxJ93TbRxoGwzDvybaLyDkPimq2yl+o9JA
	 2hh5LuALm56uo2vGY/1opB69vTxS8KBwKS+3hCS3holWeF33upr/blVbHyWbT2WGyZ
	 TVJhFEJAnUbZTW7CVPe5F7JKeoOV6dKd5uE47bkqBVud3IZuxwhxFGENFnOms6m6oe
	 c8s1yqw6CV0vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1C1C36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174416159366.10416.7490603364685765776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14a910c8b559935170cecd55313b694b0527ba90eb3a75497633ec76f5b5cb8
Date: Wed, 09 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744161593
