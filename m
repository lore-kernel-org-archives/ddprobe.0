Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082B32253F8
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734618354; cv=none; b=tek6j6/HRvHwhS9IzrWyUN+2n559y48/qlJy8w295xYfEX+olJirogX35KtVG2a4j99M2sbjOhnM/yUYjW7BCDz4wodVSeLIlHp+SBBbQF41fcg3xKYOu9oke+DJr34TM1Z/Xu/9DUYHz2H6et/Stt+WXxsZCGb6K7Xx0HL02lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734618354; c=relaxed/simple;
	bh=p84O2UIUbPH8auZr6Tbb6oK1oWGpD/ZoLNyagYyXfsI=;
	h=To:Subject:From:Message-Id:Date; b=SYNhNd7xUDImQ2hy8Gwus7KaPtGBMLGl5Kk3NJLGrVRGeL5qNE9PjDQmUx0l2FtGqaT4LImL8miDuE4czdExdmjwqoGLQ1us+27CpwBYJWJ0dY7me0g3dLK4MzRz+3BYk1ELHm8j3iTIGJhKIUutB8cTcjBFsUBgLaAta5L2+vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhEcN6T6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhEcN6T6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A550AC4CED4
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734618353;
	bh=p84O2UIUbPH8auZr6Tbb6oK1oWGpD/ZoLNyagYyXfsI=;
	h=To:Subject:From:Date:From;
	b=hhEcN6T6I28BFiZ056+edvojbylSx3faElivUYnxg0xmf/ao84nfNL7lEwrekNfIY
	 UBoi4ErTf4Un21dS4qfjf16EpMntAaKiBHQXYrZxRngAES96jViEBmYI5OIbLJITh7
	 jwh5BHEZA1B4W/n1LYTUIaatJTVdpCq0p1UeY2g6ASXAAC/0qfMQAzBzqX8L5paeA4
	 0jT2XJQRC+jqcSh/MW2HTGdRv3ubwz7Smh7cLOxvll0gVCS93lGcFh9FvjSzYEPzxp
	 RnL8W5+lVfRn0/iOLaYx9hwndo8Rt68l7r2jeZhB5kXrbI0DnbjX9tUVfnR2jspWjN
	 MPrZMS/tu35nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942BCE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173461835359.25771.9246045861585790720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10527d8c56509cf0343da08f8180fe92786c13722c73cd2f2a07bfad176af30c
Date: Thu, 19 Dec 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734618353
