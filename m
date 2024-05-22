Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604E8824B1
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 23:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716421403; cv=none; b=lieOtGqiRr8dflAXzW5pWB/JCSg0Y2WXMm9bIsJ5mQ0bGSf/T0f1dEfFF3HNAS76hfqBaBfvFhkHmhxtSkDuI7B6wyj1I+L4pmqvBSkA4ekvpkECvJ1QNtaZ2ewZ3DJjwkeQJ/t7WDZtd6wy3XQVgFiA4cdqeGRQWMW//0hYkqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716421403; c=relaxed/simple;
	bh=IOzkgYUHuJoiXIGD35bMkeRfNZJ6nVa8z8Vh0ERS6mY=;
	h=To:Subject:From:Message-Id:Date; b=PHelOHBhp6zvPuves1m4n4pgyUZ0DfloSOLFoKVduHL92zz9oghCPsOsLY5L/knaRMocLQPijn5wnKArAKTR82ASGkK4ffq/I6E5+KyROdaEYqTz+jirxlqmrTtSHdfVeociAhbucUigNKA2IR3Bjv1jmhYbCjC6fy8qne4qA7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXnqlq5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXnqlq5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2B3C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 23:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716421402;
	bh=IOzkgYUHuJoiXIGD35bMkeRfNZJ6nVa8z8Vh0ERS6mY=;
	h=To:Subject:From:Date:From;
	b=KXnqlq5tk8KIj4wwvHErqPZ8CDMkHOul/Qs2utzZkd/1lMmmCkIkKu8nmcQo3NYM3
	 9sF2yF0MmsvZ4UY/dqdoXTyAgaek3+t4xqCcLx3Kt87Ichs9Pyl7A+vpobyIHwpe7+
	 qRJEcZNAxIAZpHcV7VkuTXuc8pPMeg/ztX6O4OebbHJe7ZA5254DcFIBjL3HbuVrbO
	 WD+75oinvJanLWvOkPIZFAQWJdV51A87ZeSzbcLXubTvuypSoSz0hFI3drT8aDFIBq
	 aNb1gHXhWB6BOFlUWBzw0Iw+zV55tUa/KS+mKNRu0ILbQU3V4amZ132MN8A2psl+wK
	 uV/GHo+hr3jrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C311CC25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 23:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171642140278.31249.17066245781541779541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d1338c2aa63ef950a5a8497d3bb90b5771c1e069f730c682682c1a26da04637
Date: Wed, 22 May 2024 23:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716421402
