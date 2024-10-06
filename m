Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C73231C85
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728188754; cv=none; b=QpYf7nwO/JYTOBzXqLdF8KVCkPEsiiFM+Sf1bUOYPgu5QhrqzaRLPi32b8pV/MowjK/mkWZ7Wof1eWCWmnkcf0JxmTctiSRgVcADHKH91p29L9JgZ686vXINu5WPnVrGbqYrHxG1RaQv8ANz7A7iZpSP4eg2bM3M2Uy39rqj4+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728188754; c=relaxed/simple;
	bh=QCX9POA6W8A/037kx2DGuKER27Xs18mmDJoNh+Z1gNg=;
	h=To:Subject:From:Message-Id:Date; b=N9GW22Q6CPSSB6OdiCh59k6zdLfkvPtJq11+907+O06k0+tVERB6730HgGdDIP0gNEIsQXCTgL2hlX6LYslWcLpDQ3P8s8+K6hA9rZJtNEOkoa13KamQ8qblTTjDW7hMFhCB24QXOQFEdKk1jTyxjC7HJUrtQJMsoU7ozyP9arU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzwTh7q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzwTh7q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18DCC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728188753;
	bh=QCX9POA6W8A/037kx2DGuKER27Xs18mmDJoNh+Z1gNg=;
	h=To:Subject:From:Date:From;
	b=LzwTh7q1OjoUYex7wjFlDKDUqU4hgfpvUO8gpkS3fO9+DOgmc4GJ1N8OmUZwxak1q
	 pbrSpsiEiGxGl64AebA6wHAhBPNKzZbDWZM5ABMQw9OG6PZyl37C3sAatk143WWUC/
	 Qe2yHu+C5S2wY+XEAH3gpbqCYsJ3kQOhcsCRYdDXI8cfA75fQZfq9WcBluJnJaCGMV
	 U0wb5aulA4JuFGwj+cAORiE10kfEqGz7neRPoSbUfsHBn/NhSWQEO9Z6zgymWiYZa9
	 acsHl1VNG43IuqYuwy11wFYNn42u/J28hrguUsM4c2G9tCd///pYCQPuMdGYt4/AIf
	 GV2pIYhOzpZBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02E7CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172818875366.28021.1024293331298476193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa2d29f6912566c4861f9f0c533ac884fb946d598753323ed8fd413b8d84a7e
Date: Sun, 06 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728188753
