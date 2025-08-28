Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2993313BC3F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756355994; cv=none; b=FvhlxfM7TbgERJEQpcYBO/xvuDLBVGoRW3LOLAhnVZoeRrlSi0Bpi5Y3B8qBa7kF3VYO8LwiW8dlcQ5s92N93LGWwAeFt7mOD0Nt7SaT/2CYfnB4OpwrXs+k2Jm5PReWU1SyhABQQjrxsbNY91xJGcJRxOyeahWbacwlST4V4NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756355994; c=relaxed/simple;
	bh=hrdk8Y1RQ9rBrldia3nhZFTCCU9hJK+oh0vjuRoYaSg=;
	h=To:Subject:From:Message-Id:Date; b=eQ2mOY79MICTbF3FowlP3pWibrLyujNNWwZQ1Ghok8eqvw5+zRJDA/mJhEwRA85NnEh6AMDsOOFTzBpMCO/WhaE8cwcF+lKkcbqsWnPhKu4Ya07XrAjOSItQTc/A2L8dYJAqHsJI1mIzN+W50+IFxD0cf/g7evrQtq54MqkHjk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ew8XMg8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ew8XMg8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A504EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756355993;
	bh=hrdk8Y1RQ9rBrldia3nhZFTCCU9hJK+oh0vjuRoYaSg=;
	h=To:Subject:From:Date:From;
	b=ew8XMg8BY3qVrH+mnX1z/dXkJFLUL6QIXuxx+sDuMUrTwtP+HvaasnUtOxb9uTcu1
	 rQMEaET9oeMJCE7Mi42FLXSmWMuaM9Nz0hiCwVE1Ygv6x9jHB2IzrgVfYGWx8HLdRp
	 7NF+g2kqzWq1sCn87mEHFjPsMzgX1MaNsyQ0DyaYHLphEp9h+SMAl76EutcxKkfJXv
	 XOb1kcQlWT/fIEt77m+QEPTOhV8CqEaJ9Y2QqTCvnFX1OWfotqS4HR62P8Gk6EgtaF
	 t0J+VgdPGpnnnQEzRDmgykL0BnmAQFiMujFMs6QGUstVj6ML3zQUt9Z1igRNI/0uUr
	 kj04i8NH82FMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9143BCA0FF2
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175635599357.11062.14301778559263862884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dfef03b4b2ebff05dbcd607e1a54141d488ceb68e5e57501cb9d0f20819a999
Date: Thu, 28 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756355993
