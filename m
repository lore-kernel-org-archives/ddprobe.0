Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34D915E1E2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712753897; cv=none; b=ZBCpVJEXDEhcNa9UOxVQbnfn2S0G9OoOGqIvp+FO8I8caLdgQ4cTyqrjzzXEcfaXmAgeuntThAu1xGFBmv/8daSXisknF6jk34Xp4WBcwGCwHun0OXs9BV9/NZIZBIt0lHH2ULLP/+zfeiOVyaaA/0qciq4shbm/qq3V+LomPKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712753897; c=relaxed/simple;
	bh=13pMNlU1Da4wHrYYBDk5Mcvb8J9OUqLiUFuht8Y0zU4=;
	h=To:Subject:From:Message-Id:Date; b=PMJ8AZABcSjdUVgAfLzuiusfWdSz4dIqz0cXWEq3oiz1arsUceRy8qWYmw/5SeQwrzVepyxzwdO2qeb0fBgcvPT/DDr7cMAZiynJFPBmt9S1IMGV9anrll/GaJeuGF0V8C6MSXMQWTvBAlMXgoZUXszNQ845eCtACgzH8iTW8x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVEOO6eV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVEOO6eV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8193BC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712753896;
	bh=13pMNlU1Da4wHrYYBDk5Mcvb8J9OUqLiUFuht8Y0zU4=;
	h=To:Subject:From:Date:From;
	b=qVEOO6eV6AAM6Km9HukR/lAn8vItH2j5rIZpox7dsUOSGZHwnQucnvU5mK3RPoaxB
	 Yw+LP4ikcpqP7gOqfuQXofn3TE4kJyGSkMGbtZYO4h0yfk4Qn+S/lZJ7EdSAcEEjg1
	 uAlvbaunI3BFdIt/7PMPW3w6absTDEIz+RjMkQCQxJb7S1+vkwBnDKsRkv7duCCxxc
	 T91uGxuRD9Q5ogNsEEMsjhZSE8y2FGGzLSkdDJnqs0SMjQ1sn7pLxP6KBXup7FW18y
	 9G9VK2BHsJB9pIvROhTWFYG7lBZdtCSvukZ0c6Uol5g5qpV4IbtbvlUAlqX4T1N8A+
	 2mkeb9YzRTcog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D7D3CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171275389643.15883.14704608911279066206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b3b999571f0a8b0dd627391a6f46b0a4bd36e3c4e782f3bf278ebab1c80adc2
Date: Wed, 10 Apr 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712753896
