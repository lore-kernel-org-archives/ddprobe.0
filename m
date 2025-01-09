Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7281369A8
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736451954; cv=none; b=dbkBEe5bj3dQsN94qqfNvHZPXFi+yze7r3e0CxJAeTcpQHukh/5315NF1q5LlAt5yg4RbWCVQDm5IsmIFjmBljMMBHYgLFTtweY5DSKrx3eph9IPbt+pwFfaVxVTAsptbTDvQ497OnIOEdfWuujWI6I8SHFPZ/7H8yd8zgd96Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736451954; c=relaxed/simple;
	bh=2vU1FldLMS59QboqzgZOxPhZqVQ6BH+FP0sM7Y1nYQo=;
	h=To:Subject:From:Message-Id:Date; b=rlIg4W9FCjxv6hhYtrz9sCWKx9wGO55ht3pmHas6u5tz2+HsR++Mqbu5PH71QnaYMFu27QymIjEzH9DVicc7ezrXRejd5SMcHr4lHDRARwZJ3SsX7ppT8gaeIN47UqN1BdUnRGDBQgBkgVyHgD4KH83/edD2utUSVgAAd2tictI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7EA1KSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7EA1KSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF342C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736451953;
	bh=2vU1FldLMS59QboqzgZOxPhZqVQ6BH+FP0sM7Y1nYQo=;
	h=To:Subject:From:Date:From;
	b=P7EA1KSNRvkW36g/m+qFVWregdRrmhpIdt8+RaR1Kyf6oTs/AyFQnG+hBl51EieTR
	 Tlmv598JCcMoed1L7E30wD2p33JA5zc7yR11QAO5Vx4QuZ5THC4ILayJwPuGiOyjoH
	 RIthUcl6RydVzOKYgNucvYHGAOV2lFN1xVAyFlWozEaLpcCTaww7HLV6jnfdbJ+wgk
	 /VxO4LBm8FVSWi60C82n22GcjQKWg+q+Fi772njkCtoUQf9oNgcEEjnaleXrAa8Vda
	 ySRpzPIX6MoNuyfcyHAOMLastG5L0uEBIek/0JlCVzdC/rM0TDvLz3xNEcUp9NcOLY
	 CKa1U1GknGAaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95066E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173645195357.2681.7803370655647418337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b2147bf3a81536bc4b70be4dd837427cb077ed9024ef7c7356b2fc0318c3d83
Date: Thu, 09 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736451953
