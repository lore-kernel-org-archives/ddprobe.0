Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18C52DECC2
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789198834; cv=none; b=YhQFo9SR32TARHgMw120ED4w7kevnBQRF5WvvM2oFmR/PuqXyJ5NATe2YNYhHmtR2ceNQDhs3xOBV6QBjIeZXhOx3vCHB1rMDX48POquanmsU+BwPKjQZdKliecBKHIUhpHcL1tJh3S0wqHk7guGw7bDl3n07Ha3AcUY8C8fplA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789198834; c=relaxed/simple;
	bh=+JDns3bMjHw5iCGYgHnFNuYY/RbILccoPYerYKU2b7Q=;
	h=To:Subject:From:Message-Id:Date; b=QEcqtjrE9ZHZ8BsfvJxedTOCmJOJ18KocJ2e5J+bx1BPdE0hrgHhfsVb8S3TECtdg+14ta9IJmLfc5kYa1NRbkuwlo9/TmZGgehPEPAiGSqy4zo33LP5cDso3i9hOSQ4n5t4Vunt7SLfLNN13Nmr9BF8bvDoPFxPaRz7WVwVeqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzUJpYxV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzUJpYxV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1681C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789198833;
	bh=+JDns3bMjHw5iCGYgHnFNuYY/RbILccoPYerYKU2b7Q=;
	h=To:Subject:From:Date:From;
	b=MzUJpYxVYQYahHDuHm2S4mOv8wQlH8KsybztQq9MI7eYVkLG81t5et47j8Jv79Aoy
	 zuqoWugQilzA/C10MqpFZ7mTSh8hhOjaGkI5+pLQ/JWJ39HmQoOJ6GJfVJxzUTpchA
	 fChP+dp/BnFH4IJpTH04DChrc3V87fsf+njHspkJQvLXSjDXKBNiaVEn7gtZryEpjq
	 AliOiaidiIiWtaJx+ISiXVnoOYpdutxUymwWofuZLz+wo5GyOgJrbClCN94SVh8Trl
	 GEc+vR1ZGrjtHsNNNLkOoSzvMStFVmhdSmvPCFipFGpVYWwCKYJTcysdePV/fWeEnD
	 wawBRFlp6jGaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE780C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178919883370.29529.86777750328367098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b874cab87a5d29440e898a679f05e624cf903f395daeadc4da6c21add965f86
Date: Sat, 12 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789198833
