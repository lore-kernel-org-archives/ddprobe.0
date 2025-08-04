Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F732E3700
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754285394; cv=none; b=jxzF9ctp9iPemiZT2VwQIRG1dFvDscPCFv0Ib0Yf5pjR7GPe1I5VlNdKHHdEIQnarL1l4z7f0/wFget+PMB6OID63KwwDAnTE5vjvLJ3q5FadcqpOVATCnwZGWZil09VOhM5pF+P8cOypI02Fn6+lJg3z1bxhHZTSKjYuF8PBEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754285394; c=relaxed/simple;
	bh=FCxLsycJ+pgHl3nIPyJaZnI/w+lupt4uNPZXpk/Lvfc=;
	h=To:Subject:From:Message-Id:Date; b=WgjrmfB1kKoWujJEg7oEZ8v6UasdnA7PX+OzMQrc+p/xMMCCrJ5EvHs7DloFfIs4JwIITKpe2Tc5HYm6NPocS0MSwmIPR1624eaLYXFAKblp1/rREJH+OHv1ssBPrfykkzG88RWQfIlFRtcJDG9o7xiX/p1nAhA9Yz0CXpbI5XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyPrrbvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyPrrbvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AC1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754285393;
	bh=FCxLsycJ+pgHl3nIPyJaZnI/w+lupt4uNPZXpk/Lvfc=;
	h=To:Subject:From:Date:From;
	b=KyPrrbvjncVTLoroqqwXBjXNu3bcfNKSxB+h3tUp0AavKYWnZIMMTE/REFZFNqNUs
	 QTVKKgNHAREE0wHpSRgm27ca7IZMS/sV4uEbJ28fJQxEY9DB4xENh6oZBMthK8seou
	 Z/KThsZbytL3MdJ7niQ6kNyJ771ip9hqWJau/vNF1b7D9twn8+EqInLWd1/ufhX8Zx
	 R0jw/9OuZ6NmdGrpYi6SA7dr1f5K+pKX+TeB8c+vuNsxRUkINtzui/lU1gFbFRyBhj
	 wGSfoQDQVpNboZHXyzNAC1SQXmnzrQxnRf/P1OtPpWLTQWEauQtq73vwewvNuufBKv
	 hnUFiQRDaXvGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966EEC87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175428539358.1718.15483215135365366192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00f2166cca801292dd93fd715c6cacf8cf5d7930aa998cdc74bf3af9670b5883
Date: Mon, 04 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754285393
