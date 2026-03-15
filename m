Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184E11E1DFC
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773569094; cv=none; b=QdmrviLhT6WLh9QbzZ3BOT+h15oplucdpLLVHUknVgKRceae7t0tU3g4O+uM0BVwD+waXaVoGPvpLfXBr0R/Er7T8dMko8oE2sgAaMdm6Zuui/eL7toJEWO/ZymbHKYtaB8RpVsGO1xCRke/7ENCzpwI6ybk5MotfHY6aGhk8TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773569094; c=relaxed/simple;
	bh=zlIaQX+13nhdB/AtCer+TpOkOeocWinq5chzLdi+Zqo=;
	h=To:Subject:From:Message-Id:Date; b=F843li0YthJQnMSuaOk9d7bJTq+fJ0oSEZvQgritYBqgRO0bZekuicSJT5vOLCB+HRAsfiVNUdTMdPfZWpz85nLy/949B7J0wXeGDcrKjB0CfetljvfiebvxsO3iWVQWPuusv0LyFpdbrB5xIac9Uq4M8WF+sNCHmRB386ydJ1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayzAy49w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayzAy49w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FEFC2BC9E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773569093;
	bh=zlIaQX+13nhdB/AtCer+TpOkOeocWinq5chzLdi+Zqo=;
	h=To:Subject:From:Date:From;
	b=ayzAy49wnNFmg+XgNbdY4PPnNp2ldPFv4tyAKqGTw8G494ILpxIZzxFXc6BcJ09EZ
	 A5atQKfW4CBeWP+HW+SPpwrFwW2NTXWSzFmiVqNp56cADavk8NCqnWhqXvfOOOFytA
	 QMTmmlcFVmQW2w3WRhFKuSpUu5mFIdqctYmJBNNzxFzVLWPChp08IcrOZ4hOu6yWtz
	 GB5Fje6pmbmur/GeLbyRVl3vNvZlD8r5RbKGX9B7VcJdDsYlz7ZxlDFRI/9aZJQ/rk
	 dleRQH4bO/GfiS2H+51GJFRJ4ss34dKnG4XXbKdYfHhquYiUgPGekeSD25iHnhsgpZ
	 5FONm5UspOvOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F51D58B0A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356909357.17374.12298446557023887832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cccd8aee55dd86cd21bfef5c0cbd39d8dd4170150b6a0a585a97dd822efe7cd1
Date: Sun, 15 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773569093
