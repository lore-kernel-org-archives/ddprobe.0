Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D292710F2
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760685593; cv=none; b=gPokWfR5vJrHBM4qt2IhIxcn6mN7Blfj1ibFn3vMtoZ/WOgGvxr8XhpKzXboUvTDtj4FH2lv8CYOJKqoBE1GrtbFjep8GpnjEX9Byiot03ZDhHUegGoDC4J/EW2PGdX5ZMbkuVxl9VcwMBa8Xx13qTi5hp3KWYS3EL5TMSdT8iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760685593; c=relaxed/simple;
	bh=LK5uKExzXBVPp+fPqFDv55DznyjdZGjNCr1mStBqfy8=;
	h=To:Subject:From:Message-Id:Date; b=fiDALusRhkHw8fYKmmob0H8r10XpdFRt/I2L9uJWuM2SZ6amCJnC+6ZAKNFoounP51Ekb90i69cITJn+r9FyHQSNxoKhin5MeURTsvrzfRnRolctu7grkXbRCfdjwOoF5SVBYvdCQxrZbFk/bJ+RSIKw5L15uIQGhhmhnfR17E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UB9qQ4kK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UB9qQ4kK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA9BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760685593;
	bh=LK5uKExzXBVPp+fPqFDv55DznyjdZGjNCr1mStBqfy8=;
	h=To:Subject:From:Date:From;
	b=UB9qQ4kKYWIWQzceUkauJTNSkBgdOml2Zh+dUD8XCGVznoYGwyE8mwKJJUp3AaVAt
	 nixSkSFRvvmt1Q2iXOclINhGkycq9GtgIxf5VE5BVeQoLeSybPFo+Y00cAvdwxMisq
	 ztV/aabVI7/p81xjAPD2cS/7rGOW/8Jk41VvJelDhP+bs936QJgiMfY7HxrLHsSTwZ
	 RWpLTQXNtDnKDytbymWyhKqNekYqrAW8TlnKlV1QMfJTbZkaSWM08vsxCCXfd5hx7Z
	 Pn1Oo5AKvMRxYK+n8P63mcx/4uXySo6h73+3Kom3FShNTyt7zxyHALS7X+/MO6d6CY
	 rLlwVfkMbJ5kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEA4CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068559357.18833.9144961309802073690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f45b72feee9555d9fd4b2852c5a53f60d957f70f4843146b64f36eb8f1a3f1
Date: Fri, 17 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760685593
