Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AA2314D30
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766751234; cv=none; b=ikTFEbIL/fH6ERX0CYRck1bTv9q2yxbwKDHQMfHvIb6q0i8EJMRzZp49DwJQaROb3byo/LU1fgtpI86jUA5lYi6e2t5JtnJ8MXDS37ArBxkr1pneFPo7PaiMhTNB2vKcC6rSr0913UfeprTDMV3bctlGonaZgLmjvFW7piJEWjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766751234; c=relaxed/simple;
	bh=Agdge9/aYanBM0hxNwLbfjP68p1CGLfKSGle6T5rJI0=;
	h=To:Subject:From:Message-Id:Date; b=pRn2ipzcgAeetKRm4kMmGhKuY7pNO+D6AnBNVqcyqgQROsB3jMEvDXonLy1XgAGGdEsKDy4Ircpm2LM2jBqjxJwGgSSEkzvm4xsAUqktUSRza6xgEjy+C1j/cjZMQV16D6NKHqx1rfScirr7RtTmB+/Zxb8z+7soBCN5jNbuE+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDGvJ9R0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDGvJ9R0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8920C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766751233;
	bh=Agdge9/aYanBM0hxNwLbfjP68p1CGLfKSGle6T5rJI0=;
	h=To:Subject:From:Date:From;
	b=kDGvJ9R0mcI/E2YpcddlqWkrm47qFxIwcqrIpLFlHSQUmNY+QthBLYakN0OmzGMNI
	 avqvpLbpskdx7sWqqb/ptU+dif6nooBEaLNzP6zT0yTUyDCCTI5L5f4bU0WJ1r6iXf
	 /p3ogXJNgqkkZ40F0MD+WKlw5xKmULfvmG2FbU5LFmKptb5ZNt7qL/K3DRRtCY5stV
	 z9EWF8hnCZaJ68g2KamUAQJwzeL59RWscWeaRqJ0//dhMmbXRqe59MUI6Sejf2suO3
	 O0Z35PxlG/oVz4/53NbTXsB0k+WddMG6sM0L9EW3+YPEkipPbnb6IUcG/fpiVDObDf
	 EMkoTogfZE4Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DDDE8FDA8
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675123358.8794.17571748606464733912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 801e99c6afd5d39a47ceb1f93b04c2f5d9976e1e1db3f5132566307718bdfc94
Date: Fri, 26 Dec 2025 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766751233
