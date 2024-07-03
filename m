Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D49184E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719974123; cv=none; b=k+5l7dvW726vFrAnucp7vulZzpWMTZQhotfiORDdhlY49+HeJY0HxpTQphX4iP6NE4Jw2hfjAhWRMjAJoIGQ4ls3KSccYWYsIFzR25XKB0uZfK249BQ5PeSDMiYA2qjQphAiMtC+JuZtIdvfqgBLGtRhs+sCogZ9EQFmKlMs3qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719974123; c=relaxed/simple;
	bh=3INQCAZVnH4lLr2u1F+IKSONMymp7pQvuNn3tcivCt4=;
	h=To:Subject:From:Message-Id:Date; b=S8JRkXnLXz1t/89z3saXAYXk5ZZWegzuTF9EbanreNrSeg53tf2mOzLmCL/SY1M7C3A/SNTTahv3v4aGWwVB+UkrxBsVvAuNTEDnDFqjpoiy4nkG6k9yUUZXMhPi1lhmTEFt0teIxX78tbir/FlTjBgkN4RTZXyEgY0lr1Pe85U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfDTibnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfDTibnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A4BC116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719974122;
	bh=3INQCAZVnH4lLr2u1F+IKSONMymp7pQvuNn3tcivCt4=;
	h=To:Subject:From:Date:From;
	b=ZfDTibnlabZHUlpA6FbCz4o9RL1HZvXX6A6uAaEJYrS7Pxpx5U91bSTkdkSoSIGTU
	 JTUVDXKHbTbkonIid1j0zQ2+2CyMBTJ8SItUvXeYe/kLWAclbGq6K24V9isoXSX1Vl
	 l/rfOuTYZYYTjjNk+JBhlydwrRMEcaLit7L4QKWPrdj0xe8cUlvu9g1LPM7X/tB93W
	 7S9RVBYseUaE9DxW6yJEndr9D8DR62ETYVrX55ocEJsJGHtk0CmiWg++OgUqnk7B3J
	 lgKr8Luzf5IBL1IkX3bnDVfFAIc0VPfErRkMGn4d9Lrj01KTN5AiMM4XHt/n8ywDqF
	 iZ3fNyDabWN1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E48C3065C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171997412279.6082.2694264343038221309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0aed8b5418d9d83a132be6bf2bf9570e18c7a2114563737cb73111a486814c
Date: Wed, 03 Jul 2024 02:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719974122
