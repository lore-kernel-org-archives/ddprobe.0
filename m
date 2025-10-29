Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF42E27F00A
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761698993; cv=none; b=nGY8b/gJF8AijZmRVCZg974nPP/MUrR9lbj8UW90fW+Sh9VW5VR18PhqAqiScxPmwOAts6WY4CBhQ0rxJ0h/3b9PQrOJldj32DQqPIRluukIOAOeC+SsamADkZsJQRRlnhVPIqJrdUECi1nuLkRc3mr+gdOfmh2RHZqQ7MyfTWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761698993; c=relaxed/simple;
	bh=5/kEH7TjkYqYNQ3NBTHTj8y1/MQ+lfMjl8pIVJp1MOk=;
	h=To:Subject:From:Message-Id:Date; b=jjvjYIqAlmfaMtknGJR66PEVowK1mU6FOl/UActMltAf4f4DnEUSK7lSXgd9o2K7LJcbFrlYesgm5sjaPHzxnzuMoINxOfvDENdsTh5B6uvDpOqIumlTOT++rXEvXv/fIrxU5ayBFasNXR3qSsFp3gO/KmOGSBUtubNLjo3imd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atdCiBxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atdCiBxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7961C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761698993;
	bh=5/kEH7TjkYqYNQ3NBTHTj8y1/MQ+lfMjl8pIVJp1MOk=;
	h=To:Subject:From:Date:From;
	b=atdCiBxLdWtszEkNwZwvzX8CU+dcl+UFWKUnDDthR7Rth9UZdQ+Is9wOjr4gRa4cX
	 u8G2F1mhgFXhU7FWfnyir4NpkZt1qKDD4skrO8OaAmF+jLRzV9BgY3zcJAw7e+UPky
	 kIBsBC7XcV7vqoTc2K9DuC/69+B8s4jUGh0OwUzXpha8iCZiiEENixMguooSpixfZ4
	 FjxcH4YaZl5KYkTYLCM/gAgKj0FL1FV/x/WxEYSzDdOrcRtk3xurnd2KR/DwVKp2ik
	 +FKSdPrnOQX6wtKlVK+oGuW6v37m6rki7dq5MIRcLwzP6ykTIlJcpYoo2sT1ZPorCQ
	 8WWAf4QlhQOQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E7CCCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176169899358.17761.5184086724237478915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cb5c947a5ac2b78135d99eabd4c3b8f89fd31712fcf4c23b91825498f4aa553
Date: Wed, 29 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761698993
