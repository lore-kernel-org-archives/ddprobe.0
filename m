Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBA3481B1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779679354; cv=none; b=QZqshg+/g+lPl0TNtQ8g9+LdHdo8Qv/SrhqhGicF67E0tDCrRiNN9UxcB2i2aAF47PixkSybGZKLwQWKtSFWbKa+ifwZdRSWG0DLo94qjFJ+GEAZBkQ/wb4sbNfcagDH49t8OGeRTxxCge3Y1flG3dIKmbWwaNQE8UzgZfOQNTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779679354; c=relaxed/simple;
	bh=KLIRgkfhPJ7PXP1M+URyOQfvWPmJ84mj0BQZVRDY7z8=;
	h=To:Subject:From:Message-Id:Date; b=sFC8IjCZdBSzwoQIAfbfc1JEW7VWLDZbx+mMxYAe1mj/k0RzkQ382fndsNKHjVrQL7MwhLmhVZbBr3f+3O9bMyEVDMXuv7kAAMa/pZG2VXXvrPqIb6jZ6Po3SyJRSlgYp5oU2UJRt/MEWhR8KtZ05e+0n5h+3uXYtr5jtVkOsmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deRHxZNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deRHxZNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D225CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779679353;
	bh=KLIRgkfhPJ7PXP1M+URyOQfvWPmJ84mj0BQZVRDY7z8=;
	h=To:Subject:From:Date:From;
	b=deRHxZNeINBCsmvCkEcKGSMauHt0/f35e6yoKpom1CHV4e0cspwVLUngxxAWHxXHO
	 KC/mWiwuC7DCAWayZEzCQI2LN/UcRzCBozSkCAUG0pZbTTfWFGPUCGe1z8q9cn9KJU
	 pwfkZyVGbnOYuElmF68Hx/FiOakc2IvpzIs7Vv7o6joQJE4cHXessbrLqIe8WBuE8a
	 qska7fXJk0qroAPl97zAHTr6aizDudGrCMlh5JxNJ1Uwuc0U699PoStabaLxj1xst2
	 pA+CpHJ7ZIsP0dE1ufWQgSFPHEIltuvJfU4yYsGqU6wMm57bTi6SLRjIfcewC/NeBs
	 V2GZ7w/FeZ9iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBD8CD5BC0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967935370.31412.18009565151681074577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b3810e5ab80d2070eb0c3022e902c52d135984a85ea1465737d7b57cd529b7b
Date: Mon, 25 May 2026 03:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779679353
