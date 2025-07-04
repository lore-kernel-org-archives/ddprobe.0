Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB2D2C3256
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751628595; cv=none; b=cvPeyoPF3kRL/CpdPV+EKizfOAtdnffz1dvnny2h66F3pGm42oX8BEVG6RooRw5nih/Cw7Xnm7MacQxttwYSl8zCv69TMQ9R2NowDnnX/8RAN0Blxqqpl6Wb2iHcBbQN5IG6sJ4K6Ao0qilYaWFWxB2GG1rYwi+mkc0fAd+nK9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751628595; c=relaxed/simple;
	bh=AAPGqIP+QZuZEO58mLiZFAyqbHyyDVAVbF3RPOpp/Y4=;
	h=To:Subject:From:Message-Id:Date; b=BxCOmn6G7I04zLdJbnY0ilV72GPt6W3VJrYtkVVhfZIAg99LsNjivkB1X8702MpIdJJ19Of5dKUty43KxFdhDAbkN8R/Z0yZZcdQVMleVBLjMb5fRcXkNwb+yQI7ePrHIdLYa2oixnImdR93X7qXmvwDDMA11fKN4rVMLweW4lE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bhrh/s6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bhrh/s6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5D1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751628593;
	bh=AAPGqIP+QZuZEO58mLiZFAyqbHyyDVAVbF3RPOpp/Y4=;
	h=To:Subject:From:Date:From;
	b=Bhrh/s6Eu6FiXCt5KAVB8Jv1VgLfNQbNzjKBKw4aEhyanhpjitx2Q2LxYmun8TWCv
	 GCGOgiaNZiaGYt8JXokko17jjwWoIG/Lmql82ob7Vpt1BA37VOuA0l6J9vnIoHlpRS
	 uQE8t1rPE+LwmO1FsDqu48RAiD4rknroAJ9A5tJ6V+4+y34l0UYgDub6HHMjDKmZyD
	 gRTQFYPdFC6XL1svWub0eIuUl7nokiTAtSlgFHD3WaL3wZDoRNTLNii6v67B1AGvfw
	 2TvdwOuxaxQ7Giubn96DIuj06XrIcmCtzYuyfKSh/bnDRFkUG/cmjw5T1pkEOboVor
	 QKpqSiyLHAL0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E905C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162859357.21546.1447218007376518385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db1a104f3b84d9ea0fe45f1d3dc1aef7cfa76bef4e2d801e2b9d5bc07730fe38
Date: Fri, 04 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751628593
