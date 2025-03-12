Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467F31E32C5
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 06:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741760936; cv=none; b=KKCk8+bRLDEHkzpOl2Un+ZmEBywsgrIIeO5ip5oe3cwHL2Hk9o5825Vv6xet5vljkZPx20efkE7b4MjZU8v+kIKIpp2DFWMEx1GKpBu8FW1wacIgiZmX99+njmy7I2Fx3jfEdttDbi3JrjqQzNj66fkuc67LOYn5CiiEHdTgueY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741760936; c=relaxed/simple;
	bh=yF4bv5THrybb9d5bzT3U20hgVxhTt15HQFMxJZerzcg=;
	h=To:Subject:From:Message-Id:Date; b=WfI35KmSGoq5cfhGivzpgLE4cVJDVBeFUs+yhwwk60khXl79ni3wj3ZCR/p5p6F46kbpMbddqOrv/zRuUfYyIRu1q+9hdESU6FXWcDni2wZeJtN/E6Jvdr/U+sSG5qL5VxL3sgYMo5/9fEHpX86otD1jisnEyN2KoxfSnlSlWEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMowsNuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMowsNuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE146C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741760933;
	bh=yF4bv5THrybb9d5bzT3U20hgVxhTt15HQFMxJZerzcg=;
	h=To:Subject:From:Date:From;
	b=oMowsNuSKvwrWdKjrxUw4ahmworBIzFkTKb9/bc4wt9o56cqv1Tf6kRxIofCumFn8
	 CVPE8Ti4x1KRzGvVZfn/83y6hiBPElfeD7ZotsI3Ydqcojw7ebMAhy91E0IP2V56JB
	 feEx4jlDkSYFbRpuW+s0rMJgPF0yRbMaEXstsrc/vtbuPguQN2dIEYTrHZT5skOKt2
	 XxM7at5U+v04bX4VilBVGz4AOdU+lsx9ZNcbHfOUfFc1HSGMKZwlEl4irxwUawHlEo
	 E4JUnaulfGpBQtgeNpDol4/gOoDxa9chJzaBZjQGNM8bpYi2GMdxCLrqeUWLCVi2B7
	 N3sdSmAEf6EyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D1C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 06:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174176093359.28359.15454952955160670289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a223671ab34f58a1a676a91b63001d7446ac1e1d69b292b6ecbf63a71bd556a7
Date: Wed, 12 Mar 2025 06:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741760933
