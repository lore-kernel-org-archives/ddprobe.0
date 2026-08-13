Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369ED383320
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786610434; cv=none; b=gswx3F0VLWiI27GyknpqXFrGN15EygD7gddC5P3k4mBLUw19bKcJT656kT+rrTy8Zkz2fYXaVxO5xl2KISQkX11RGQV8VGrFJpme/Ez7dMMMkFhgSEpNbfXxZB0/72bN6wuauJqySv5niDDmNZwEOUiW5LbmYXn6IdPaKcdp+0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786610434; c=relaxed/simple;
	bh=1LbclnkPmsH0WeNNXJWySqoOaaDDaCwy5FIHdbZGBq0=;
	h=To:Subject:From:Message-Id:Date; b=t+B5XdbwC/n4DRjZAJmUYfz6F8si3dkI0F6dN4Nt6L2RJcl/iyKaYF44nQZbPwfULdFIoryu4MeVWdYeqQM6l8G/1v6TSQjjhYvTXbBEWrfpMKo1VrtLgpDeLMV4SuQcTtJGV/HTKxC2jqjZgCbuoTbyBozSs4KGWo+WfjWol/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIARRpbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIARRpbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CBDC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786610433;
	bh=1LbclnkPmsH0WeNNXJWySqoOaaDDaCwy5FIHdbZGBq0=;
	h=To:Subject:From:Date:From;
	b=WIARRpboH9+87Rm7PC7UjTx08tKOW0oxmI6IuN8PoFTzF9oCX8fHGp+gFARd+tslh
	 3IJPbdxyYz8+PJRdUJlgTRZbOaYjNpjXLycIxaaAl3viyOcETNrNvNOXY5/AHqXQeA
	 DUaYay+vpUKhjZVPsQPWDK9/FCXcGjGUAoSi1+w8yZumUk78UG7M4/mQqk/EGgMGhz
	 nbHrgfmd6zCKA/giO8kmGJxRUNNGTa03G3KimO6hGcRXmMeRnB9C5RkK7pgc7jqyn7
	 /0mrMVNa0DVv0D0nO0qnBSbZzEbLMdK46eUvkkQE/KWD6PIpRnuzl0Ts+smlKzn3Wg
	 tseLJITrUwD7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB62C5AC67
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178661043368.21106.9320160532254919286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a75aaece76e7865ed1a2bdcbbceddf0b8f863825e821131ca54777c0f9c33a7
Date: Thu, 13 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786610433
