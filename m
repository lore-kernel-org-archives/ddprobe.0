Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277561E04AD
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757045994; cv=none; b=H5FonU26KhseGA6D2lZvPzJy5ZY3LQrOeE5M46eWAK4y7zu83ip1DQ+xExChMtrlnIW8pggfIbH2SIxUjuDjuo2YaRCs6PObpwNqOLvvcXYx63VWecl1hCd/Jgykv5+VaO3N1ALDHLTSw3sg4Z3cS0AXZuQO2d5dc+eTd6SQNHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757045994; c=relaxed/simple;
	bh=USn+pSGsA7n0ftmR82Tvd11ho0ckzQpCDJ1oJWpk6Hk=;
	h=To:Subject:From:Message-Id:Date; b=IApal0v94+htsVrsREqRhch6NuB+PzxIpnTFtCoa0JeOfLCSdgmBnCDaIjzTzOdqbZqg39TCdtREBe9N9eEEiXRyiU3bdi+ys6khfo8wwbQIeazpN9f+/AXHZj6mr8wZODi6GI3WgXArfR0Z9PTc/a/QfWMXKZKizh6HcM/3xUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/anh+zq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/anh+zq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5693C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757045993;
	bh=USn+pSGsA7n0ftmR82Tvd11ho0ckzQpCDJ1oJWpk6Hk=;
	h=To:Subject:From:Date:From;
	b=d/anh+zq3o74yI6m2yWfsI7Dyj8mY6iyCFo814aH7wo/m3zctDHZo0S90cWMqozvQ
	 jr5ic5b4wd20J729trdHX3FehYnYndUXvpn0+n9l5ULxxbIRyMTtQeaDCyoZ0K5M6d
	 GzI6nOvujm+7UkmsdoO6K5DgJsBUrJr+4SpJjDcWfVG3K+H3Mkhzz4og+yuGaH/XxT
	 goTTVWA8gqIokbNKvECA0x0aYnNR2Dl7mISSkiTuNsSxdfSuXasAOZCBY1a7CptLx/
	 /wB9fTeCm+ml6tjcoKIw5gh+yQkckdfPCaf378lOmWfv702U7VybLfyPxvj2dPjyd2
	 +ZXm3hahqavpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F232CA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175704599357.27175.1538184853303897755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe888f1f2e0ecce78ec84fff7f6784648959129862f6adba4f04cdc899d6c6e
Date: Fri, 05 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757045993
