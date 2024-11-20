Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAE02F2A
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732140954; cv=none; b=B9VqmMPlbd7ie0SkqXhW9yDixuM/OGjEapq/GlGszORMGs5XyIMuaFAOcMJxgBe8jmtWN6PQwML7WprLp02jAfjPLCjp+MAaNLwu9IAo57CkzZGwMu02JgtIuRAAtqvFYAsjmLcPmzOazYlsq6oMo4hSbRTtNlDlvhaXtvOrj74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732140954; c=relaxed/simple;
	bh=YlGe7Va+k+sLaD7tlKP2iK7w3GniGfY/u/pdEuRlGNg=;
	h=To:Subject:From:Message-Id:Date; b=TUPtXmVb+NDYfEVtep60t0Nwch+mPbBMQcPjmQGmeKF/PR/tOCu7H8BODXWuZncqy4Ytgc3AdYhvI6nX2TjnbvdeB4VQEgiwlL7BTCyMsS5bcss+iKOjVMXpkYRYVBH4FovASs2JlkoWDYDsi6S1iTdOFd6czb6nuSAPd+FyXqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DniG3TH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DniG3TH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D17C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732140953;
	bh=YlGe7Va+k+sLaD7tlKP2iK7w3GniGfY/u/pdEuRlGNg=;
	h=To:Subject:From:Date:From;
	b=DniG3TH9h12q5EQAw/QUvte3SwGQ3LUWjY4Caj+MSr00hm7qO7e/Vl9DI93JhU2q8
	 wHKPwXT+67pmInxUgm0B4cnacHV1rcqwdRsKb34IsOD5VfUeQ4SHFAIfjFGVQfNBR7
	 PjF0QnBPXUSmcIhHMFjbuPTHsbId3j2dDxnOdHR3MGHVPL9yjpPyrZrG/3xBRnV2zu
	 dg6amYu1yCZl7NR17eFQ4JQ/I+TjSbp6KGk7nNw9lyK4QcrtS/AWxzR3X5o5QT3H7l
	 s5A/vAhSzBDh9jkKluuMyqHLZ7qLKYSPqSBsbNPx6kHZQw0pfWlM56BweAKKKv+Wn6
	 GQ9acUUHgjLGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A5DD743E9
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173214095358.18338.17112019642060224138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41faa0dea7ada6fac2c1f366acd77469d22066634941259264daa05810186b84
Date: Wed, 20 Nov 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732140953
