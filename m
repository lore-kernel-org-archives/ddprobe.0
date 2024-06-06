Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19311194C9A
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 13:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717679843; cv=none; b=eZQh/mp+jGxvg4yfyPZk+djDl+2VDSK9V6FhBITrHBnwpb4tbQvWs27D1HykPu5RSLjS1PYsuWgYdNkoD2B8clu544vK0rH5RWwE2Lb5vaxPJElDhMMT8kgg1noboWIhYfSTBaXOgMAFCmyVIvypkmPOgeJikAkCO40IPg19TU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717679843; c=relaxed/simple;
	bh=L/yBukrsibB1GkDRuRxc/rzKi6zn2yv2llIJc9oxdgA=;
	h=To:Subject:From:Message-Id:Date; b=FM2tyNce0DN6l7/PJki7X2/5fLWAoJzDoLRMpdrsKU2IFvwcllwxiTE4IXMTAa+Law0UUIlI0PHT8Jx99qiwxydsAvTSBvvyoHbJ3CEK9TnKInGy7Qwd41HILqEh/5Vq5dwzuGblpel8ta1m5GX6EWK7nQQ0JgdvMQ5fe1p51uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQcnqEMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQcnqEMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38CAC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 13:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717679842;
	bh=L/yBukrsibB1GkDRuRxc/rzKi6zn2yv2llIJc9oxdgA=;
	h=To:Subject:From:Date:From;
	b=kQcnqEMYpPPRprs45WEn4C7FGirzGXIPum9hJPvOwCKUxbn5qKGav006WVJYQ9YLO
	 jDUkjc7w9jUcQLaVCQL4RaAo/eVVwyOh22t5iLJ0Rn/A1kbIabMCphZj6Pz7mV9kkP
	 M1MLPu1GLGjLkgm4t2QAXZiAseyTfJ1E51839pDgC9SLYM3Ka+8mUwULJTH/bmbXcy
	 GPT9zd4Na/YMuJuAoh8Gc/O9h7ImvQzwKWYP/S8Cwe8mACBRjIj12qQOXW81DQhxmU
	 SJ0GA3mBmJS/ZoOliSGoAw3O0WL2R51Xyv+/grFcQta+KEkEMmaJKstmd4eKHXqTdR
	 7p6KznoXXNBdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0767C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 13:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171767984277.335.12402179398896594589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b111d294858d2008149f9b812727d84aa8a1e8050c14c01a64c74ca3fc484e3
Date: Thu, 06 Jun 2024 13:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717679842
