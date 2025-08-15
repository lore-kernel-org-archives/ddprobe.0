Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D40D35979
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755245995; cv=none; b=J9K8+AJCbj3GZH0rRBUL1b2t0bfC6vGfZu6kRl/qsS3HdYYpxgBr4P7t2DqRf4kK+BuKV38wYL9LLWmzxhtLLk61LTsbBiseBUf1OVobzETQv2ipwm6Z4jylsTrbMMhXdMiqyY03ynuM2wi6kxt6N+KZLmiim947dKZnkNSfzxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755245995; c=relaxed/simple;
	bh=sbMwu7NZ3VJq5PDwkR3tVY3gBO+gq+H+geFt1bPXYPY=;
	h=To:Subject:From:Message-Id:Date; b=nmsXCZafNFPF07b8Hr2z0em8jEN4fx46tvd1QkTMTVCFB4f36PWTIiWsr/E6GU+s4wtv7sW9ZFzB41Xk89Wg7UNxZ3K5JdyLV1u/N0Ls5kMlIRlDdHBN89602Z3NUx3UQdLkSurNMrbXOsji+dqPMDd0wHiy6fUWDzne1DqQGHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7vWmiBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7vWmiBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FD3C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755245993;
	bh=sbMwu7NZ3VJq5PDwkR3tVY3gBO+gq+H+geFt1bPXYPY=;
	h=To:Subject:From:Date:From;
	b=O7vWmiBMMweFHY7nzOY/J7voiCvCgVuXBquX9RYWu2wRQQmEpIpoGDj+dZYltGWbI
	 wNy+5PudfhpYa9UNDwn+ooCR7E0pAH444A8XDqGbkC9jIDyKrV/dbzSwkzfABdYQYq
	 4fiJ88Z8+ZaQSTUYaCMbkbY1wMrDXqQn3WsYDsbc8YZdfhHSYNBJeZtjZarlMC8TbT
	 4DS+1h9s03ggMYYl5nirCPVGdj531+aY9JnKS/Fhbq26IUhbW1RyPyRVFLrvGAwgeE
	 FVVz6v5m5n98falgWCmsodmsUk2EJREP3U6dTuNocv48kMKN53zo3oxdnax3qC7xG0
	 2tdZ98OSR9b5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907C4CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175524599358.18153.8075753009138936512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f45938ad9f2dae99fb95dc4e752487e44840c5d9ec9021be0c5d1ac45b3ed7
Date: Fri, 15 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755245993
