Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2765A29B78D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776025054; cv=none; b=e02r6Y/Lj9oaMFxaa3FvjrVT7nFh1A+wt2M9lrsE7HoxPNjX2FKm9e8pHP4o0+Dpd7eGGa5FWujTzhAU40mmbDAzsMCp1nVU22eVg2QssbGIAzPUZUVFKWwfbz+b73NsBZpwG9rH3pvySmdLsaUJO6RJ0e4imrWKX5WB0Vn3sL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776025054; c=relaxed/simple;
	bh=hkBmNvBe5f3nWpDfGLfT0/SzrRrobd2CnDpnqdyZVCE=;
	h=To:Subject:From:Message-Id:Date; b=eBviHm53Vw+7Youm9SsxbmM+ULyVVjd2QkVAspP2RyhGHGBERxCLkmAAutBV4dQoDHALj7wXq61S4Y3rLSHv8WQiLGpqRlcNShHMkUUJsD7tHR4kL+ZhcwSWIrgFGWyk5T+QDoCnqOtkb53q1J2hjdKBx0hiax5aoa6W1kSjQmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOJnJrzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOJnJrzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA175C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776025053;
	bh=hkBmNvBe5f3nWpDfGLfT0/SzrRrobd2CnDpnqdyZVCE=;
	h=To:Subject:From:Date:From;
	b=kOJnJrzNiQulpZ03nd21gsRPYeR7UzDI6bdFcJLHNqLzexhVY9h9PPUlqC7elTXtK
	 XyfqpbPBhJGuMbl7wrn2abGlet1HGteKkrQ5PtZM22cPSWFdtFaYoq4ImhV6UCTndx
	 jyNSuth9ZY6qZPVXvearKy+aGtY0XOxNqyLw2XPi3BD/32sFwPJnMs0WMwwMV7UYSY
	 sOF/yarN/fO1ZAIOFZBVnTH7lAldGnxPRjwh/C7c70rJKBAx5XuQOSIQk5uLrKFkl2
	 91ucxCAhU7U/AW+DjbfXRRm7PTLPkmmAAHyqliCPl5SVE6EpYrhxK8w++W6V3wF+Uz
	 UFbM27eq/E8zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9BAE93800
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177602505369.13995.15953842904975231298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a3600d19211a91c1f309ad2358d0db5427b7f708f1df030a96c57cd8e72433
Date: Sun, 12 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776025053
