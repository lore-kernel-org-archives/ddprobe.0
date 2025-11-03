Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E21C26ED52
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762187994; cv=none; b=OKwHUo2Oj8F6WB5Td3juaUN100wViUEmKjgdCoYdrIhAsex+VCk0ZpmpvtMUYYGKCNg3H4NkdDYYf9tir/MPJmbXCmbOVni8UP6u9HuE4uZ/tkHyAOvN5ynswWjIWGkdjs8frWr1ugfSSEcY7B5NoWsNpS4V6rqVCuhpcuPC9ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762187994; c=relaxed/simple;
	bh=5qVyffBxj38kc3nu3ZfqdiX0hXL89wWt5WLbqT39qiQ=;
	h=To:Subject:From:Message-Id:Date; b=gJDvJMKXHHIN0SmoywwbwY3e5QPrTwPz/SBXZigi5KFt5YK8bTnxWowxyZ+QKWaXdrzIY9cdeyI9c0WDXtLGZngMgvtqfBHJ/evpOHCTdFw+bCUW5KRl+tWP9G3ezn6iEHATyPQWReHgNHw3xhcbjvj0AgP20yWeDd9hvRiyf+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4VcTB2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4VcTB2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA86C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762187993;
	bh=5qVyffBxj38kc3nu3ZfqdiX0hXL89wWt5WLbqT39qiQ=;
	h=To:Subject:From:Date:From;
	b=h4VcTB2Ks8X7uBof4vKuDbwc1W1be2r+gXhU9ZycGG4efWKkYFMCgB8gpHEUXy6RB
	 2kZxmE8lRDba5ilFSQubfy77EUWn19uxUBZu21vppiMgKSB/Wovg4T/uAWXIMC35JM
	 vn7K+optzxJWYNewtdIBHlj4naxiANkX20ddZJ4UyIg1YZ/7+lKKRpoLLUR/VCS1Kp
	 w3gA3q3JnMsVjMFNXVyjycMlIeWypcoMqqhQ5vEXsplQULaj/iyyc3c/vucmmWD5A/
	 IB4+BqE9luqOUwvr3kTL/VmalmaJThIX5yx0faXFYM3QAfEHCj6OVje/oakpXTei6S
	 hmaglAnNptX/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F643CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218799357.29107.14086015892002709783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7108861ed28ff35e16d1833947f2691d0957865e4bbc102176296c3d1ab79e78
Date: Mon, 03 Nov 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762187993
