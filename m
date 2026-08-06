Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F823A1D14
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785978034; cv=none; b=ntOmNLB+ouELcyJRv92ohy+xDfFRYjwLjs2uF02sfOWZUUEwhHTaV35brqdgQgc9vn4cxFDaemG0r75hxd18x83F7TdBBZW+3RuuTEmGozscG6fQoAk29j3CntA9kbB0xsLwsjFs29Gq0hh6Cst8G0qekH042fCduJbpG68HdZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785978034; c=relaxed/simple;
	bh=gAdIR+C90YeBSKN/YpxPZqgt8YZKBbyLon61gHZAelM=;
	h=To:Subject:From:Message-Id:Date; b=Pw3e9heyioxq9JxxlXAFImi9uaZJAD6i6scgCJ6+ZlrWNcX8lAT7qigeKxdYcWLFlDAqPrqcaoA9VJnWbvReKnppqmxx6BUdEAgYoq6NWobZtxhlTgLjFkPe3z4957WfBOij48dtb+11SFy0HIKE3aTPnoCh8BMdD9Hcj75BujM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MY6I5kEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MY6I5kEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A9DC19425
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785978033;
	bh=gAdIR+C90YeBSKN/YpxPZqgt8YZKBbyLon61gHZAelM=;
	h=To:Subject:From:Date:From;
	b=MY6I5kECUpe8rIz3uAXFYALWetS1FAEOKp9iIdcHgpRtnFP4OvKk4P0rs4g5EiboI
	 G2nYBMBEYNbDmgbgoTC0em7mpudXrT7Ib2Y6qjvW1NMvAhm3e4f5NkKB9d99bu68wp
	 taDHlHmp1kmqJGu0qPptqPZe1Phvuq2Wz0BolHbtH29HzFw7XhQvVNnnmEy1ErvnfY
	 53aGLNKwa7ERfki9rxYg+kMBYnjczz28KwjQAV57yI+LxZHBtXW8pOwu8OXxh95zMl
	 yBw+RTxlGQ/X0yebo4L7yg5Cw+LbzJ4n2zoL1BGXmww5p3d4TotVc7Rq9/wT8rG9Sn
	 6Cd5j3T3Isz7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA25C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597803369.29704.6463633421136602044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a142174dc9a3ac2978fe3b20f5a28faa39a87a093b8cffa79782e97d9f14ec5c
Date: Thu, 06 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785978033
