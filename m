Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4438F29B78B
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787985034; cv=none; b=jSi5sBDP8m7SimYYD8oVE4J8SX6U/vy3YvYONCkfdEvWx/FCNWB9yzZDII/fSU5K5cbx4ANDGRKAcjKH/oFNXaIU7MmOKrCVyZDa902yP5XzAM1XxVpCw50ty7a6/GKdj9R2csF+ap1ktnwia5BiXGTrw+hcNbJ1a2Swy/Nfcx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787985034; c=relaxed/simple;
	bh=zPsNSgrXpcqm6h/8oAUVkAv3n0R70rzscor+dsbqOEk=;
	h=To:Subject:From:Message-Id:Date; b=I1tV4PeZgfBid+f1M573uOphMLuqJi3gqAObFWVaqTVAgo8IG+DV2xiEnm9X3CnhXS0Vjsy39iI7Fb7YjKJVohcpYuMaKIE16OMP7I61SzVIE4gdfkGt5iTQamEDiFbKQRSf3npmkMF7qFSK7+LyJCQGS13G/TQRx3zN+RzWCu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6I10Tw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6I10Tw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECD1C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787985033;
	bh=zPsNSgrXpcqm6h/8oAUVkAv3n0R70rzscor+dsbqOEk=;
	h=To:Subject:From:Date:From;
	b=g6I10Tw5l5iVGg6ThAqcoY6rhCF+Jd5gKoI9glqb/NJPf0rrpdxj7yAZU1io8JBjX
	 dvYxjFjK/zPxsxFGpk3rN1Ssvpa1kdsjkC7GH4srOqFoz9HLRUBUHtJcLblLZkGTle
	 SjPQX6b6qm5NUIQpdSc6aUee4vVIFCxecj+V+KlOO7QeryTGd/Eh4N+GdIxE5NyDsx
	 FLl0vAsONfq4lTSR+3SL48MtYs0OilTwGG4+XVsYfQivP+YcX4KMe6NdhJyrKEK/1r
	 8YBf7HmI+RYziyG72ogYil1hvWO9DO1YcxSr19McNjIyBvyuY/ibb9fD8dhVtlC6Eu
	 DcUOaxZbZfDng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE4FC61DD7
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798503369.3383.17792095210578208491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30de4f24d0295577767a7c1674250f4e1de54ab90bd87a0c26c003fccf0cae7
Date: Sat, 29 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787985033
