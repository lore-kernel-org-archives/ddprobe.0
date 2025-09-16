Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200A627E070
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758011994; cv=none; b=hvC5J0SZK6skurzFKcjO5g8dywIYewntROqkePxvisNOc8ngvqKGMKGHxgk1hD9ldTWv58gSeJgs2dAkzSwPsxfuhsLUIqNh758RCCXqgZaeMhuPlvxxDvXdqGGCDSB4vJaPy/OyX8/Vp36gLRVh4c608oEq4DHm2xrwGMDPtNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758011994; c=relaxed/simple;
	bh=qcJuCxN//xn8U2s0pL+au1nG2zBxiYpV7IShKAMT+oQ=;
	h=To:Subject:From:Message-Id:Date; b=NIWFgTi3pScbRgxC0uVhsKrwwnoXLvt1Nyp9XFZJA5OSjyUKPAh3WnorDB4jm8xGm+Jmsi30RBnaxMLN41HKc0d8HQfape8CsEm/QLBhwd7ypYAArZgZnvmdR6SDQH8jttr18CuMiv3uCj/GN0SLaLoqO1PNZZRAZOT6qBr/Vmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4zv9BaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4zv9BaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28A6C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758011993;
	bh=qcJuCxN//xn8U2s0pL+au1nG2zBxiYpV7IShKAMT+oQ=;
	h=To:Subject:From:Date:From;
	b=d4zv9BaGkPob2AxMJrFU50MqaV75GsXgNs5hk8ar5Z/VjduSvUfGoj8Jxf+WWuHWU
	 q8ROc2YoOecKG06HnF5L5xIJJZOpbTDXlwpTz2hsqoBiLRUO5XZM0CrDXbGF/uiHgq
	 gUR1Jmj59EpB0LURXy3uXzqSR5hbl/qijTF+YrRbDtWSl37rS8N/Sb8tLAMmSuUTPE
	 N2tb7JOQvjizQtdKGE1rCPPoEug7kaTd8qE6BVJCaAWxm6HW1N2A0IvGJ+zOZFxW6E
	 IDzyHFgnSOWMYTBJ6uXQdI7nCsfp3kvkYIohsbgQ7KoOQQOZEIu6kjBzeRmAOqkZ5O
	 fGW/3Pt0V5N0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E1CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801199358.29415.10010415131713452992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f958c9814901183a77fa53b75b5e02df7610a7a2364bf39849646a77594af12b
Date: Tue, 16 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758011993
