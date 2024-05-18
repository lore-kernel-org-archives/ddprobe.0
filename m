Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4549D10A1E
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 08:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716022343; cv=none; b=a14gClvk0IQHfaqhVr4RSZ5/OpYYqx7OzGPoKVVFcr2JZUqmgEmrieqCb1W+AlP19LxaPu+aILIKopx1KJtwfUtGkn9Fte7a25uk7zVgsnJAONkHzEacbgNXb6UezGpOcg4TipPuA+Kvpr4oNOriIoM1/BqvQ3sbswCmJap/awg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716022343; c=relaxed/simple;
	bh=YuVZEft9MapFs5XEgfrxtL3pqo+raJC12o7cul2YHHU=;
	h=To:Subject:From:Message-Id:Date; b=ftwWJUHk2YQ+XwxFTvZITjM6PlpOBrI906e29KMvj5ELE8Ql4g7aMk49BSIcZySYZBy2LAD1GGugBBnNYIvzJRcMJuqlMBzrgXRni1aziLIagMt6Uk7OpalnjdG1nXWqCjnT5OU5n3GWAE+VoIBs4zPJJq2N4yuWaEt7AknQPfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCUiEAa3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCUiEAa3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4DDC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716022342;
	bh=YuVZEft9MapFs5XEgfrxtL3pqo+raJC12o7cul2YHHU=;
	h=To:Subject:From:Date:From;
	b=XCUiEAa3YBCAgl9q5hsFs64/NZI01P6X/+rOMlYWcLuK4F2I5wdmrU0rFQ7SVBnBg
	 iMwxgZZBPHkRYzcinB+xF/SQx/3qFQ0aTByyfe8DS/YW6La0gqmxBdNkJV61E2mu+X
	 70hagyTN+JMEsmt077cPfvyws5ng/HMs/TAM5HK2lcmHv9dl2naM5+U9/5Rmpr/Nfu
	 /HU37OmE8/II2/OhgkxBNotkgWLQ9AUtKOCXMqBTgsXGTzg1isvF+XWkSOvjIwseYy
	 RVAEtC1u4fj29itesgYFe7KUpTKJCFVjU94iqD2vfD+yT6/fysYl2OVbKi6uRNVlzZ
	 HyqDo+VD7AyCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8374C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171602234278.14301.11926332210412337128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b7a6e64e949f5c0f1fdd5d51642c0dca7697c4b097970043f5f9b822c267e3
Date: Sat, 18 May 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716022342
