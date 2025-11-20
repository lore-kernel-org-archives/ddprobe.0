Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2054C1A0BD6
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763603514; cv=none; b=gfYHmqqQECmAJTqhFOjF6i0jjy34rv2mGek2jTODJd12NUF1kr8EeB9mgk4XLRAgGOAqy91+F+C9o5RrCEsG911No0bqMMUircJUM6wZbhO0MOEcf92ozSkWye5W8VyxfjRm4/3vvRfdudrjpAKh2edlOx4aNaqdonB/W2sJCnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763603514; c=relaxed/simple;
	bh=kR6JuBjydCeeGCxdKZDZwTH898VocLRaolLBIcmOsWs=;
	h=To:Subject:From:Message-Id:Date; b=TRwzo6MgIS7Hk76R1Aqeyx2QxoH+x+55EoOrX5F+RIK2Gh15ZoXEkqRVNPLfSh9UO7peQ6iTfzunnRN6uj2bcIKrdymyOf+16PArwEz1tIuqyL3Ujw0btFqh67KDwk+zp965JlzqisIJVqafYllrMk2pbXvZrnjKLUtI+qxpsDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbbTS1RX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbbTS1RX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD217C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763603513;
	bh=kR6JuBjydCeeGCxdKZDZwTH898VocLRaolLBIcmOsWs=;
	h=To:Subject:From:Date:From;
	b=rbbTS1RX8A8DGW4TByvvAO4p/RxynqQMWmVq8l8iA6yPMM4ctr5/rDZEvhACnlY8S
	 Wuw0vCOsWQmZLZZrY0AKrQhvK+hjB0TkPnWd4K+ukwC3SO2EyGOd4GCyMCFsGn6Jit
	 F3IUotC/Uk27EcOkgiC29mEClKjS3woE5wZGAOQarM07OhqeaoeGEjKlEkwZVB7pF3
	 qeDVD/daROAf7CDEaqXjNzQ7ooxzuAQZ8+U4HADMFR2zbfpNycd4tKGB/6qFHDRv6U
	 xrKlgbL+zs8dlSlmZ54j/cH/btKvWb3F5+OCEhLxprVUYPUZUFfNae2kLU9m/kNXo9
	 3rHVUKIlXcVhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967F4CF64A1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176360351360.28339.13591586773722600915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574a44e0a9924179e7149c796a2375b94b7c580b62766857bed1acca71cd8206
Date: Thu, 20 Nov 2025 01:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763603513
