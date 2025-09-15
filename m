Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B2B31283E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757942994; cv=none; b=OIgOyqzAO3SICxmp/vGR0fRNm54rGdsjy8etXHbIBlY0CVOL09U9CkIu941wNTEfLXLU2zoT/3kzbcKqnWMr1uh4ywNRJqmIVIF1Ll094heFm8M/NP9g1q8kDeAv3wg9ghzMBFVVBQoJpqn7jMNIa61CysL1Qn1KJYpecUpDR44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757942994; c=relaxed/simple;
	bh=ZEY7mPADtm/plXK5An6u4IsqeWsxLkD2S6VKkbHstzI=;
	h=To:Subject:From:Message-Id:Date; b=TZ5JW5In8v8YqyjiStO9wCH143r7b6MUDYSlrYEQHNx2IC3roKxkNLHsN1spKUrUgj4zlc/n7tVhCgKee23PM1hJ8EvY2q7LXgDIWeuWL4+KKOgEoqk7AkQnyGASyvVSjs6Q854ZyY4JOvCU20ZuSAoQUOHLwtC+NH2u296uiLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pksDEvKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pksDEvKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10E5C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757942993;
	bh=ZEY7mPADtm/plXK5An6u4IsqeWsxLkD2S6VKkbHstzI=;
	h=To:Subject:From:Date:From;
	b=pksDEvKJpuMAI9TWnOkMU6T/ovEqLCebb+/XUIZCIaLQ8duL9aKtaNJHlDgj6yNR5
	 BgRRprNxN0lSrLJuB3M9s39qa2Ek38YYrIHQpbCYGGVR3+j48947HiczaX9O4VA95B
	 FehAlyjTK2JVS6AKCpsJbsFT/55kDCenEPdDNdN/CGUHU7vEr7baNh7/U0DN+3Cn8f
	 fPXoWi7K5J7EpSn3UlEkv827cnHWinle7fWZo66bOapL+uUYPVQ+UwpOBTcMeFRdwB
	 hF9w1Vc5Wm7aKRcEaCQKUpQoEUmK0FZxfr8iuI6Ohh3hYTwfdWSg/UgQhzjBjc6YOv
	 AbVvEdLCil9sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9097CCAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175794299358.14298.6604644771960077243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335f0bfe81dcf179843abec469c8f7939a5f3ed2e540ee29a2ba26f1961f03f9
Date: Mon, 15 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757942993
