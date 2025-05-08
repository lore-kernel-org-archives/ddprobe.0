Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE2519D087
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746697793; cv=none; b=NGc2ctgjmREg/KSAP15PnkVE4qHdnYjziIm1TMjz9OeiOWbOoCeXdn7dIsvi6ugmhhihbgzfFxyjj3nQ6RADMDsUuFMjkCXWAtWwXrCPuhbT49jsQCAQgLl9r2bF0xs8VkTi6mFjuSq+qGvBldX3QaT8zTl1cr/eYTvvf63a9DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746697793; c=relaxed/simple;
	bh=IMe+71fNzBNw0RvvI1wH8H2DLE/NBBJHtN1Chn4ZZ6w=;
	h=To:Subject:From:Message-Id:Date; b=GExIAhCwx03Oiei+yL3Ctu0EdMk30j04BmEIxAPcbYnBTlOFTvG9Cap5bDkJqb118WA0hxeqStJ0sHuAdDkuhizQ9n2RByL28KgQA5BPKlLBSUOZnf16rPc2iSJWxojmBShDZYtMbWk+SrIo+aWPGd5TXp1c6b6nj7km3cqDNI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KaIekHU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KaIekHU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D297C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746697793;
	bh=IMe+71fNzBNw0RvvI1wH8H2DLE/NBBJHtN1Chn4ZZ6w=;
	h=To:Subject:From:Date:From;
	b=KaIekHU/xqrVQd3JY43ZYBNBiB/dTkcBgWsMUZm0boB7dE10DSMhNg60byzKUTEgL
	 yGeETKcBv/9whnV6J5tuSCEHi5fhG//629Q55mnp2OP/iwkUl3CsYmZu04w89yVJ7q
	 oUglijGlrxgYmfvnvQlUKaSmbxn2vtm4nM4kZJq7UZnSJFfx06UeAEjXzQRpKl8xNd
	 T2mfHDDnK1NxH0sERCt6zCuufyh33vzU/EpmrIh/MlRWf4Vuezx+gxHslSFltShV/5
	 sqQUGewiUm955Pv3hIbYpJRfTwM0Ohurp9d6BUwiuX4KdBlPPQwQkd3PbkBYJ4uZ23
	 wxP/NMwzbrk/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8CDC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174669779357.19540.13133630939851442042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81722a185ef121d4d4904d4cd9fe9f983659183412359facb1e10a1bb26acae
Date: Thu, 08 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746697793
