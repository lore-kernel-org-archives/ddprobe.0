Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C71C1F543F
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742710794; cv=none; b=bFZq7IlsYUX/eSPGY6iJfbZl6FVi2adYCJO6gpojI/hsKMjayxH9axRVbxwKlXCwxfVBFzHpiBSwyCctjrlE8FM+0XX22Au/TrlVE7pwLX9twXZlQ8qj7iEOoBtNR8oe3466hcpvIO35FNQyUX6qg8FPV6qnnWi15g/RuOGroKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742710794; c=relaxed/simple;
	bh=aJr4fPfihwbY2sqAQUAs9P3jWJQtdVWiWy2cFJ1Z074=;
	h=To:Subject:From:Message-Id:Date; b=pfbEeYYS/giwCpFeyV/JJvsPEhV0gfXsbrF17PxWO2kCjkERnOODioWQoOUsdA2uAQocbTs5jIkB8cS2CMinI5fcuemW01NfarQQ4nYXNrvgJC5NaoDsPTgCHBUiHWwE5o2vFCybgYzorxTxgWJmjoCx61xePXCky4t4B++D0hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mof3E+XI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mof3E+XI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C4EC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742710793;
	bh=aJr4fPfihwbY2sqAQUAs9P3jWJQtdVWiWy2cFJ1Z074=;
	h=To:Subject:From:Date:From;
	b=Mof3E+XIazKODrut6Xukx9Fi3Dt7eCv/ikadzS7A9/SsYQCmHcgyjSH7ksqPBmB9K
	 wK7bi/4ED9NxPn+o89rush6oU4qvSl4ryQgEMkpRz3NLRAaZorpixIwBoJECFwk3ar
	 k9ewqw8ulhhajCdJybb0hZ+mb7xNyi5EdI6ZwEl0zb6FMgUPHxknjYEPDxmDV8nemb
	 83dtjB6cXbb5YcTcdjb2Q2WeZcYy89jqZpmcW1orBMi2+5LkgwM3EnPvDBqa1iSTJs
	 7yT8aUU/ip4ws0ZCYie0ulr4dbuJrqmvkEH9Xclrx6rW6wsnvWyfx1UtEiLuqUFz5q
	 rCtqhTuvdmIIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFDDC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174271079361.8717.10985542246126489627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 258a5f697ac277bfdd36309c176eb35d362112120a51d2a48e9b22659261e867
Date: Sun, 23 Mar 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742710793
