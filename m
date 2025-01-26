Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608CB25A628
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737929754; cv=none; b=PEJQxx15OFsOHQk397mkGMJkEMZU0pu5a2TOohAIX27FYSRcumfyz5AKhxrnrtb+tXeWB1GdKRL87UEtayJp72sYIjttfbh32ovNZfjH3owkyw2wKKX8Z/EQKmUWlGNfFSGkqeQ6ItpnUugzCdgKXJYHfn3yYGXMeae+Mf2zRkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737929754; c=relaxed/simple;
	bh=ucIeSorpezW+rEkn4EJ6otD725d14mLihz4/lcUSdR4=;
	h=To:Subject:From:Message-Id:Date; b=aQkA4FyfGfpRML3i21rChmAbehyd2bLLXiUjyw7c3e0TlHslYMV55bWeTWl22I6SI58ymX1GF5icqYiqYVcYkkYhORyS9MUhiwahCocDiLwUKpx1xUJRMeuKbhEVMlrJaxoisg0CRjCZZBEEzFoDBQi5XkhmTHWzShIs05EgX6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=liwR1y0r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="liwR1y0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF547C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737929753;
	bh=ucIeSorpezW+rEkn4EJ6otD725d14mLihz4/lcUSdR4=;
	h=To:Subject:From:Date:From;
	b=liwR1y0rFxYf8BUdgA9kw4W9TmHSwljnpyl9ykKTU8GJ9jAv9610c0hTAFKT0Iwf7
	 +3LKCNkFd5ilw6hYQWSGgU5kD6IiU61m56QlbXVKH0PoPEPucy+AF09yf2E6wDgKET
	 A3nwFMc6kDpMt4DSrVVcG3SmxLu/gBmNxaG5904S3/JqXeG3eWxpwqBQIVg+IzsegF
	 xzLAyoX8UHDC2GdYo3q+FxjWmm0Dr7OvFaGgotvCYMuqT59Qa9VNhUVcPxkTxVMpL+
	 I47mgS6ZiaHz2WqGHWAwKCML3xCyXhFaDrRhRc5HO+RThF00mMJdDX/tAXUjzw1R/k
	 BYKibnzPfZU/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE74BC0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173792975368.25579.10933489968751270797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285543e947062549b7a51afe1a2852f897c056cd6109e7efc9fddb50dbe6a806
Date: Sun, 26 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737929753
