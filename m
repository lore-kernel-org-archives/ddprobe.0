Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0DC23774
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746418195; cv=none; b=qjBuZ5NfMYekgae1gRBh+J+v2KIsInzmEspaWPFJzm2ZHImpx0KJ6Kn42K8xDswUw7H0U1EV6wREarFK2CKRbrIAGeze2p6MlXY1E2ab+zmV/H1PWFqI3Bc5Y/luxoZ92xsOdH8MK3djQ/Mr6Ydp9icuEgTdsh06Vj5wHHLLfCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746418195; c=relaxed/simple;
	bh=sbqyWRn2HVfDxQf2Ryum3Y4PogCtQIvFlghtrGXBuxU=;
	h=To:Subject:From:Message-Id:Date; b=btfALJzrE0KIEiowZWp8RcUG5ztu20VCNvczjjIKWQKXX9HBG95q08z4orj/THcYBweStWsglr7fQkF00e8LO6dFrdIRDkPcZCYilxpoytYcAbI+8xCbKVNcXcwqwVX2fSgYmsWT9DorAuOvx25jGPK//j004ixxkClwJO0Gi5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YK3tGgQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YK3tGgQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CF4C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746418193;
	bh=sbqyWRn2HVfDxQf2Ryum3Y4PogCtQIvFlghtrGXBuxU=;
	h=To:Subject:From:Date:From;
	b=YK3tGgQ7igPmChMd6/VzzpmKw9vOLvyFJpEgEFnn1Uw1x+swyTYhSDxo+ZQcM/7b8
	 4mWgZYGJsLb5XadeEPiloziJz9sa2QM6pSJz5zY+qAHDk78jEuZydZP3izl273xrgX
	 czcSoqSFbK+QSi4kceZ8UmbZ3zqvQr1wlR5fdRUxzlwfIW/apU5ZqW3zKr+euMzazm
	 bq0sulhw9P6/jWYwaDIJMDHsXJHjTziWPsspZr6iRK/MbRpeQmByCG/YLSkL9tkvce
	 kQ9hc5EgNvOy+VxWozDCT2tS06F9Sk5YD3ncbw/3hvKCclhL3kzQaKoiKIgMaJQYg4
	 NfdNPqn0OQYAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F903C369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641819362.16775.17485479370795067176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9738515c659161a0ac45af714d6232a71862208b9902fe8299eb039e092190
Date: Mon, 05 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746418193
