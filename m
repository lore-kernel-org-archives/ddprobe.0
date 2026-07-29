Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4142E40A925
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785315634; cv=none; b=M5ylAsK8UYRXhFxnFbbEeBuLlv3t8JYW/IKoIf7X2mssI18uI7Bp66R60NqihcDOkERzMf6c7oIdCHc6HgvQBza4Ot+PvvMq394T2p7G/GnwjtWmAmUNOJiEOl7rEkqqxaSKVjVQ7zPq7iZUwVhZAe4xlWw6UWYdg1Q5Z6MSSBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785315634; c=relaxed/simple;
	bh=Z9P7Q6pYTdKFCPa2Hv6DXpiRjFivnP86mvklMrZSajs=;
	h=To:Subject:From:Message-Id:Date; b=CkXuZQpMKd37FTtriDpWJhTz9rabqas9MG4KyRjKtvMppLZYCt0xlrt6Zshjmm2j/eOw/bc6yzVl1yJWAzUogLuVkpvs/sVUhh9bl6vM/7ePxABoc44RyqiTOrsNCcuzpmEZOwlyCCwgFm1rkd/qZuOhLMpIbcRNx6w74XWdAVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iONB6cRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iONB6cRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2FAC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785315633;
	bh=Z9P7Q6pYTdKFCPa2Hv6DXpiRjFivnP86mvklMrZSajs=;
	h=To:Subject:From:Date:From;
	b=iONB6cRuqAAkye6AQVlgGB1X1lKYyuNbw4zf7QijBGbZaSVepvmQReh5JkH8D9SdR
	 inlCFakU7mX832LSwG3ISfkYynF5OKTVpKlL4KNMgphmS9X+resA7kXkho98BAaZCa
	 xaxOMhMwJyDDeE9sRQSutR6U4OW/Jal/lGqX15rZTI+6ig1D/XFDnhexfBP4fxzuwb
	 udm1u+fgMCTIemL8qucict496UUGYxrWlhfay74WL+rRZfN9LIZ1T9vkjQvs0Haq1N
	 nCK0BnYIXpqPm1Yn2+LrupySfpemKq+C1HFqWTay+9s1FcvtbOu9ytb1Mgv41uwkL6
	 LpEHvo6F/scJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80F1C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531563368.22946.1693634075255163354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b24365f767049c78434b3e6fa28dbcc792cdfc4d3769de81f37c7b7adf01dc5
Date: Wed, 29 Jul 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785315633
