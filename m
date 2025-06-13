Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378F028C02C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749850794; cv=none; b=AUsyBgbW6n037IwM290Srs3RG+//kQnK5IKJ9PreaODfHF2U2mTX+/Dh3F/yq91KAEFc2MHh22QVseuJhLRWPWT6xGYGpYFBHiy2OZ7lPynEzV+xiQXaKqZnTKw6Xym1OjuC0zpNlnSPpBqUGLM8MqLQDVA0BIHhmkskX5gme98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749850794; c=relaxed/simple;
	bh=zyEC/YpnyUsUrVUuTbzH0LmiLH3Be1Rp/BOoCS89Xss=;
	h=To:Subject:From:Message-Id:Date; b=NcZZ/bN6GUSyBckz1RYa1NIXGWn+IAaaP5p1k0xhkWuU4Y5K44UsbUQWjS0PA+g7G2fjUTNrq2dsHpXCvF7IHCM6xVbjV6/3q1vzwuj8Do26gpiSSXjLpWchDYvTXly40PNLu4TkAzFkDVdpelqCR5NmqAoSpwMBiSIx2TJ/u88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOeEETdu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOeEETdu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A115FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749850793;
	bh=zyEC/YpnyUsUrVUuTbzH0LmiLH3Be1Rp/BOoCS89Xss=;
	h=To:Subject:From:Date:From;
	b=lOeEETduVxSv4Ng3ynS1QLRdpZp8/kLzU0p0lC8kIyDr/9fO1JuR9tOkGiQquGQcs
	 0A5dXPRy6L3WxmqMXXhgWwpdff63AJQitS1yoXLIXikv/aSBvODfURT+aEw165PkWZ
	 y3An0x/TO+YYfjj6O4S/nMbBuk3lcdxaeJJN4fW5ZWHE1j7ejGiuUJBjy1m296NLu1
	 FZlCQD1A2/8QMs4rkOXSvC2W9StVwo0haL4AzGKaCNNSZwGIlWJE9f8sECWD7VcFpL
	 6rGryW1CFKavVzEPO6XrdeHvjBMTASl0WGBNB0CZskByE1JN5wFhKB1JPKcZW2zpbd
	 vMKHFBmWFkApw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF90C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985079357.27899.1795957642263068199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d60d9dcdd87648d17f1f38e44cd8f69baa45498d5251e071fefc5bf65bb387b
Date: Fri, 13 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749850793
