Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2229E56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762945194; cv=none; b=OnHWHy1Xr8GMilbKG2nskvM1oj1UCxAKa8PmQR3Zv6OEEP6e/1O9V4+VIrYVHpSSvMAIxmVbN1h+namSRS3ZkaWWgvbgqInCOGQVgwm9AjT/vcQoOt8gY8VoSym5RSGOP9JIpKYPFetmzAcCgN/DPQRA8k/bT4W10bL/mhg0/6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762945194; c=relaxed/simple;
	bh=ZuOgu/WVeXeslaQU2JqvCMs6P/RmciBES5RuCBk5A+o=;
	h=To:Subject:From:Message-Id:Date; b=Zezpg/tQGXCWCS/VammrF2WXVHESwMGYbQwROPIY7EB0xBU+J5i0RdZTSLXKesqmE8ifmn+0Sk33LZQpvXXmw9ZDHPSW1n04DRzyP368Vdroj2dyjVq61Iu7MPr+yJ32nKdJhfKGtR6QaXoNFcqE4hYXcJf1G//cyLleOBTH7w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jc5P31K9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jc5P31K9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE5DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762945193;
	bh=ZuOgu/WVeXeslaQU2JqvCMs6P/RmciBES5RuCBk5A+o=;
	h=To:Subject:From:Date:From;
	b=jc5P31K9bo4nm3Zk9QKQKJd+ygRZEd7yFzvUNJiTLoX5wDyjE0vSmWzU1MlkcybF6
	 cabxDHzJZiZlLQntY1fJASQUfn1LEZJBQVHrxKmqgXtB6IpYGs7j82hRiasQ3MjwD7
	 Odb3jTqwjAqmOdJUtZdiU432A8gTwbUNp4ee2NR6EWDP9MfcBw4aIJuculqlFKGIuG
	 Ukte4OLOy7JHdAkk04IAZV6zE+v2J88x5LeL6PlBKkng6pcs5UaEcBv4kniHhlFuqw
	 Rvl8h2/a+AqqGtG95p9GZgu8Z04U8/0xquN79rjSgSMhUsaqGM2xLH0hh6q0fsGSKH
	 gfmsQFRolghjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AA3CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294519359.5027.11637550677584591286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b397da852b618e5746be8757127f15ffdaccaf4a037c572359f4b4eb2533c0d
Date: Wed, 12 Nov 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762945193
