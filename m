Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B51212FAA
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755381594; cv=none; b=NBtRWieazCw55ci/xE5ZliT8kYmcuHvIYv5B08jxniZwKOiY5D+L987P4n13qvTKam44W3pfzpoh8UxWHORC49s2o8DGk6bKv3Ad3wwCgNeCi0/R0ZA4zkV0Kfx+tiNS0ypgSRQwWK0BVcuXbAPak7vyrNbxZuwDdJCe/kyfpLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755381594; c=relaxed/simple;
	bh=1D69oeC9S7r9aVjpltx4i0Y7ZAbTZjokNfxwXm3763w=;
	h=To:Subject:From:Message-Id:Date; b=bBWxTylF1VhijHKZ8wu0DrioVJuj0UUBfU/pHNeCRP21phTE96oNXoBpB86Xl7fhsfljv279i5fhYK/gI8p7OvgzcWS+mLvrU0DamysaSK4TMQXrZRdqNIoBor9GNHDPGIV2ll2y0X2BwN7c6GkzyIg6vLRzE6oGIhBrumOBFBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ky/BEa0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ky/BEa0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30CDC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755381593;
	bh=1D69oeC9S7r9aVjpltx4i0Y7ZAbTZjokNfxwXm3763w=;
	h=To:Subject:From:Date:From;
	b=Ky/BEa0lkG/AYVCA6eijMH4FKmrpZv99/Ia/VH+byS6j0/B1dnuuykCvjY5gXqHOM
	 oRxsOilS8LSuv0C0SE8jlmQfza7cgQ7NSEv/Ddx/Z8cxXbHWiNXGGHELNBvrw2SI9I
	 qBF4ER9ejk8F6z//IOczoyqk8D0V0SceFOFNyOb/jhc0dZKgO5UVzWjbjMyEPBgvk4
	 aEwUhDDAaGVbQeZ6+YruaLhHCtYrqC26K9rintWfoM/inEUi/XelWdTc9sRfhQB/8/
	 yfGUfZ2CirwgFcvcD2kpV5EknMCSgX9HmRHlsYl/YVT9mFPMomgu0YK33WHcV/+RJ1
	 1QA0t3PRvdRuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168FCA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175538159357.15429.12920861784917609808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 829badb6a7057afc7a52ef6287982facefad70acafb90f273219ee5228c1694e
Date: Sat, 16 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755381593
