Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F242236E3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779859954; cv=none; b=Dk4vMDxyD+GWZrF8YDjALgjgnyNzp4lShSy3YzCKLWkup7flDceKIwEjHfgi+OMQ0biwIu8zzRINKgysmZWnW9Zns8XHpKDlVA4tn98ICX0BsfgRJptoujzedo+jLMwEJPqzBVMdGifuEc2lqw1UuERfYSwXqnVfdqoNGLWSnCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779859954; c=relaxed/simple;
	bh=ftUsMrVlZIbXPqPAHFiPATBHzM3+d9YtIvF0WQuvNAU=;
	h=To:Subject:From:Message-Id:Date; b=dOjelVc81p73jRPLCjB+nbsVDIqHTww3hT/iOMoHmkGR2sCbvTzrnqNPNYpS3jHXODtjE1tX/C6QWvHaXXMJx3aDErzXZAaUrLwskpdOmGkDvjnfrH92xC1GQW1Xd4LT8Y0MHmHYhWP0UH0x0wIyYUyBH2YsvLi8GJ3XaSgt1+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d39g2na5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d39g2na5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEFDC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779859953;
	bh=ftUsMrVlZIbXPqPAHFiPATBHzM3+d9YtIvF0WQuvNAU=;
	h=To:Subject:From:Date:From;
	b=d39g2na59enX3QKtlLeZfHWVtlYMNLJxCmzm2FlebPwAXjEA1/AEznwKWlQ/nEYO6
	 dmTG/KYMmcsO6ouc9aHLM5O0LI3QwPW2jb6d0ye6n+tHCNr5MLWIpQ7yv04vX9rGt/
	 SnIfQnhq4nOhXtm6npyD9VeHPrSbqdSpW/L2ziwRWLycFtrZLKpTrw2nWEsbFYAMHJ
	 2I6PaHu5mrOxvKG9igWGu0c7LRA1Bq6K7T+EVUIvSDAYg0yWDqF8sDsOAe/Ohu6QpD
	 UapwaC12iEy+ErKNei6WDQ7h6L043AsfTJ3NpmgCe1dEZJnIyCOwZLsT2B7u9CCaAn
	 g8GR1ZusGNw/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82DECD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985995368.2576.11190447087924452054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e67107c0879410470af1d7e427f74edbf99f847184a012b190c4143ec05c2a
Date: Wed, 27 May 2026 05:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779859953
