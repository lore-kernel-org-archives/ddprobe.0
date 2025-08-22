Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225F4273D8D
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755895194; cv=none; b=GkUrW0IOrLcEft845YnZxvdQ8+VJMXNpRfIHmR/6pXAFOYZFbnsnHDSw/wBhX3BmcRLuEmmvGKASR2hDttBKLgqKzNKgQmtlycYdfvrLtWXAkfcraZpZeDeFB25O5woYOtNUhyo5K9an3b1c/59ZZJnL/yxgMv+1YQk7XF1jMOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755895194; c=relaxed/simple;
	bh=zJtq6z/yLxRlcjvnG0F/s2Jmpoq/WszJO1Pw7NQvLYM=;
	h=To:Subject:From:Message-Id:Date; b=I86SyGvK+GlHOh4gNxVsArdt4iyalKRi+wrsZkv9FfjmynWTDbZpg6gZxQOEbYTAuYlv2vraFAF0W3J8PTiUfR+OeLlkO61nrEQOYevBVQek5tmC7Ho2MXCCekD+CDi1zkBlumwIBsbXA2MCmqypRePhzmtXNyNMk/dEYag05s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOmTequx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOmTequx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A126CC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755895193;
	bh=zJtq6z/yLxRlcjvnG0F/s2Jmpoq/WszJO1Pw7NQvLYM=;
	h=To:Subject:From:Date:From;
	b=AOmTequxPXkAzftQoKm/1vZhTTHSQcxk9ZBYVfZ4vP7Dd0aIzEV/JJiwkvdKu/kX+
	 2r/CZeICmoWarM1Hk6W90E3wvkWBh76hVRKuiY9Nx5WqFI1Yd7aMRoizqzT46dEoGN
	 V6oS5iaPy7dVmBTTg+ZLE8bLkoPQ/dU6vHN0QtF3aHkFTiG2coguyhSV56Cz/MwjyA
	 xHbEl0onqXpBmAw5ZjvUEgZJoVbKqkfZKdO2Ctu1iQ6gs6BnSaWNatHVpA8ad6/FTa
	 c1k8Ghqq6TfIVPmy+XW1T+OdHwy3qLthL0RTIMehxoDtj2UoCfiy9rpVsHjuNqbm6u
	 ucMPxfXyK+wjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA42CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589519357.28097.4918530941137630953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1ed538feda08619bff462216797e9520bf0dc95b83dc6e4848267113c1a0697
Date: Fri, 22 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755895193
