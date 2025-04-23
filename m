Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50E04C62
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745412593; cv=none; b=W4LXicnJFE6Lw0d0uk7gZL+PNUwpJgAp2pX2dED7J8hVS1n6Wy+ZRvzVeO7huSVtOuFrdLGBp0cV8MMfRdLaJG2k4PExnF3s1iXh+VkjbZx3RfRHS6+yNJICkswYjP0j4KA6EN61uv5ehlnuUW4YPI4tDkJ7/5E4JDMxcC6VuUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745412593; c=relaxed/simple;
	bh=t0gf7UsVt+z90lXkrbQQPKq9Q82RMdnTdAGH7bs//8M=;
	h=To:Subject:From:Message-Id:Date; b=WWFtsAe5LiBwjGxaEi7jamIEWodcp/7liBknHO41bJyeiSRHPjAx1uiotkEeilEZiCfWSTfvdWtH8vDlem0JuV8xS/6qUcvf103QxTk2PcUMYw5lQEeKfSTX7E4D6wmZ0hhxeQAcmH+aHEHKKy2y5qoJlt8YPV1hbOIjKaZ3L5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JV64Tr+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JV64Tr+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2861C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745412593;
	bh=t0gf7UsVt+z90lXkrbQQPKq9Q82RMdnTdAGH7bs//8M=;
	h=To:Subject:From:Date:From;
	b=JV64Tr+wDpJbLVz1DeS5f5dies0fM/Qm8t6fxDJ2npsa0yCJote91pcT9MgXmR8m8
	 tw9u0IqsBmR0Du3EJwb6WmIPCfly9xOo8frjs4hrMxC2zoXLzpoVuoMQpcN1NNkhy2
	 Gh91j4Hi7PEDQEdjWp8IBmg6QFytW8hbklVcBioFxF9kRf2nnmsyUKp5jY9bw5/alr
	 EIYGLOh8R04JJqNv/gkiyuG8FGK3p49dFjyPYlv3kY1XIJ9NGwVHSsGVLHeDfTvhf6
	 s4yzP6Cq9CS+BtuzAKVhXgF5FfNUhD1MmRLROV5eIoqdmd+4v/dXPtX4h/qM+pOriY
	 Xc5K/yWj3mE8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FACDC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174541259357.8218.5650481513861329693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e56e1105e0e5edbed8d29197d3102574da7b2f3eb35412b5cd168258e6cf21
Date: Wed, 23 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745412593
