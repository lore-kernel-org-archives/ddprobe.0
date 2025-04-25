Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBEA191
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745539794; cv=none; b=p9ilO000WwLGisklRb1iu2ef/hrr0VroJ8QKerMQ7bFuMCcq0W2VsfmudaVJSh581sR5XkMAuaFFgoKa1V/a4DZtJu64VcII9YHl8whns44t4HfZyAEjnCxHhkSN6a7cmBmfcjtGvOVS9fU3eOsZkRHlSVEW5eqYSGRuHExEHl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745539794; c=relaxed/simple;
	bh=zoxkpZJ7liOblOr5XSNp61BoYbDOMe1XHu6M+i27b/k=;
	h=To:Subject:From:Message-Id:Date; b=bO5x0yS9goBgkSvBZeZlwklPgaMsfs78lJXVtwk6LiCcwVxqreoYdkL29/wfSoIZflKIZKvKmhm6h2WawpW+OvEAg7XY0faHSD11z1z3XntfP5ELjV+8ZvHTb2Tn1rlbWDquOV14vU3M6N/Z5WsZfjU5LuIYRQVFjv11l4DlepI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAYTeVOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAYTeVOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D86C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745539793;
	bh=zoxkpZJ7liOblOr5XSNp61BoYbDOMe1XHu6M+i27b/k=;
	h=To:Subject:From:Date:From;
	b=FAYTeVOOa69G2lNeffeqKxY9pZYPIO5q3gJ4SKE3p8IkPK2p6kBHczXSc5LJq4qji
	 BnJRlQ7jHU9muxZNxG0Cr0574EzK7yP/dtyqssTMeS7YKWvplC7NFH/SHiyaLVI1ds
	 2u+7cwOJO7t96K5rvUxew5jNvrdPkAbm6esiLMHEGm0paPFEdEAaC72WTOh2uRqN+/
	 DmmGmpvQdT3fBtfMHSPbldBL2OCuyPpUn8PHrV0/GZTeiwJPudUWNHxkl8g0aXe4N1
	 pAbj8N+2xno847MvAz8lM8xINosNufWjVEJowlnnvpkSUvSGNciUsjblg55mcVDFRv
	 MeHZj3xZI2ttQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927D3C369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174553979358.24063.10322381208620648002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7210f18f477a7831ed17abfc368faa805223dec5f7ad81fbbb155419cec7636d
Date: Fri, 25 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745539793
