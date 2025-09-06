Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEF029BD87
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757144394; cv=none; b=LOSuFoMjO61CJIQZLwlXxWpcL49BB0J2tHh63lbxkeRUoyilQsE9hhlNKdpyIhGbBLpz6ePLB3tt3zdw2XSAlSsPvxMsi6GXBHrg0L57OJqv7QE4OiwZb12yMqbD8lANAd8JBAp/1KQcE8BWBjCAMfr6wn9rPD4C3nPedQ690a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757144394; c=relaxed/simple;
	bh=lSRRaO40rYbKxGB3bF6+9gyy+CmULGd7i9WDO7WzlNs=;
	h=To:Subject:From:Message-Id:Date; b=AznvUiv55UayMwi98kxrPA2Nxw5WHopuJLwpdhUpmy8J9nn/hVDUOxE9QcKUC8srxI1uZC9UpBdSmlYAYZzTBs5jrzeSgA4ASqfBLcHFXUM0F+CsB3tX29kyDXGXvD0w77j+K/xugHqn2p0NUfSaw2YUW18lOKNiMWiPo7ZxDdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BubAWy8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BubAWy8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EC6C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757144393;
	bh=lSRRaO40rYbKxGB3bF6+9gyy+CmULGd7i9WDO7WzlNs=;
	h=To:Subject:From:Date:From;
	b=BubAWy8WpxkcrmXa1ZvKfpavttuSpn6bUeeT33+hwa/xGovSdMlF+F6Vtyeyi+K+t
	 V0Z23rKoWvbHVEab3zKm/LNeZcyuBijx6Dcp8K7l6y0oIZk5PUWnLwLZMFylck2T2W
	 UJ6t9lafRL/emq/r7Ab55ZtImtse8akL/yAzXQFafNow6vZkh9kDFD9odeIAUrktYZ
	 M7s8IzexASSHbckTT6SA7jHGLHlqUV8s6fUM0zOTAbERr9Q1ZUNwBV9NTA7mHJEJxa
	 3CU9JqUrGxAo6wXoYQ9iMqtNbP+ZoBLzXrSgxWsO12q/5DTXqMgrHqOTDusixEdUdQ
	 rEK6z7dR3t+1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9282FCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714439357.27415.11799527019486383939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea21027b3599d03f30e65b80eac45fc77ee0cfadad023860dec44e51a1a4383
Date: Sat, 06 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757144393
