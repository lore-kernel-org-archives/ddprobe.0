Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CAA4FD789
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791896434; cv=none; b=C3YN9dOIr4aUZgRFkzdqYovUY+YNjmVT2soAY5vbx89U5/VpE3kCsKLZ7BUqt8PQ33qYFLhsp3TawLY9Ugzvvp5eRmKD9y2dMhuyoXNXtflBVuvKWYkTaqGpTa0XKfVRMqQSePAcRpRgZL6U8tJYUfGH8vjEKiCDRQZuv0flHhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791896434; c=relaxed/simple;
	bh=tXn5aTJGcpLBArDuUuDkrrWt3RME6u36JCougV18oq4=;
	h=To:Subject:From:Message-Id:Date; b=pk82RYUQRifHyK6gr6RcLkNAlWsMoj5i1hqUVNM4h16oR/b2cv4tcrEVXTt/k7PCnYbrcAB3s+RyVh9WsEQoK/sIiYnGZ4v0DzpQ862B2Jn7ljAS6UCyfJ0kQmIs0jQSl6C2KBnNqv+NwqKqGGORD3vSOUhyed3QTlsv8fZWOzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNXB02tG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNXB02tG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E44C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791896433;
	bh=tXn5aTJGcpLBArDuUuDkrrWt3RME6u36JCougV18oq4=;
	h=To:Subject:From:Date:From;
	b=RNXB02tGDHl0rWTPrORsYe5fVnsFxe5ZoxjX9OQgQhK4YJhyIlnJdiSuOvXXjGWmM
	 yceFH8u+Hlc73TjCfAsDMNE7MID9oXxsGwLLhVpv6CUhZ23SeVqeVwOac3GVmvKPp0
	 +etWDSdRb++LIGLkG734pEEsuISgrt5tcJvLXPQ3/AWudTHizUFH4Q3IoJCeJQwJLE
	 Xb/z66d2l7M/XB3PoqBx8OaR58CJRtIwqFjoKoKE6uaF50Rwa3RyPux9e5WAF/qNNU
	 qm0c28bABzdoIK0loUwDkVyLQFTMPlgRczPD+U2RnZguKeroSqY8yDQcMHiXzi37Lr
	 NVIOVI6beheXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF682CC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179189643370.17403.16851825539933662162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b330b513d3aebfd06141cb0a612d60d4eab0c088d9f7005d30f74030b2df7e
Date: Tue, 13 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791896433
