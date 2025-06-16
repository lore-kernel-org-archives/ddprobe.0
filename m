Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C7229A1
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750045193; cv=none; b=unXFE2iDY8kvmp7D4MGwwf2QKYqV7Ls08YrREBq+i7XbpCn7UA6sX0CSYRxyM5twWygXtP4WJQrn2YQs/Yw1VRltRhY5+pdXgHVjj6r/Ov2Uy1tlewf74U6EhoMGiGEGC1QBBlGA7DFwtAJGk8ntucNtSJN4ALtJYLn3OAJTNB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750045193; c=relaxed/simple;
	bh=lhM6kVxvBQiQuiL1H6ak4RUAM+IZC2s89rrsyaPYCQk=;
	h=To:Subject:From:Message-Id:Date; b=TzLIl3XnNNx7zaWcqpUdlkFkfd41yNawOADefZ2jyC9xf/xq4Yuzz6xSBb8D1gwfdX4NhImiBPsLgC/ag/JoWLVtDYt0tdnGxRkvuyWTpLrSHcrdsDqbb0LDS/J4hhusnBGzuDEs1yZI4UVzQhCOtHXxqu0ynvfmlLEnRuoU070=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uK1zXwLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uK1zXwLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E5CC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750045193;
	bh=lhM6kVxvBQiQuiL1H6ak4RUAM+IZC2s89rrsyaPYCQk=;
	h=To:Subject:From:Date:From;
	b=uK1zXwLG2U3oSqmqFRlvi7HdO35gUkI1CGEQ4Qjy1uDDjbXKsxuRF7+TfI7cMdI3L
	 +/ykURtcCDdUc+NY5X3k7StkX+olZSIE5rM131jE4KKo6oX0p73KCRFUSA+fTa5p34
	 oLLo4rUIRfZfe9FxDHb9PDPNvV/tyLRSq9oDxRcaOUxOr78xRrK6/O7cBBBMwaOC41
	 oets47Jg2r6JNwxikDtSziLwPre2kJdbOSGUasH9qjxUTIgHyzcDHKenDVMF+d+GU7
	 4eCv7DCkU3uqdNScx/P8t/EDHcF8IGHUg5sLL5JrhQ17RENLTl5qMmG/xqtu2fD3iJ
	 J9xPWHMuP8L9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D84C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004519358.12813.5030318454912554804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43554ec30963b9fd1b3b1da8a28089e7b3c395f28b14d0bd9728851049a1ec72
Date: Mon, 16 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750045193
