Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B56026F28D
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773399894; cv=none; b=Ub/f8mjI3Jzg/Trp/MTWdG3I5xPFoycuk9CJBrpUlHhAwQ91pf4jvyy+W/Rqi0lQe4xm6zMV0AnRFumfpgpuDQSGpYnY8F4KCq5xYZrytOqnHqpajgjDsDM7fzXucf7mAvB/n/TgiIRPiqqq/fYZFKuKdZTIfyEnZR1Ipzm4gP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773399894; c=relaxed/simple;
	bh=plZO8JBjOdu9vgYr5H4Z3xi13WHxpO2xCeTfkeIXJcU=;
	h=To:Subject:From:Message-Id:Date; b=NQ8ZC3L4UIXsiQHMVUJo6cxIqXE8TRO839jvyO0Xy3LA732y7fhfKvYVXdlZhUEoKxbDS+yilDqnb4axRNnLUJRo7P/YVkoHDjIVGyHUaFHddGA1+5ZeY/SrvoFKVk/bB4aRks/Va/9uBRKKCgrZ11TeavAVGRjlF55E2wsJSQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOiIl1Yq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOiIl1Yq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A217CC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773399893;
	bh=plZO8JBjOdu9vgYr5H4Z3xi13WHxpO2xCeTfkeIXJcU=;
	h=To:Subject:From:Date:From;
	b=AOiIl1Yq9W9mXLKLWO++G6gH0H7S9rRmAiyueBevTgVQsWoZ9pYAS41RaASFz+hMq
	 6G2ro3pws6fE/fqA6bL9vsthCWDIQrAGBAVjVhpFc0yXpOybJSbs8Ou/8AajLLv1qy
	 tboehsVcwkawRpvEMJm40B2SUsr7NSNunVFUEG23eMbR7CEEREIGAAe0/mwOHb9QIy
	 +fe4Qf7ZF6ucF0EO3hog7As91S74I05/Bo9dztfCYZ6wWC6TP9TYW7jIAtKijhJ0EF
	 Zca4cisBbR24zjWKQ/H7okpj7z8mCbZViOyf4zxsKoGMECOC2g5vW5NgnGzDPipCnK
	 MOW/4BWCViK9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B4105F798
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339989358.2944.8095127190634299732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6468fd8228d5787d9e45a58f2f4ae0dc22e18718d7679a5e1248981bec559ce4
Date: Fri, 13 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773399893
