Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E0C28727B
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769135636; cv=none; b=MRI9d9K+tXr/FUE2rmkg9Sd8oO0qb4SNBrKl/fyQeRQmcp5Vs/yPmd24wqI1ClwBQRKdyrS4RJDuXOGgkS46+zGilaAuj5UlLCQYB3okeDQezAEqmlxC7QiTIfSviO/XC4TIvhRki6lA6wurKbADja9NZ7vVHmEcG/r309b0l+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769135636; c=relaxed/simple;
	bh=MP7vcP/7qH7HLqyVSAlUqfnbJnSo2Kk8DY3BIwRBdC0=;
	h=To:Subject:From:Message-Id:Date; b=e/RUjxVubJPu27gXfbRf3Fjoe12wZcVDuXAFojshvUPqVBnmzhLFj57Z/TTyDgnpl736oN8TuuqM+r37aOweSnqxh3Pxfkte7ni6T58M/u9gqXx6jsTx8FLzIZ03Zrt6FjZau6odPQucO9aN+8XMLgnIlFgEIgofhqoJndLgBfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m96Fn8nl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m96Fn8nl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ADDC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769135633;
	bh=MP7vcP/7qH7HLqyVSAlUqfnbJnSo2Kk8DY3BIwRBdC0=;
	h=To:Subject:From:Date:From;
	b=m96Fn8nlkfZ5S0XJnte2KiO5U40LSxUtrvtOwj9HVTQJiPfuQ0w5Jez2w3NxkBy6a
	 0oZJgEBedJKLzWM0d1KigilLxqL7uVTmiehDHsn4Qi/d/iDnshPoyThrCftAX1leUE
	 C51zsGc1p0vXEs5frq4uJZzjNVIbqk/D0ZkWG+K4IRvbApbZD8IE+G+Re5Jtrsjx5o
	 AxQGvLZ1VE4crEs1UQS8Gz3OEBdhXTVfggcgE46hs97H2Ns94JyswVaugiTmC8iLID
	 NW2SD8yVBLXAbIzs1OKyS/PSu6uOWlqTYJLQLME3hkYv/LNQ4IQx7bR1AF2pn4VvtJ
	 JuvxxR1luG7KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96898D6CFB0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913563358.11881.3526998727448603614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf40a940b0e939aace3beaca32ae8da787bd4632e588f9446d4904358cfa27e
Date: Fri, 23 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769135633
