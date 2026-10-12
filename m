Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2714537F8D7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791815434; cv=none; b=uhKgB+s7C2s/kuZlWXuJraEpU2ln0G5O53eweobTzjRjztoCZ82wrVaucr4sH0kGJZ7DmbG+4EH9DerO7nnyCnJgkTrDuAPPINXSsuxjIKyIoh+yVnqQrOYGLLibN0wbYDYskVAcvVbCaynEz18fQKGzjlh3rKUOpMKvmcDnHS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791815434; c=relaxed/simple;
	bh=mnPN/erXYWqLsHHsj9c/J0rUBKl5R/er1CRL37zPhC8=;
	h=To:Subject:From:Message-Id:Date; b=AKzQPl+LqeI2RIeOnT3eReEoYzDmuNYLS85AxM8MuS7NvOcQ3B1MabSLKf20lkNAel6qwqG1OtBCZefFAV2Lw6ZGwKIUqgkcZ+fvxdD7dWa2/JnW1HgZhpew/DC8w7Ma2YkPCEhiBy96Cdg33qoj+cepxyWRODEnszL8FhiN3lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpMXo+ow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpMXo+ow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC6FC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791815433;
	bh=mnPN/erXYWqLsHHsj9c/J0rUBKl5R/er1CRL37zPhC8=;
	h=To:Subject:From:Date:From;
	b=hpMXo+owvXum1pyhww/kMF9BZ5pR6Rgo+WD5Eo2Dc1nB/4yyC5ud8t4iUv3KvZXLl
	 ERxNiS3Cbu12Oe7lG1gtgkOM6LLk3+ByTwLZEK4s14pHe9n+xDKK+I+LaENdNZVUET
	 mKBYEdLDCSgATFpUaau7+MkIO7BFCV4FMXYrFxlCkMaDxoCyEmQmc83EgQJaX06Kbd
	 O0d4aLKyaXapg4dP0hrxFv3m5p3PBoODSCCTZGXV8j7til7nr8M7uXZ8KQ9fMAoGvi
	 Hqwu9QRb5PVt1hz4YnHUzCfK99Ohi3reZhldxqCxWwsXX6yyPjdaISi86iCky8aAxn
	 Jt2ci1tnomvlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CC4CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179181543372.6727.9068062051324144233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87dde6330c3e26b82f793f60d22861ddc4f0cf79746462b2d19edd8b3bc85a7
Date: Mon, 12 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791815433
