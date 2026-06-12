Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0F21BD9CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781294794; cv=none; b=Q28JgrQXuDehRyOxJUkN5ueZJ9ajXcO3oNVhUO9yp1UKAQ0E+0QwfDSZq7ipwnaSb3fQYEUj+kUAoXA3s7OJW4v3Etty5X3zEoR/wBN5bJl3Qpjmwx742h3u//i59ILAOdhZ0csRQoj5feUaIbHeSgqNEL+4FkPR9ud82K4nBVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781294794; c=relaxed/simple;
	bh=yG4HzDD/R/tr8Kde+dOJZ5PXJiAcHFAuxOJnwPJFz9w=;
	h=To:Subject:From:Message-Id:Date; b=UErcqGwIgvJCAPTSv4fU994Io4AizGJwIT8utphiyxCGol3EyptX+h+LarPI2gf1pCIqWxCAus6ruskxNq9tysp/gx/rYVgQA9vVoov2ZyT8V3eL8+NRJb98tnzmBYnDus05dr7HxYxw5WxT62e/e7qNWR37wJj7wgrc65BWss4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skWgFBSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skWgFBSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD04FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781294793;
	bh=yG4HzDD/R/tr8Kde+dOJZ5PXJiAcHFAuxOJnwPJFz9w=;
	h=To:Subject:From:Date:From;
	b=skWgFBSqsGA3RqMbZzFoakhWkJRIWzPVE2YsgEWhMKlbeNBoieSeCW0hWSQdyl7E3
	 aE5wwnXbv9V7vDogck6W/BDweNtIyjOTrDjL/UUSTOp+iE6kmpRiovNOKb2KOQnvbZ
	 sEvMUhSAjvfSAkMupvb2wHVW8PU8naTFj3+O9UAwEnMAKCOgot0Ixp02xGqE2EdQsq
	 DdnWC4UhtY15dsgebk+bQXtOuAZAUmdmLqZO7XO3eJPaJJgDOHhpnKc9QwcG/IlIUh
	 IAnoFlCYjye7m8xr7r//ehlvU2L84ILSYv3J1q5Gg4FCP/KRFdootjSOkUp14od/3N
	 QzS+laPk3UK4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC982CD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178129479367.12846.12005426718572834418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf4849e89e8eee3a07a69b0121e0586058eb18f95f1bdffc7e6c79dbb269f74
Date: Fri, 12 Jun 2026 20:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781294793
