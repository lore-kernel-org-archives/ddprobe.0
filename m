Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111E118E375
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724151354; cv=none; b=cpX8siH4D1rjKoab7M5Wjdx8ZuESZPQJNuicCOm0VAdX+Nnyu7o4WkLpa3XOS2KtdCsgpC6I3fqinCXZSbvulUHEC+b+QAPrx79Uj5h9wRSj28ACY8E78yDM3KQEQX/nmzbnE/YAqhEpZuwEsVzR89T89cJmM/JnKkypjzvNRR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724151354; c=relaxed/simple;
	bh=3xOpY6Gx1vSkhwMzcQhuLcR6u+sOSv+BlyGUTupWeBE=;
	h=To:Subject:From:Message-Id:Date; b=Srr5rsqLuEBdmOm6g7PVOpilWCT+mjhfvQDQX7ZIhGCOBZ3yV3lBuVlLiYmwo3RTCI+gwRdrDbNgnWNAYbB1eSLzLM9xr6tlF/P89pP52n8Vs6nKBxh6oq1B00oSzhE5UxsQqX3ZbafEAuxjxwsReFgkJMtYzpOL+cBNdyHFvQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqXTe6qs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqXTe6qs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C8EC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724151353;
	bh=3xOpY6Gx1vSkhwMzcQhuLcR6u+sOSv+BlyGUTupWeBE=;
	h=To:Subject:From:Date:From;
	b=EqXTe6qsDIufO2Ah6OZabPaBp9Vst1cZ4H2CLZb1ytL6OMXMLkLQeSSgyq3DPuuVV
	 4F5b00bGNf6oJU097DAHBfzNvUQyCP2jUd40HP4XHUbizzCnSAW8cl2kmM9rTp5JVx
	 qO1yT3ZRz0yXrCfJZ3qVYQIVseTPMF4hIrj541aZLpOE4K556hC5oCA7x0JxOxrRI0
	 rKEZYSLxr8mHzuEWcgqabPvWw0z5FeszhbQg36iwdYQbSlYI9JAAyflSFVOLmIKDYj
	 0vgSGePnukmzN+sfRJxF5jqkJMM8lHt3COUXQK1/9elYx1kFaovodNBebvONgLDWGZ
	 GKv3+G/9sNQ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D00C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172415135360.4118.6828918097847607297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c92fd81b82d5a0f5506bd68acaf79fe415c3a76274e67dd486b167f28272e2
Date: Tue, 20 Aug 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724151353
