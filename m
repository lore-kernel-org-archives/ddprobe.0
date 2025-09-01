Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2831B1C5D6A
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756762794; cv=none; b=Je18IMKJKq+65IUgV7UkMnHw6YhXMonoyIDWLvrRnghYpspiqIyohQySHHPOhbOyFHihzFjHsrJ8SP048n4JJh5igZ2J1hD2d8geCWImupJOxzWTy14DR8nthbGDlEIRuerqrd1V+/CM0KZCUHFp+j+zKxpfKpUqzwrlkHzl5hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756762794; c=relaxed/simple;
	bh=y6wGd5vhrfY9ncsBP53ngtMDtiLY6xZfrvQnOlXUS/s=;
	h=To:Subject:From:Message-Id:Date; b=mjKbU4/LRkpOhOB1KDH682l6/+qHHj9EyUm1lIW+1Pn44JmRpH/w4aKfSeq7J3yco5vcFg3WpxtCFCOJwMofZTPI4qrVLqZl+KjcLI5GbfY5z57WYTGpQj95vs4hh17DjkWBhw6VgvP77ZERXt5VbExq9Fz814tcHp7zEA640PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTcRh2JU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTcRh2JU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53D0C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756762793;
	bh=y6wGd5vhrfY9ncsBP53ngtMDtiLY6xZfrvQnOlXUS/s=;
	h=To:Subject:From:Date:From;
	b=qTcRh2JUruP4OtZKHM+GJADRezrWmWFx0G3ery8BRHGJnDUIJ4S+ixueotypW1Vbo
	 MtQyc6A1iDSHiW5+wvfPiXdF1WIg+HZmHQ8Gn6l9/r/KzdmU04BAU6r59+TyIQTYPF
	 Q7xdG6Gl5ybAiXXAUAfEDDldm7Lfzn2qsXRj39OUbg+R46cp9ZrI3mGlUPrdD0avyz
	 PR0rYwaItM+qallaIQdbXctudgZOiD/eRXV8PCsTw7vNIuD1ke/8xc+yypN6sykzGK
	 vVu7vnAJ1Ys199vdVF15OknvSc2FeKxUGs2cg9XuSafaFOsLpnJ8grNDYVaXIfeh2a
	 0/RVXyR4uuG1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F38CCA1007
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676279357.31719.13086423639212421835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135f9555541a9c19f5dc342404c02646d0cd91c8d65c29551d2f7cc04083f822
Date: Mon, 01 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756762793
