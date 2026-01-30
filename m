Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBC22D948A
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769764434; cv=none; b=IaPbRrGgg2V3QnHNg7FtkdI3AMiSb84tNoi617O3vY5Yp52OY0wUP6q0DZBtsitvwNy92XrdRpfhjSdrkzhDZsMKBowX3Po/TXp2hMfqo1ohChtgMgjMWKigZ69zqCC0rkIEiSxIZbP02KQaqGROVoIxqZQRg9O5TAuMm+z4j8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769764434; c=relaxed/simple;
	bh=AQR0TyaF+uc+fbAcKcKDBt1GUnbIYtqsrqBtLF462LM=;
	h=To:Subject:From:Message-Id:Date; b=IpKt+iPQ95nuDNIXwKvnEEONiWPg+oA2+MAuLrsWaYnnfZthdMcvVc68e7VnvdCF/7Qr9WKjjlPTfdcvYheO0RMLdtKqh1ripD+Wq7VquHf2kmOJv2yOHfcYz+6fkN8kRubimd2PRHql/wX1NKWETiO0jv11szESSS6YQZyyJ0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxzUucvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxzUucvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA00C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769764433;
	bh=AQR0TyaF+uc+fbAcKcKDBt1GUnbIYtqsrqBtLF462LM=;
	h=To:Subject:From:Date:From;
	b=DxzUucvsRMP7x+B83mUPizC+Roh0AoMEQhiGaNMoXS3Lx92qnNCGgi/V59AWauOP1
	 aA7+kyyc9iirlDm/F+4pn4VJBYTTJcB7bgXhBWhXpd4iPY9SuXqSyclNUP28EHV2vL
	 a91yKFZ46FA8iKq4ika+KVet1qfp512QbDLlSy+nhh4aQbIELwIet04ts9qSCu1biX
	 KexmlZ7pnvmJp0vFal7H7q5rRLKGz040sdbWFWCoCRqUXxWGPafkWM7mQIAYuGMbHR
	 6fT7rZQgg6pBzloa7GAfT3f3jN8NSMcvlTKv3MFYIfFsr0fYe5i+WE4BDp+s9Rf0sq
	 86KmSfaQz3ZjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F20D49C81
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176976443359.4406.719134124911570686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21db785363156c441d4f5d7735c7620b250a71b76df5dae635efdfe3c11d4ccb
Date: Fri, 30 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769764433
