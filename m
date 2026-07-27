Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2112622A4E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785143434; cv=none; b=nxJd+kufpJJBndU/4/pIBVFG1sjOYgsWtlzAEDk/5P0Eg86cLhXhU9fy33wv3ErJGqzYLD7PvU+UPd6rZs9bhpoFSikzil79woOzntlP1uIpFvgEcQmsSjR29zVJTJ2a97gm2Ip/Ay1Py6FFS0Tu9uWKa/mUqkd+8q+l+mE74zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785143434; c=relaxed/simple;
	bh=D4o0ea5VxxLtzQ3sKtU8PP9GAxBQjgGoUY8+J8lKElg=;
	h=To:Subject:From:Message-Id:Date; b=ot3S3Iv9KQT78BI6kwfEtr+eXXaWPdzL2feU3UQ9gwbo8fMZdK75RH/AMWzpLvTyKlNO37oLBXZKRBvxmjVwPB5PxF7eksZ+casUAX63+lH2C9hqkwPU/4C6kUmtS+GKdj5mXffc79dV3y4cJkEPHNyH+Z7H4J56jXeMeaHsYug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7ExGVak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7ExGVak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE046C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785143433;
	bh=D4o0ea5VxxLtzQ3sKtU8PP9GAxBQjgGoUY8+J8lKElg=;
	h=To:Subject:From:Date:From;
	b=t7ExGVakvhU97s0BSpZYwQT7w7lFng3C/1/5o0KxKM/DI3LSbAxmqIUP4KyYveKJQ
	 yMeDshmXIsOfYZF33bt2efYavpQ4qAWWJ3JxvpoqcP9VXry9eNLtVL8pgj8SIfC371
	 oZ3kZ3yj9fEZKEvCZc1KZaxLFD9j/wy8egA9/kXcsWq50/UmQ5gCNKZSb2uS2CYZgV
	 U1Rh+T6RbKJOCeGUKjf/LtEIT/KbtSbCv0sLV0nie3miCfn4dgxwIBqGJDV6gLrGg0
	 JyFmwJAF/8CLwbBMvxCnTl5a06gsskwRsnLTWbegGDp16xME3ZzGSpoUyWYOtNZdwI
	 7PfBT92QYfYEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF26C53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178514343369.15937.12412686878870793217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292a13d5b0221877580fbdf6e9b8ec4c66e3a1b5fdb8b2388e8208155d519793
Date: Mon, 27 Jul 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785143433
