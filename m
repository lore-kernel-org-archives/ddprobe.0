Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF443FA5FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785498634; cv=none; b=ZW6gBR4qqnxaJpvgq5tLHM3YKAIDbHuZYv06Z31UhADwDpdaI1Un+ksQ/Nc8GdD1QLtpDm1cx5dIWdQU7bi5u85UYUQStelPIOtfVpd7zaw2GTycdjKb8RuPZQExzw60KGA4ehNAn35tqtKkoMbh1j275++AgHWTVED5Ip0ClEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785498634; c=relaxed/simple;
	bh=FVIMNgnWBg/szsu72e1fjH0w757wEc/onHWeCM6w4+c=;
	h=To:Subject:From:Message-Id:Date; b=Ai/UBWHzU2PBrUo7fcLO30WDdTMTDBiHGL0aQirtSgZLDslpiOSMtKSue1q6pw6rTof2MaNMdz7htPAzB+SLBWIoJBas5LHLtzOQlCHTcU0NA6tMm0sU9vdjCmQQmCswavCsD53g0t4Az4DoA927/GIj0XfzPaBrUcxJFICiat4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFkNZCFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFkNZCFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD3FC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785498633;
	bh=FVIMNgnWBg/szsu72e1fjH0w757wEc/onHWeCM6w4+c=;
	h=To:Subject:From:Date:From;
	b=dFkNZCFqj8Qv4rU/6ZpH7ggXkuTFqNaix9YDGROwarVj3qOmrNc0RXC/EMBOIHdd4
	 neawXGdIGhlZRHmBXTDtjC6NzJM9G95MKjKzL2WNQHh4C79cc2a/JBxHzQ87Jq146I
	 bQdNUO7Rn84T9DKVJW0O6wNxat9rq+811uAlKT08LSRMFr2RfYt5e0w6Xe2rmKnB8U
	 4/uIqnPIgkiHeol3tJDsExAekil2TXExljytI04lN22+Ebbk24g9aPM3llwA5IgAK/
	 dGDQvCV21JrghMaeFCa4glObAxzPbd3EiKJahfxDkU/c7sg8sp5V3k7eeMxq6uED9s
	 8TM6xhyTLzYIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCEAC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549863369.23535.1403354980248590900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d8d3f613183ac4ad9f4733caf02e5b2d23ed8bbba22afb79766ead5a322e4f1
Date: Fri, 31 Jul 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785498633
