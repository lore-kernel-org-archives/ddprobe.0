Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114671E86B
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708102697; cv=none; b=esfUVBQiG+AaIc/zFM+0cd1KRdx1bdILnwN6VBvGAr1DG2DIfLUpslvIcnaPUdg5g0WeFl2dpr78uz1xK9vuJlvNKIwdJ1N6oD3Q6Z0hsUrxHYeCM3AxRnSr+zF5gf26XoxXJfYZ7d3UBtbvDfXZ9Savztu4U4RhzV2FLifgrUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708102697; c=relaxed/simple;
	bh=FDgQ1kIdj2Ey36NqX1Bfk0rOl5uEwzSC9sIg+0nxvxw=;
	h=To:Subject:From:Message-Id:Date; b=WHFgogt5jE9v2QMiAZqF2xBNGJ4Uk3/ZNchah2V/86sjMMuKiejvCjJw599wbArD9GANt7o3xfg7ku8sq45ZiSuqeFiE3KVvVYOdWAiXNl7JGaHx9GfjZj9fHpiLqllCS9ZHyJHtlbuxrBm4Rn5sDYsSTO2E9wRl8KmCwFeK2qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBlSGupP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBlSGupP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FB18C433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708102696;
	bh=FDgQ1kIdj2Ey36NqX1Bfk0rOl5uEwzSC9sIg+0nxvxw=;
	h=To:Subject:From:Date:From;
	b=UBlSGupPIw3F/7RrODiUGlYgyZoL4+taCdSYhJoCybLrz9yf1r0PlPL4zYcJ5fa87
	 3p5vUEUwCs1/ZMaEhG8DZXrj9NWw/ldQF3Xwtag7FluoeYGGcAOii9OMKtHMyQDa5y
	 ifatRlcue4AFqCmtOUQFjvpaE66c4mIW0fWezkMfn3+lhT5HKpoYGax26NMK1rGL8W
	 UXfun8iRALhHljpnE3iSgsygv6yrjxtDQwVlifHw6KO8PbHJ+dtuX1S0Foa1cqPQOb
	 FDPDiv3g0v/Uh10jxQb+rP5byt2VGgAhGHlfB/xLTyWpjBpvxBAqP3mrGqbE7lvk6I
	 p+SNjV0on+76Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 695D6C48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170810269642.828.2648845830592330124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 582b7e484f52177b9a0e75f57f847b8a6033b16a77a19f5cc8175405e35673db
Date: Fri, 16 Feb 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708102696
