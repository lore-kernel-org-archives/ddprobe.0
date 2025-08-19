Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342CA42065
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755638394; cv=none; b=BiyO7vbZos1W6Rf8OlN2GlnBBUhRjZ2dsf1WtyxUFZfXdah+DNIy1YSSnaMgg+6JGMeYg0mK2sjgnGyzEDfpZjPvnZt8ruwnYqezJq83q1I/Spy6XmVc29w2wpEcTJrWRxbEK3Nr5frrpN6KISEy3NwI+0djq0uSM3XMbQpcQn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755638394; c=relaxed/simple;
	bh=Ntce2O0X80Q6RGJ0gDWZIOGqhx3138q+3jXUCi3Vhxc=;
	h=To:Subject:From:Message-Id:Date; b=HABS4TLTnU+HEvPMOVV2UwkkA99kfAitg+m2q3CeEYd/GzpdY7k7yPfSjad0K/TAgYB97tpkvaEKOLhvAVzosQNhxjxAl5LH9ZEyNzAzhwPw6wCx5CatYiX1zMWk6pRHa0LJveST0ga13PpX04aDUg9NZXX0htqw7nZrF2pRftE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKcQ2K8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKcQ2K8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FA2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755638393;
	bh=Ntce2O0X80Q6RGJ0gDWZIOGqhx3138q+3jXUCi3Vhxc=;
	h=To:Subject:From:Date:From;
	b=PKcQ2K8y6AC9LlOPgnvIqEzJxA5pZLnLwu4Pq6oaGqv+qpRVJjdT6pmEImdQwh3nE
	 Wmb3vJadfVbg8DxTkJkqKuT1+sLtUFKjDeu/cNYEvhYHEwOYrSVwqBhnSPF9T2ODPh
	 ISN1ZCa0pvZICZeicObWVMekNbnDNQVOD/dLgLjFJ21ghfk7PPKm115qxKgmV94L2r
	 mFeI+z4r51yf8+V4wOUX8ZVhq7o0Rbm2nQ4LJK9ZyZjtAKdPyrxgXHTXHfYgRf3FKP
	 3yOHpqSoGJykEByE76rRmAMPYzJG4JNKWYxb0qw+XPIAfUI4/oBwhAfOA8RVBXGVPu
	 c/p1x/KjbvooA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92991CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175563839359.12896.7431105551036263254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 914b0b7327a0d9eeff7a5dcf65e75476e677a06cc1dc3cb0cd7c40e987549b32
Date: Tue, 19 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755638393
