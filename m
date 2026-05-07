Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C003EF0BB
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778153854; cv=none; b=Q4ijX1bElYPNBy7JlMRl7jJJ2R4/C4f2ugW3yN/2NZiLv6IEFQPPOHlQsFpcLCU/4tNSHTofzg01yfB6bv+mnunAHRpSsg4M9dRiSEgAVRWjyrLsKTA4rX4OMZ8Y6FirU5D5XMCyELF5xJFnNB5sWHgP4jaXAAISoSH4s+HFv9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778153854; c=relaxed/simple;
	bh=cIk//LPOfizxzCFGSBWMqH55sIJnlBpc/llHvV27LYo=;
	h=To:Subject:From:Message-Id:Date; b=eng81HnAPHB2pwlh3U3OqSwp1uD/pWA3kT+Co1g0Cleutuo/Bl2H2QJDQO8zHOawmFlN8B5ze8jQlAjWGYcs/xmsXGvznwKcqjYgNhckMdsICMI3Em0dL4Fr2ZAIAhqFrUT/D1ahwfWqQrOtYpQRJK/VfQqXPDqzD/ouUk/APVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hllJQL03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hllJQL03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4DCC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778153853;
	bh=cIk//LPOfizxzCFGSBWMqH55sIJnlBpc/llHvV27LYo=;
	h=To:Subject:From:Date:From;
	b=hllJQL03hqamRLEtzHsBOEZ6p3avjssnmD1nqPXFb3Zz2mXCHkGjDtxxAARTa9TM+
	 /1vg0+T/xmlIHyH+SAwRiQ72quyp4qhFQjlxbCRdgr1u57msrCCCsngLORymqFRJGp
	 Ps3xUPgmNXZSRTxE6RTcJDHUMjYRhtWE6Be3gWCXGdnjAPImFkw+ZrTHFOVsx+jj36
	 jL9DC24W1zAfRsmHZ8u4pjE9wokxdCSHMqCPf5cjfqC45UQr0ynAotMuVOZOmEeS2K
	 MFzN9e3UO3WgvLN6BdgNPUTLCRjIrufnC6Ug6klnJW4qVMDDgJusqbJ9SraK4tJDuk
	 5X5Amuxs7/4KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC110CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815385369.26686.1561415443227047127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a90c9d239cf34a918b55626456198879211de5502301d14b7ccbd469cbfcd305
Date: Thu, 07 May 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778153853
