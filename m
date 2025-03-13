Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EA97081C
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 02:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741832334; cv=none; b=Ghr7kvVd/xk59edUzwTnHFl60UVpjv5JtQlC0I92O4ee7yEWjrkFEDDiQkzLUC1BIRLfWREG8UDsEoyFFZfygQcA9pSF+W5axkho6EJoPM9XWACm843e+8X6+0iPsAQ0pQTNWmxgc9ctF7wiDVl8hwc6wocCdfJJ2iAVdnguUVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741832334; c=relaxed/simple;
	bh=QQ96Wi8gkW4PZgVFTcmUFA0i+eok9Y4V0fDD6HA4K40=;
	h=To:Subject:From:Message-Id:Date; b=LSJZW+fyEAsXbAeSxUMOMS5KO8593+NFgfYnQEQ0oNxGm0URuRPpvgHr89OifAaun973r3/wYmoEmfyAVfxfviHdUFKloVTrluJ2iAETusQ8IEmJ2INRwNuzpZDKsfMuIsb3tjFikblyFqBBnll0NPVf5qWY00A5Gw4eKTvv0v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuA8FUy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuA8FUy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07B6C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 02:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741832333;
	bh=QQ96Wi8gkW4PZgVFTcmUFA0i+eok9Y4V0fDD6HA4K40=;
	h=To:Subject:From:Date:From;
	b=EuA8FUy+cVH5ChEmoHPnvVx9pBEvyRTsYF+S0QxG6PIdzk9OWpBL0gVog5Aovc09X
	 0S6J0I7k6RFU3hzjXMmtuFUl0vOhc+0ANNxUeHVga01O54Jp0a2KhaqI8bEKLygJlw
	 PF116BhgY5b4JJufPolhIVbfCOIugN8GKQS6+00fzPs8iNZxM9XCbQky+my3StvyMK
	 ATzlVbgAgKCYJcTR65+41rinTtk0eEJD2eq2qFZMTqgeVdBrom88B5OfB3PvIZ8GDK
	 gs6wj1wXdhvcQCyA+kp1RzMliui8aVK7MTu1dKmdslRqHkcmmhnjC3YWuhT2i8GUxn
	 vBscCfGv/vRLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D30AC28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 02:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174183233363.9081.9798436007592316067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57368e637ecee648d47f8be80498e710ba12d6a12a78f31b8be9befe04fe1c5
Date: Thu, 13 Mar 2025 02:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741832333
