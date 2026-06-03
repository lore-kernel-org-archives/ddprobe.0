Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2418338D3E1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780465474; cv=none; b=Kg9O9ioRJRcXNazP2Hs62cGPerC9Ny7VN4n4YjWEb0kweWYp9R3TPAWg4eDY08dy7A66f67BY/KK/U8eLrFjFCIx3FaI1JNe6rKmC0fUN6PbkYiubqXs8VzS0jPteqKcIwrgTTqGCBKEwS267dAl0xr9qx++tb9/Xx51oeUQFbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780465474; c=relaxed/simple;
	bh=QmDanHXzWBDtgxC4mLkiDOvSWBMPPsyMfrmCrqeBZ8Y=;
	h=To:Subject:From:Message-Id:Date; b=glV/Tp5djDcwKATISEYUD4eaeAvdUipc5mB0/ToYfq0P+gGw6kK0aTgzX47Ai5C4IiP08YkmepvmZBAdfIpHZ4DMLfvEPC4A0n7MdtuR7WnK3LY9Neh02b9W6tKR7V8+xOfgry4CzmxfAu60iQCih2NTu47yTIWwQVRc7fxuoXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRvOT0b+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRvOT0b+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FE4C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780465473;
	bh=QmDanHXzWBDtgxC4mLkiDOvSWBMPPsyMfrmCrqeBZ8Y=;
	h=To:Subject:From:Date:From;
	b=YRvOT0b+R86tnfPq+501wID4OvQobnkHVLpowMynziMJr3vEL3ZZ7qDo75G7vZg74
	 34VU5MOAt2l0H/7zgc5hOjaj4NEv6m2b3Pd3w16euH1pSGeKrSfsJcJypW+YTrdfoS
	 7Ypz2NvP71Ckr/7ZKynLOvYp7butJuWNDrgP5zeg8E2e9uTF4vZariD1dHdvJzYVvL
	 Tv7oJY2iuPWREsR3cTgUFIrY31L+YQUeLhrNC9fZVN1Jw+UvpQLBu92tmHjs09UZIA
	 x65XIloI1zaDz7N4/vxGHUK8nQzNJYSUUpbOPh3qya+lkeOXrTqBFs594HDb022WIl
	 ni8Ync46VCvzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AEFCD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046547368.29885.17379426824696065323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 783bf75a9720412c728eca3be3c504208a62a908001b8f1c34eec1c0d36178c4
Date: Wed, 03 Jun 2026 05:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780465473
