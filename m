Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60556537F0
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 10:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712917763; cv=none; b=YfS64pOB7aCOXK1gJEVmALVqr7eQPzc5O0nGwvyVx69QfUjWkeVIKig1yc6y183/7loX6XiW+WvC6aoF/l/vG97h2Ma7V0UYdXKDHw8tqs+YR5cNqCsPKnooCUXf+IQsBtgz3zfnONefWlrqS3uVoMB7t0tOq8X4fmsHvqkvCHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712917763; c=relaxed/simple;
	bh=M1je+wQtTuQy60o15/558nGfcDAwXEK1bqSvluPz2qs=;
	h=To:Subject:From:Message-Id:Date; b=NZ0ZlVrJaO6DzaInP7hmHRY+WqPBOjTGLyl88NSHpCkht6gV4QNJHgVkMTWfOHnnhZtUip17U/vG5+sl+a44bYpKIqVjSrXlYc0Po+yKKTVc+RvlIv30BMljWXNtwS5dgzL2E8vC0MNbdJVWrr1GcRE6+mmPkQbMERf6G0BGRwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CC4qrL5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CC4qrL5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF90EC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 10:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712917762;
	bh=M1je+wQtTuQy60o15/558nGfcDAwXEK1bqSvluPz2qs=;
	h=To:Subject:From:Date:From;
	b=CC4qrL5ewYUdvPYhCPb5mQYPoqopBekuyMxO3XvE5S+j0h6c9EDqxJrcFDWB+tT0T
	 NwHqwOiddhxXIWmKoISIqcw12yq1xRBxPl6X0112GzP241I2OoqqPQTcYFZSGb6Ro/
	 wGgwah9coFMhQu31N6O3otZJl0he/1dbtWWE77kpLTq8imXRT1Suy/QPgLue5h8RXI
	 jZ+VaxKCqHsYwK+8HQ/auwYba7P0ZWFzEhrGJH6eq8olvsJA0317cXntF2rHFKc3bU
	 xN6+7X25dtkm9VIx+lYGGW77Eaus3I0bC7Uhp5XtPc9EIN12lp+Vuw8SvuG7oNrIoq
	 k7eJpXH7lMCuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDCDC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 10:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171291776277.4096.7028605043212734144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a15c5c091974f17de9f4e75d8fe1558ec5f9d127ac4b8349e8db3aefa58dd1
Date: Fri, 12 Apr 2024 10:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712917762
