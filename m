Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C856823644D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747860593; cv=none; b=VlG4RaD6GXkA9g8RTZxEd7osakT9bkdm3nZYOsDVuAVRi6ag4nkdk5DUEvXBR6zCK6AICkh6TLEQXn6XLR+Ib2mvZBSCY0YmGxM2OmUX9rcGQQn/GfrZjwGR9moUX75R74fWydGWCOiqYHaTj8B7EAQQYtMReAqbd+oEyYlh2Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747860593; c=relaxed/simple;
	bh=O4kTQM5nAp0eB5ReFI2n3McP2Rb8QG+dddQYpyjFVwo=;
	h=To:Subject:From:Message-Id:Date; b=DUXDL2yi1FDaI6xCa1hH8YmSiktuMVtM2CYocU24CMoROfyPAndHa1sUorAKY0HV/9AXKv34IAjUdUJ9HOGROl6AUX6u0lYCFPUPJjI0fLIinfr30BO31YF8mF/ZkLVekEerdu+eKCKmph3NlIBW+GVRbjThr5sZJNu2TFY/Hnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqtrinE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqtrinE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C77C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747860593;
	bh=O4kTQM5nAp0eB5ReFI2n3McP2Rb8QG+dddQYpyjFVwo=;
	h=To:Subject:From:Date:From;
	b=YqtrinE/pUpvOF06L5vRW9OwujQk9XW+ou4bqyV84urZUBd0x2ii4An3BmrGx2jX+
	 4QYnS9So941FRPS47C4whPpGjzdjK/8FaUK11iU7qVQpk91gOG3oTtPf6gXgH4YNia
	 9uDN+4qUNSRvP7mDzNBW6kMH7ntcyrzoThhH+lOQcIdA89Jg5rhojbd4pcTm6dtsMr
	 3hK5KGxo9dPapqYzQqJHcf712HTTB6PUd51igIXUlqNMm3vILaZ2fKrS8hBmjbgwCa
	 AqAo+5Dzn/hm4P8zh9yuMo2kDFV+2C0CjuSKDdzS63pF8SILoZp2v6NAqFSL+XLdvM
	 SjZvXnd7HMJyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F4C54E90
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174786059358.22493.8768932561098560499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39bdf993db71a0ae597568d9901048e70cef0baf47074f8f7a606fc5bbcb4ec
Date: Wed, 21 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747860593
