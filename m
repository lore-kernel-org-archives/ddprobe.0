Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E72A47
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751346594; cv=none; b=em5j7LpCxqxZSqsdKWSyNEWVL/x3qpXYDod7r7CL9VfnwqDbobkt48PZSUkuGdXUIwHdUkeDE94G9BTFsiZDNBtCeD4SsEgtTRqTWxHHXJr6UttpdcTB1BdF/bMXxL8QWprh2wMk7oRmDMu+k9qd5xH8kEn0wPzS/0YoVpQmqJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751346594; c=relaxed/simple;
	bh=emxSTxPzew7gpueNAL/UIQC8as22h6PUsZfq3cIsIxU=;
	h=To:Subject:From:Message-Id:Date; b=ez/xBag3Z2ACtDvnaQaXxGTifr53l5qs3mS/WIbOv0h3D0C/A5fn1+ZbyjPXrp3j1DK1vLtz3HPmFNxTW5YXs+/q+eCU8dUdfRLdS0Wkyg7rB3GsO2/Di6kfdLLkpLW/Z5uTdBKstRecPy+EtVZQnP/fzidFNKoetMW5SaoboQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUIEm2YD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUIEm2YD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FC7C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751346593;
	bh=emxSTxPzew7gpueNAL/UIQC8as22h6PUsZfq3cIsIxU=;
	h=To:Subject:From:Date:From;
	b=gUIEm2YDYrL6FMYwCqdmxZm65wcYONpTkB+3UAZ9dBoVwuiXtvqfNZt6iM3A3iX4Y
	 GuaS2WFW7XW9NBBlIGiRThbOFCqW9LUffG4rhZwOiNyaOmaS+X6+jhfO3kvYZ8nPSS
	 r6+2hOLOkCrdZTGZb0LtzcfSb4iiqts3U6LnxdTYcuLs+1FUS5A3M36IUgAlk2IjM/
	 sboU4joqfDPfnA2X1txfch7RtRx2IiOL1hZvq/ORsQWBBujFeI0QHFRZesHq14PcSi
	 XCPNT7tmr8PIiSTurVfOjs+pUG8EYWWJ6ii1OXea16m3sDVNYirqIKspV0nGF9uEv2
	 sBN9Ae4HSah3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAFAC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175134659358.16587.2446872674795984602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b88655333c366991afcdb4adb578285ff72d3877a887cf1985ca351774b56c
Date: Tue, 01 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751346593
