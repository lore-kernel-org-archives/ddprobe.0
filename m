Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2853C17B4E2
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729890354; cv=none; b=WKEb1sojSOAWJKB/7XtsINbYKh+IA5RKqEZFBvl02DapkZnQFaS63DR/DZY5FkL8ym63QoBQK1EOs9SU+siVbkC71JBOzMaY6xkMNXW9qLJcm0CHiC7HyqFO9+Fj4QZbci9eyzPOrw40ph47BnL22f60Enrl/mpibtEmoODCs24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729890354; c=relaxed/simple;
	bh=nV4q5KTMwfai+x1Dj7yATJ49Tmg7km7Ff2fN+r9snCM=;
	h=To:Subject:From:Message-Id:Date; b=HPBRo1L+DDAAOCMD+2imuRJXcfGy5HDMg50Y38S+fNGsohyQDCWMFpmjd6kUqp8s7d4EtAEPDjVqOF+whp73lyXfBSEfjtMLqK6NeWIDyFcLUMh2EdUu/c+TrfEvmhfHg0HVy63keRxZTQuNU7T+78esRxzABJ6fpVASuqa/m0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Muo2Rn2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Muo2Rn2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93D9C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729890353;
	bh=nV4q5KTMwfai+x1Dj7yATJ49Tmg7km7Ff2fN+r9snCM=;
	h=To:Subject:From:Date:From;
	b=Muo2Rn2K6Jd3TkCY4suVzwi7IVAwe38ovBRQ5LFkU0ZIri6xsG+ZPfXpvtlWY8OQ2
	 XWv7vJiNVGItWaXSuwLoIv9LKnINpw06EIAx9OuhOBT8E12w/ELPZ9M0EJ6zXzX6hj
	 +LMAVz335bAYcjQ/wpMUkt+PwKPqeKOM5cbzyl68jfXCla+Wp6j2xF5tEbI4+XVnDS
	 bwtZk/WHNZqgR9oQT0p+UQB7hVtYdhlki9ubt7gcoG1hrkVy3kwrtSiF0dI2R4KiHh
	 OM+lB8OBi02fE7tAD1ofGRu00Q2ylYnvNwdFgrkHA/WHKT02D3t+1gosRFaBH2f7If
	 LVw0QePKsykgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95292D149F3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172989035360.13679.5986740453432719361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84f709ea9347924e0bba71c6e26485c630c6962b0591dde9930023f14a1707c
Date: Fri, 25 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729890353
