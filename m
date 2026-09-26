Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E8D231842
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790446234; cv=none; b=JTjdJY+TGn0OSdgGTzNmubi2XUfr4BkD1irAUWArvD5f2ObXhYFT4jzCIqEL4cQLf8oINuJbZbUF2tlrdn9aUeWkXwLeZ2W5/MJ1WLw2mAfcwApwd2yew6R7CTOmF8rqHjZ2mwMTLzwnGk/VxIokJ4yP9wb7oNOGlwJWEbZmHvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790446234; c=relaxed/simple;
	bh=Kz9TDq8KY6hawiMa0fxPktA1eq4sS4ZED1zko/j/T8Y=;
	h=To:Subject:From:Message-Id:Date; b=snAHI29B2qpiBerWLyj/pHF0/2U8jA9CiQYojwDjUPIT1dUTZ72eO0m2JrFxHM8hOEnenIQCSzQjRxupYE3N548HSfEWq3ORlYf+3W1oNPpq5bGEkodKHwcgU/ud/Qfi5rpiS1CvNtZsGNODYRrQ+cbHjf+aPRv1xlKtCefHa6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8NNj3qp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8NNj3qp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DD7C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790446233;
	bh=Kz9TDq8KY6hawiMa0fxPktA1eq4sS4ZED1zko/j/T8Y=;
	h=To:Subject:From:Date:From;
	b=E8NNj3qpNT+h9xY53linlz2yuwTVPv776Bzdesct5H4U55/D8XMkpWTmhj+2yjRXJ
	 z5+7F1Bf1N8unBuM5gjHn9oqUPnaCE+Aszip35xVVSMsl34qncuGByde7Ll3ySSZub
	 Os62YnDZba5gXHKwRcVur3cfG+GFvgZMgv/v2b8J27l2UaqAR2Z32EfTc4pU8Jg75K
	 zVDFRkqd+h2LPB5xolkR8iu2XFIzQulE5+0suheXz3dCZd0z7T8S9NOIKmGFxUP0VM
	 NRMydlu4XUUCizZc+em0plgzoUAoQVoGUY0OiJ287AkIfiT/1diufuGbcA5KXVUBwZ
	 gwsTIEFtatFKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14DDC9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044623369.30540.6335793600990481155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15fd450ddb20088119e4f0c1d71b99d9eef113e92096086c96f65b3f7df5299d
Date: Sat, 26 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790446233
