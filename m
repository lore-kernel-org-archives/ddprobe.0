Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CBC2D2382
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789459834; cv=none; b=AiY1aWP8QlHRZAuBCvuMbBV0u00bivOiiiTBUhia/sdyD6hciXCg995zOi6SIhwUr5vuy3GNaDFKMYPUQHc9B5IIi0upYrfiAGrk4sTX7FZ0slEi7VT15ACkK/XflNcRxoKyjw40q1XZ+0CSur05Qz6JwqmA2jshmDrV1FKXvM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789459834; c=relaxed/simple;
	bh=eCcD41Dz5teyIU6PPIjvusHTz8QspBOtE8gJ5AGMI8c=;
	h=To:Subject:From:Message-Id:Date; b=KucZWwNjZXJo89LHfjg24T2Mljzv219vfAGQrj6xhJ+zElloDixgw9icpXO3pDbgSCM609SgqQ2XHDAenfUEvx71E0KTj7LsI9b60VsvuIcWlt5XeEC1xsGkZNgwvpzEpl25g6/O2FShzAnfiXTesHO2a5qnsR2ShKrSDKBXHvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLgEq978; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLgEq978"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC841C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789459833;
	bh=eCcD41Dz5teyIU6PPIjvusHTz8QspBOtE8gJ5AGMI8c=;
	h=To:Subject:From:Date:From;
	b=TLgEq978MJ6iQiVXossGhBXSbKICQXNnhDb4izQYPIk6xNd6pAV6ZVN4JlEUYkIq9
	 y1oCec1QJd9xiRxy4qisR6TvcO5QB2sXaBXt6n38TnQKzrnTgJUG4PAbRK8SBOKMg9
	 ZZWHxGaWO5aUHf52Y74GlqqTfinFRZknWeZokeQL3sg5t4Tmoh7KCLuKmA6UN5YNPU
	 yP/GEUhv6PJ2W61VPakRSFrEmw35VS993S1x2Ini5YcloPwakxVR/XLKoT2JdCFh0D
	 Z7cdJzEA2c09FBNccGZyiBOmdnB1Wj3XIbBicxKBCDGQkayc0VShbGY9XkvwOVxL2v
	 kwoNB5wzOTJOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FC2C88E73
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945983368.9964.17925745158188866655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87dbdc3f8b0cb37933a9e22c02469a2c92e57ab1fd0cfd6b399e03bb99f9afb5
Date: Tue, 15 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789459833
