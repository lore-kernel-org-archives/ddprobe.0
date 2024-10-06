Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4117D43AB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728248754; cv=none; b=rXpgzUNn5YKq9b0lTQjP5L8yMYOtm2+bool8A/278CmLw5m1l/GhrCS89adfGngWT1+s7NxvEGwCo2mOpri9hGFw4jPzj+thiyY2AaSP/zXXFpaDdvuHyK+VudZT5jUnp3L4iySesw/3oAz4SnxHPa+L07J4iQFC97KV324J+X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728248754; c=relaxed/simple;
	bh=zBrwucqE3fClYvBYiVnIbaNGBPLBst2p7soA/LD1b+Y=;
	h=To:Subject:From:Message-Id:Date; b=KrIItfmrrUU94BChniEhKDLuskoMZw9XhGBen4uuboCGkt4ZpYADgfLGe9nptUzVwTmrLq//nHJumBayaEUnfiW72um40JKcyO39pQjEVUvGDLjBlDz/RvkbaEDKEvoM/cItVh99HxrHMN4blxS0yO4qa0VAy9uA/vD6xQT872w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lb/KDUv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lb/KDUv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD56AC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728248753;
	bh=zBrwucqE3fClYvBYiVnIbaNGBPLBst2p7soA/LD1b+Y=;
	h=To:Subject:From:Date:From;
	b=Lb/KDUv4I9BlfSHgLEONKwx7I3RJtI6rNqsBpvHAiOcAneXJlgzeJJy2OllosLPcF
	 yDgN/X+k31EzzR5MSR6JkXdX6P1KyogNnHa+02I9UJQPatsdeuPTsq6gnc0Ct8o/c3
	 tywdQJKUeApqqk6hOjk0yNmq9qDfY8OJwqvbL7D/u/zkO45ytUfUerFFqulTKKnMBt
	 5wclma9yjmL9H0Qd6RBXZ8fR/nRtKsDotUjBxjttF1dNgxIHfy2Wwl35xHz3BalAMw
	 lj88n+1r5Mt3QUbE5sy610FLv34oEgbedNMfrTZUBSeoou9AXDbw+e/hHsNBjys7Hd
	 2jGWrO4OsS8hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46CFCFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172824875363.3454.5480788004041154081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b8fcd768bf562d2679fa720abb227698fed6d42ce468169514fa0d26f07b34
Date: Sun, 06 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728248753
