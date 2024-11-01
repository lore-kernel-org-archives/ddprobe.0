Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFEE182BD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730421354; cv=none; b=LR414mKKPwmFoQ7b6SaUOfQrTs6KKygtSAEYUvrbn1xuOfiUsWrxo+ezYqESvyut17P4GmArYPPvK8pRN4iHtlRaMdibjbQ1Nwi1SjoZ9M6nCd/rPlTwGhafooK7yAVmH6jXIFup66EUW5AWboQei2GPIjNaNtWRykBn8Wq3Ob8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730421354; c=relaxed/simple;
	bh=vbQQbYr7xuc1LsmX4XowYp0zVKJwzONPpf46H3hCja0=;
	h=To:Subject:From:Message-Id:Date; b=Wb2Za1StRUsHXprugqePMuTZjFxr0fC8v+9JEnXdieXFHrf7Zp7/w6zaUUxVmlrYpDskiVZyx/3wKvutJE4/uJHie1UOqvVbhtYSS+h4cYirWJdhF9WdL7q8ohGM/u+P9rrfZW2sSX0XCxzB8/gvUb0RjRxEdyc//j7tO4ztoL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CM6F3xTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CM6F3xTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CF7C4CEC3
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730421353;
	bh=vbQQbYr7xuc1LsmX4XowYp0zVKJwzONPpf46H3hCja0=;
	h=To:Subject:From:Date:From;
	b=CM6F3xTwrumPXw1blzSMKEtj6H5P3qzWDVjfWek95xQHJCvuqZdM/33whKpe6qXuM
	 ACkZ9Ri/7pxPBL/7sRJ18e82nrocCSaORYQtENs8mQgOaVT/p/Bv5TkfOtcZoOul1c
	 b99rnzlI/9uI96eUMNXYHa2KTOPcQM06y4YKtkefGCACSplFLUxE6LA/FKiNIK0C6q
	 rAgrRJPpjYPsYLF0Jun/7Qju1gjVFsE0tM1y6tRMzcFvbLN7WJGImgBUvN760D0VxL
	 H3h31MA19hsLbeEvUd5grbMwJ7eY2+aoYD5WPBh2J5l4qXlLr6Wc7dXoEL1E+iPW7P
	 vpLTbHOvhloDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95180E67492
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173042135360.20464.16988387449223182940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c34032b681affde5c009519642f14070adbdc959e916cfffe30c28eba05fd1c
Date: Fri, 01 Nov 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730421353
