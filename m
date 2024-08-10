Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290AE3FBA7
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723326354; cv=none; b=BFCyHvYx9XkZLIn8V2F7tlFP+F4Ae/n+2W/BIriqpgRvnvURUF35OTzVRlRz6IT7Vyh5IGONjgDDXfqwB+3cBaDzLx6goIZes4m7mf+c7LkyxS2rWYCWkbKDxf51LZrqFh/7xAUpOdAmR729Xt+HSYNtLFbVqMU7wQ9x8RyPeoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723326354; c=relaxed/simple;
	bh=ehpy3juseSQGFEamO9KnQrhdiIXrPskr81HUoqVON34=;
	h=To:Subject:From:Message-Id:Date; b=OQh6XDed6QRpowOBKU8hxHbBS2oWRDxnhCPKITOjdeokDUkuQGdhu38neoj+wechmXcdzYwJazwdogcpAE52sRzvRJXuxhDuzlg2mZZBoBqSNnQg88T6tgt7X5YDgxpItVDWrA6uSOegx8H33zHr5RwGFhKHcmGk0++Y2Oqwxag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxseZGjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxseZGjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A11C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723326353;
	bh=ehpy3juseSQGFEamO9KnQrhdiIXrPskr81HUoqVON34=;
	h=To:Subject:From:Date:From;
	b=XxseZGjAuthEPcdA/hhb2a5v/2uh+9mHbM5ZfzGQSkqdtvTfzoq0DLUu8+Bf8x3XZ
	 olwCDO8DgtjrsznT+bkNA2P7tTRcjie/1+p1liZ9/iQ9lbRm5XZyssvkp6YoK3Dm9e
	 dy5PSWcO7MftYOw0MTuEH6bn5WSIF1Wm7t2GP6LARmTTjh6Cd+qCTAPbKxyvX7X9l0
	 nmd0CoxHHgsQ7oB1vzfPdY44Pwnm1A2f0VqgmQFlGmDolI/hzVHmArguHYSqZ8bbGM
	 wA+jBWlmX6bKU33hflPAmhWn/bfpD+k1TObqrTqeQQvBUFX9LiXojSOvQU74LK9s1S
	 s0LeNQij4oShQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F352C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172332635357.10265.5013392699029777015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7221e9398162dc4a68a69f81b0efffa6d3c2f372eeb49afd137fc4ce806a451
Date: Sat, 10 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723326353
