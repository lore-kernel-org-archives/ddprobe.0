Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27840158545
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745761794; cv=none; b=BXofirYp6gRShUj28tJZQdfYiD65XjxFCVjD017jhrfPTfCN0vw2WJr3tdW3Doz9u2yuHXpbNwQwXhzPVj+5ScaIx3TKaK+JYSntu5XpmCCDqvkCnTcFE+8l9ADF3RcRoEeFg1WKgig4jYtOAX7EnslVvO9Ql5gAd299CSui7jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745761794; c=relaxed/simple;
	bh=X6mJ23ECJEHNsDRfxdxjIcS0P9esYBj7cR9MseAeiP8=;
	h=To:Subject:From:Message-Id:Date; b=VSjL5m5MmmeeFLFpTPmeDmEwQ90awSmQfK2a53kwlEL43gt2i1oGxkHDbUdcpz85vWGrhziAgUXZf7WnJZYDLA5uIbxce8q5CUoUXx8XtVXlyvybq9lG6pqE+lSV7Hr0B6PWYR3dyiC+RuIpbaD7C3PC/tE6/HL0noXaPqM5Yw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLQ5bzpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLQ5bzpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7AFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745761793;
	bh=X6mJ23ECJEHNsDRfxdxjIcS0P9esYBj7cR9MseAeiP8=;
	h=To:Subject:From:Date:From;
	b=cLQ5bzpehtL9XMW2pXZ/I28pwV0oW70G6PrDNpzUwhYzmLALx0z4gQa/IImd+bYEl
	 lVZhAiHeKEE7cmDbxd0UM2lsdc/dGwNQpGI8Oemp/oKZrQHWjaTwHhGFYkjp3NOJnv
	 myRBkYX/QEbH8tkujs89J1tL/jFyR7WJcGHuoISjIf9ZV1qYu0koT5B4GG7uRxMSQ/
	 gEB1lE5uggs9mPk4YweTP3GJx/XmghzevDjeeOcKRPSvzduO7IKJKRJUhpc/EZMqWa
	 2gN9IHYTSbBcXjOEyA08K2h4qlCTTmWZ43b9iZSWYxEd4QHZY6HYtekKNCpoPOfOYp
	 8+XruIwVWTwCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E343C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174576179357.25280.6489216163496310039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e71f8ad3d11f50ec5c2e79982ad158d5807ca92f5b146c4f8e9818ed0c72c3
Date: Sun, 27 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745761793
