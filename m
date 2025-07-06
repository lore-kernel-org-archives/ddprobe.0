Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177A92E36F4
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751817594; cv=none; b=fh3JlaxvIVpl8H7hRR4SVw65owtifvYhEvpAQ9gJHUJxAysQcghDj8SvKAaBDVKlf6CuxZHKPayEdxuaYz9qMDF2+uC4efmDFqj5LbXNyQ4rxM8UBJJ/jWfumG4pVp9ZEXWTe6vP5Glcur45fiKKNmOwq0UYlt1hyffj/WV+4ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751817594; c=relaxed/simple;
	bh=Y60Y/RiYmcYTfqHPyiOedd/7R9ijd518cG5/YvpiJuc=;
	h=To:Subject:From:Message-Id:Date; b=ilHchC1EML8lvYS/hzRyiH8iAKUIP12IrzgYH6TBhhw31BWxkMhtRdf4UiH1Qn9vb/NJvMeO92v81xqrdKLfNw4wvQSQRhkA6KkbtxvRd7epk845yhdwBbLiMoQ4PBM3au2jF2l5yi1klfqCarBaYKf6M7XBvUlIShlJ8KPmSyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DINUR/jQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DINUR/jQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B260C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751817593;
	bh=Y60Y/RiYmcYTfqHPyiOedd/7R9ijd518cG5/YvpiJuc=;
	h=To:Subject:From:Date:From;
	b=DINUR/jQF8uqRh6W0BOMB3mqFc1O2i40q0NI7y6aYn+inPJdLWVw/hL6mvzb6Rah8
	 Og98XBfqpq4XI+qXwJWxQgZ+uiJIMb+SHxPQCbTaJASEEUi9/Lmh+33y2UmckXMggM
	 N6a5/85BvbzyrWN9Q04DU07vECEJJPzqiLYz6wYWiEsLXqfKZ9poT84Z6kKWbct9Mw
	 kyy2DgG5/ImrhVGU3BUp7k5wefuyB4W6EuUqEoTKRQYCeDw7YKDBLfjVfKpN2SLLFw
	 iNHtR3UVdSleoRRkvmBCk5iVXVUu93Na4lrakixZamYnifBccR2Jt8fjqAKxBsIiAJ
	 Yc2BRF400ZlNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DA76C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181759357.4504.11964221667664991025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f2e9bffea573b904878c130d27fa7443ee8e210539e8ae6cd42e0ce0de850e
Date: Sun, 06 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751817593
