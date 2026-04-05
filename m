Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F1F364041
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775418334; cv=none; b=oAXWhh4wvx22MS1DZhNJP9kOecb8IqehfGeoKFDB/71V1hR1NqSKYanoRjF1JShLFErC4AKEIBIoAXqfFD33likiOkwJd1a8BrgcTNUsmNOWXVT0L43YzDOlXBxnX0F5fIlrvo6clWMqPZUH9IDVuk/F1BVyTVI+n99GBgXQQZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775418334; c=relaxed/simple;
	bh=gl8EfzwWBhdPWvupBeirG5DjbRfGJ+d6lefr7lxFCTo=;
	h=To:Subject:From:Message-Id:Date; b=L46nS1J990IIrDY/tgOY74FxCLbGxdMNxkk9raqEaN5QmC3D9xubhUOzA/MJhG5qJ3Kiw2pYDs0k0CxxdsWjNVGw9uqHgl1fgkYf5I9KeMZV07TyxUBwoOMBbLnQt0KH6yfLk7nHAYAaLDLtiMqZbPLAp8vaHTZigqnCvUVRwJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpYefcfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpYefcfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F93C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775418333;
	bh=gl8EfzwWBhdPWvupBeirG5DjbRfGJ+d6lefr7lxFCTo=;
	h=To:Subject:From:Date:From;
	b=bpYefcfmxA/b2cuvylhXsxOeKzN14AuVdDLB/Aba0sseXnFZs49CQ7MUfV0EnBtQH
	 HCo2VQPmD0lQ2e+tRu0MIbx8myACvO2tGtZi8YKG7tsRYZl9334FMdtQbQSWH+u2WS
	 0kHd3cg9CMNL0LiH8dp7W7EjhcAubE9Nklt5Q0qlyIMcNJNfniN6eq++6hp3pOGcDz
	 +j/ZI74Es02JF8nc8thZma4iRBwDS31M8a7Ok/17lL6NC8YpvQv6R9Ky521lPU8BGa
	 AE1h6VOlZfSED3D2/ub3d6VSp6wsO3DDgg5Kxfz0Gfx0fOac7JO161SLCyrUbRrRvk
	 2y7eS/ahY5gxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD70FE9D80D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177541833368.4372.300350599685400359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45956808721ec6e0a3cd35607b98382a1ae31a8ff35095a98a7020dd455773ce
Date: Sun, 05 Apr 2026 19:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775418333
