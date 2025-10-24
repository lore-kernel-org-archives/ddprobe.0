Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9AE9261B92
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761343193; cv=none; b=LtxGScuQVjeOlZkcDIjHOtKga87YD2zLbWwSaur2q3/yjkasKMlx/5QFIrRJPeW6R2dNPbXJbg45DhZ9wrGDg/wQ40hA+7ykjLpMhUg++kv/TG+KPDGcOReHlXZzQpVAnFTTKmaPfBe1qgnp5sMTfBsMmO9hEqNUdWjHDdJ8CF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761343193; c=relaxed/simple;
	bh=5PAK+F3gHJO5OkYBe40xxeOB7w9TuPa7i3T3vfHi86I=;
	h=To:Subject:From:Message-Id:Date; b=lddI1j95myI4IZsvij71yGuK0SnmKL6tLUgNVJCKKhg20m7vQrC6gvAAqZ7MgWuPO+OlhWGVImkKSwKqvIeFW0TCa+AagubEj1drCmnvmpviIYwgYmBJYg47WcrvXiG+EnZKxHNqkBcF1XGPn0UoOEdcm5invXWuxp0EVe8lMwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxW4gI/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxW4gI/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EBCC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761343193;
	bh=5PAK+F3gHJO5OkYBe40xxeOB7w9TuPa7i3T3vfHi86I=;
	h=To:Subject:From:Date:From;
	b=PxW4gI/n5sSc0yW3vqSVRDo3AqJ6fdDLCXTt1peZx0sMR8oU9eL82NYeQoyTcsNE+
	 CG7Z5yicpdNJ7LTqtt/4UFFwEvvRSH4RJu0DWHzA4zGpbyq6UzohR9F9B+r8jgCSer
	 3h4tFFguahYHMtdb+mJc2mKKYx8GO4I2Z0yFva/rpwI4P/fJeXaJL65SDlaeNm26NJ
	 h1thv2SNnRjToIvuRKuV0+fJyL6YmBbC7pb3hXA00Z3zL1MUwAbWuyru/VQsP+u6U3
	 PTFP5RtZBHWVeAh7KppyCp1/+F+Tjd3oGtaUCiACwXSNgDDItvNGe3IW65YGOQmE2e
	 +xK1GC+yNBb6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952ADCCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134319357.9708.9793014164696852610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97bf8a1cf3d3e078513470c47a82f7fad2e66bff9c7e6b020c317a8d83338eaf
Date: Fri, 24 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761343193
