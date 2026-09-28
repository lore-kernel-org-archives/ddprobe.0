Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3654078E8
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790575234; cv=none; b=h/N4MS1cLd9rpbVXSpnOzBf9qo/Pat+rx7ts/DgTr0FRb11uqDtoBN40EGVtBD2gUCA0+0n18f0C9AsKLHAOhutcdnw9w0xuJllYjT2K3rhFLDDfe5XJe/uWSIuOYfPZQfENpTAhZFGrvVaoB9DVKZGWQMVNjLjo7xJhR0isAmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790575234; c=relaxed/simple;
	bh=d+P7EnnFB4fLb7M/wXBv5UiZ2T1k+FOZ50ruMQySENQ=;
	h=To:Subject:From:Message-Id:Date; b=gGmz72yhSwvN8KjvNwuNkuByUN/Kfq/rVBq7aSYr5F5CVr3zOsfe9b1AFXIJ76uLLOpedMbibjGvtBQGYzuXuxWghYToNK3U4ceNlGu/PYPRK2/Zj75ZXblJBA30PaXJMCdO59AOokZfWqSvbfO5vv7KE0DbbNFUdm4uipl0SC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FILj0OhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FILj0OhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1436C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790575233;
	bh=d+P7EnnFB4fLb7M/wXBv5UiZ2T1k+FOZ50ruMQySENQ=;
	h=To:Subject:From:Date:From;
	b=FILj0OhJJR3oOwhnYnWGHBZKlhxS7iTdXb+lIiWasvVmF8NOrTj6+arxBRr+t+aOW
	 eMh3djsG2wnZyMsjZvuNf5yhU4qEEZob3+GWgAD/BnW14P7ZzcAC+uoP6n35qfAtA9
	 /qD8aKLygiq+dh1VrlinW5DF1D6mUJATsh7TMg1XwafR5zlR4eJffSEwS0dJFCAhS8
	 cAASZLAqKLwwSHViYfbuHH6LJISE2h18NtiYXNHn5b0OqPROuAdkBWtiyUSZTVIfYO
	 NGltRb0ecDdtqpRMC3rZzFtR/d4bAFCM/+fSPSrKV1hZy2TMG4tADy2SQJugnwb0tb
	 ixSWmB/jptnWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE03C9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179057523370.4826.7156750032336913134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64924d5d69a4db1f6658336d067c238372c64479b2d073ae4d13372fe1bb6ae9
Date: Mon, 28 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790575233
