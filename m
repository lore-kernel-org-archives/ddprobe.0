Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3083815D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786485034; cv=none; b=E+ZsYTXN3b0YIS2L8Epxw6pLQYD3mCY7WKWmYawvzypImz6m9TiYBDAYL8ZvgQ7iEBFp8BRXxUq7FcBBJD8tPWHhJMdhJuLeURyfmxJspoxQlslfMIIrQ4ObpwWJOr9Pr/epP5gJ1ixTS8P1XhDvKkuZjLtsT6Jl5BwqnUPA6yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786485034; c=relaxed/simple;
	bh=bJgrzzBtZQu6sX+AXkD+4/WFmPUQ0bjHB/Mp8CAujAI=;
	h=To:Subject:From:Message-Id:Date; b=TwiF1fHP1erbV/E6xuBRTeNu+u9Y5mHXDrKEW3mSpRskch6i9LJrRUgiIgrRX55VqvvD4G/8sEpSArtk2oUWnJUlyrsjt5ANhXolyMsr35s6jlBAgBd5esnsGEKtosaRlcCW3ZDyLXTRZ9Ur95B0Cv0CLUbv6/g2ErxuY3VxyAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZsqYRNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZsqYRNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAF9C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786485033;
	bh=bJgrzzBtZQu6sX+AXkD+4/WFmPUQ0bjHB/Mp8CAujAI=;
	h=To:Subject:From:Date:From;
	b=QZsqYRNLBi7Z2n5bnP2Ms7JA0GDAp6BxZQg3qyITZ5UDHcCHzWiFnda5AY4T+lZr1
	 cWs/t/U22mAE/XAIxnRupgvU35tgLF/05uFy6foc1JN1H99fy9rOpz2/1LQ4mK/hG6
	 H9npKtbY3mE9wQMcnrBh4ZTvI/g596GaOlSosnmbDb81+EKP5h4VubZEN6siUhGIlP
	 9xw74BInAa58guIrvumFMtc4wDnqjqv49ytLWc9BH437RwwsABCkIWCGoloNJpNHcT
	 OKbg2CEKjrXoi8PSwBAEciadmANhRc/c4ui54J3OH5gwJJ1KBwwwf02WKM5up+g0tf
	 sluu0CAJ8tLkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89F5C5CFC1
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648503368.23932.10000675822059487660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e77a2077ff4b94e5e2a0af4367fe22b7390629f71d0573960dadfa724da2f0
Date: Tue, 11 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786485033
