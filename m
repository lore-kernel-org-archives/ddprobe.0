Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1CC1D8E06
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736975754; cv=none; b=fIiERddry2l+hdASQQi8LLtMhJYLUqQUQSpoKCY+CwYggvh7HizsgGm5M1OHnp46JqF43p539SarLgf91C7ag1wZzm0IwVyv+SLAH7jjdQAZekinhno+1yJKUu7G2BeFNEb3iiD/nIJcZB1TJlZ5G/U2uzyVglE1c58T/K42+sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736975754; c=relaxed/simple;
	bh=xN0pmC2amrP8+rmlaQdgEVQhL3o29aGe64QO2WfDiPc=;
	h=To:Subject:From:Message-Id:Date; b=jLqxSL76g1cogyCcA9kZHyzGJ87HLXsoPzGIo4sFfI0X6LJwr02nz5EniBAOuQC6IQ3WUeIeqUww6YeeniXymqn/iYPLa8wdcRpFXCTj3hSFp7x3CTMlpt33+sA6PAgZXQYj3t4QwuzfEvojQa9u2H0TJqNYvP6EyaH+1J1w1Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZZbDTnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZZbDTnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1AAC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736975753;
	bh=xN0pmC2amrP8+rmlaQdgEVQhL3o29aGe64QO2WfDiPc=;
	h=To:Subject:From:Date:From;
	b=cZZbDTnIfDUUFDe46JoHbA2YK3b5f53bAo8sOtpQ5YH2XrQPvVs4kZCAWHz5BFwpT
	 Ju56/ogq4UbV2bf1/Pv7YCeoiiYSw4Jl/cs1isaN/oDh2Z7SPHLKYWRIMS0ND9T90m
	 ysBE/31qVkokjYw1myqxy/3UOmTr/QA8w6zBrjf7qASI7pPaNsYRpdBesOShlwB4e1
	 wh7R/rSXDkFLTgwh1p+/rFJTVtl/kGdUQzkI3nvOQhxUJJlhNIHS9KusrjyHTRy4Kc
	 gC87l64TEoJ1eWBaC/8VAVP5u6KAOXItkM1b90HxHXHkP0dj3aeCpBIKHQ8kx3Oce9
	 INF0T0hoLy3kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F4EC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173697575361.14810.6651051544878781474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fce8d328acc5b3788674d7ebf7508daef6fc0c401c1e53226e11213c6840818
Date: Wed, 15 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736975753
