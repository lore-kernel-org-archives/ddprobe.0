Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C7934BA50
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759289394; cv=none; b=jBw6m8HduEUiBTTeKiBV17jfrErtuxX/C8GGMunQoDzD+2dRdfgkhKtVAgmaHJZphJ/Tkdp9F4RJeMfvj5cNXE8H1UXYSnrLRYAu1kzRnAcZV6yn6JQcrqNrgF6bSU0v2zxbqHuGYGYqwAOqTbQPVk4Rl0g/NSy0SnNFLf1IRc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759289394; c=relaxed/simple;
	bh=rGDOKlaylgz9JgwqzX9Jv9LO5X7ZxxGG576WfggtHIQ=;
	h=To:Subject:From:Message-Id:Date; b=Onc+Be+D0vrM1pX/ClQuBnQ6+5wuzzq5WnNlHGk3muMeqPQDO86FFhdk0PAjgVzBm4W4ymx9zlrSLUnyTdAjJNjYa+7qdR7BU3dge/FmVWbBR/zrc3QufXdSL2wHnx14gRPf2s+9X8HbHhQKgAPYR/aDetklYDry7HakUCfE1Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8o01tXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8o01tXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6FFC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759289393;
	bh=rGDOKlaylgz9JgwqzX9Jv9LO5X7ZxxGG576WfggtHIQ=;
	h=To:Subject:From:Date:From;
	b=e8o01tXicHHrv5blB9pDLKV36viiO8BE0sShEXVcQ4wY85FP9gP11HJ/Md+OcXUmc
	 WQcOmqy8rfowKbMWH6UrcSXK6z7qC6U+Hld3binJD3PKjRirVsP72+0dnCey4bQzjE
	 5t2aI0Fa75j9pk+gAXLOg8h4phKdU5c+XSSoDzqprugmoBZwg9G1NR8jMNLjl1Kn62
	 RCqPBgrFqKA9osR24QAJd2QpJhKTqtGVMUQYdmpL0i6/6J/1px0xBPWh4PmXXt2yLK
	 tVPOC/+lBWUtZjDCPEJKIzW0G0B9XttaFA2k7Qg5yzUnXvqYHW3tMrKsAOeeUctN4f
	 MDAhr3t50kqww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA6CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928939358.16407.3871949119996370490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f41e9a637bb478c2cac17bcca05cb97f3e46e2e8c5f20039e40a4d7a7a6c9e
Date: Wed, 01 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759289393
