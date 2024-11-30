Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8731474D3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732969554; cv=none; b=F5pbSa98ITzDv1GGlzKzs+bxPOEo9JhsG6L+F++TODy5UvyzLdGZ+m+c/08E0lG8vHX9wyMASEjzEk5kAEo9x8qSak97N8vQPoWyg71fq/rYMCuwOYqqidPgltOuFH/dHhgJv+h7m2BXWijPWKGTuIrRcSQ3UCpmOKRQmhDQoro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732969554; c=relaxed/simple;
	bh=uib/OSA+GIEvXQikAe/41IhqF8FyQvNJXLSk6hItSvA=;
	h=To:Subject:From:Message-Id:Date; b=jfdRdj5F6mTOvzhSQV+rJW26i/3OPQg09Neva5lq2HSNZhN/AFINg44CX8S2oIf35dBQVaEVLa/TqZO7ixwhlzopwgDbt4mGUhLhwCcit2scuTP0sZbfP34XM6G9tl2V1xZDjlKqDmJKszaI5GOjKz5cjKnWYmJO80FiPWy1gkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVU7ZDm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVU7ZDm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9D4C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732969553;
	bh=uib/OSA+GIEvXQikAe/41IhqF8FyQvNJXLSk6hItSvA=;
	h=To:Subject:From:Date:From;
	b=oVU7ZDm4n5m3gNJAnqZWhDUHfjb9PAmXCtF+E6VyAbIY+fSS1669wW5WSrapmgvvC
	 wJErVkWI+JdPtNA4gX3nOvvhg7QjgnE51aa2HQ1vLLZpmbUn78CJFl6PwpjDfHv1L7
	 1I3pG2m0iZHPvAzP2hEVmDPEpqNdeZL+GAKkDA5NmEbdp00PTD5EbA0Wc9PhCB8DSo
	 JjiZrEdUYwaNfXO1/1mo6vUWzmTcO+wXfft+MN6gcnB/JNzJIFtfg7X0xmNennquG1
	 1Fm14hJxvV6S4fDGNZ2Wz+vjFsSN0ZdNTduraCU8yWATwlin460gLkukz38dnPg5bB
	 H9sIPOn0Lkudw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1159D73600
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173296955361.29131.12947607660078175725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182dc647e85462697b72725749275d86da9c8a3cb7d2eea3e19dfc2ce34dd134
Date: Sat, 30 Nov 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732969553
