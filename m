Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45478293C4E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765518174; cv=none; b=Ag8U1uRuQpsL2rlhh7TixLtut8XWFsTCvUlMVjQifCZqTtFlahcrcIUmj2PVLA2GVjBteOT4Ii/8A9nx/baybE20cispDur+E7fHbEt2MBzaFd7jQBIVsoBmm4ccgc8mV2DmYSV7aOFNcW6aK/j5NF3UQy4kq+TvnMNSYIgkLm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765518174; c=relaxed/simple;
	bh=vX0aU18bYpUS9tnL6T85v9n/qCRequhY0oAubE7Jk5s=;
	h=To:Subject:From:Message-Id:Date; b=riM/U826aPMzLwBVZhAXiQzvQvK/mMz5lGSeu67T38UzoJwsZ8atMIKv2qvwuJ6jnYe/YftfJhMgRUDMVrbLYwBqLk9+KTwSwqLSWDnT8ghE+LO/8PJFZ7xmsOy8O2NSIgBdtTDocfhxwtakaRz/TI4rWno7PblwaSFfLS4ruZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuEU9cN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuEU9cN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEE8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765518173;
	bh=vX0aU18bYpUS9tnL6T85v9n/qCRequhY0oAubE7Jk5s=;
	h=To:Subject:From:Date:From;
	b=VuEU9cN37kyIrIHLKpx9plNYx+DL59xigNzsdnBfGzCLsQhjdAS6JUzUeldZ/mVV0
	 2E/1VPJVASJkyOlzvO5GiLLM3sIaqD8N9vicOKzOrM1kHyEB5WD9TIqQxdVJeWK45a
	 Pt/MTBmKrhNhu/hpzFrT16RTyaaXOupmjXasdf3hPetLYHRq8Ug6vdmCkcS8xMPruq
	 vbMeWDqZda8dQmIgTOO6XuuyG7MjvMD/v0tWiO7HdVwIUbw/rZNdg5SlKD5XG6eOU1
	 9n2qCF8fDP75w6aXkYiuJTy7//tEFu14AeH4JbQ/WEBGz3Bmot/1OmsqXxUTx9AeH1
	 CQBGGd6zqJ2pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D08D43369
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551817359.13062.17786859550582522332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39a2aedca5573cd16a48b36d25865dd9d5c458a89133bb65031d56139b9e9ac
Date: Fri, 12 Dec 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765518173
