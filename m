Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321762980AB
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747310994; cv=none; b=n0b9CPk7X5GAM4uAD9kE/bd4ytlHvYlAVje53aotkcYFDmLcFdvS2CAo2qVPFZShoTwUqYChTgbnoSDoMZ//LT9s5mKO7Gqj+JwXDSJA+GDtz74wmPqVFnjrPQMcFUiK2ZUoLFwsMrmvBQ4hAnvr2Ue9ESsv7/7L2P1aFvSu75g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747310994; c=relaxed/simple;
	bh=OUvQmlcEbIx3Vt8GvIMudtq89jhoH9CL5bqPemU9n1o=;
	h=To:Subject:From:Message-Id:Date; b=f4wJ8EyCRz2bjUsfDe8f+nEwKvLmr2ttNabd7i79QIlYbJ9XV/5t0x9rUVVgBZRKzeraZ2qatZKMZODMGarNNMqAvdYscOMx6SMOzggUul3/PwwSC0hMnmRKeovheQ5OROv4pGjJ/ZoPE7JaFvl5Eg775WgOOAIj/0vq9XikRnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKeJ67cK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKeJ67cK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F04C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747310993;
	bh=OUvQmlcEbIx3Vt8GvIMudtq89jhoH9CL5bqPemU9n1o=;
	h=To:Subject:From:Date:From;
	b=OKeJ67cK/p4FGBM9GYgqNXJdP0LwnQvOTlzk9vHiCnDaVPmStKmASL/S9Ys8m8a9Z
	 3BMPU9DNtPReVsSk5CFmAaVNSq1FnOJRSIS3+1WxYUGGzyEB9B1BPCXkFN/k5bTSEk
	 MhDuGCskFvtFv6VY8QGXY4pUBNgy3sBOEkZfpA0r7s0e1CVArMLzJnbghBAQx6jdOj
	 B1VQb4qTExlTF9HlOtsNkZpck98R5rePMqGU9vqmLfCqIVb6SWsSlI0xpBOtKetgrA
	 IAfvcwneuIXKi+zlrVWNA8wIHwQfSU0r8bKj2NMFw+myh82lN0nFiaksMAJ47/h9HN
	 lEYlwNnRrBmZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A6FC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174731099358.17565.9357258736062826314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7abbe01b909f6db5df8aaefc113cf5ebc834d15e953186c56cd431ad5747df7
Date: Thu, 15 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747310993
