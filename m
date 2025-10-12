Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291F21C6FEC
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760295594; cv=none; b=Ih5MOAy3at5iUzq16pY041FjZiSQBHVDkiHbF5ATyE3c1IeWL+WyZusPXycRuRzOeGyNBAqg6rXf4u5gnow81Y94DL3k6P3rsfVb0Kzdeo5V3PuDw0cqcHfDLexcJKDIAf4RxOfQ+6YPLcgp1c7GMkKt8MjbQGE+7wAzfnWII8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760295594; c=relaxed/simple;
	bh=FXg8gDxSWAIgeSNJ8IUio7ut9GTibMB8edMC5wFJXjU=;
	h=To:Subject:From:Message-Id:Date; b=Pl4/y2D4nSNGgwMbR/T1lcE19UjwjkG1Fhsf43yuPFs7qjBYmnHzV77lHiOPVQ2If22n6wdPkizrCEHCKcOdsU5WxD3rdwZhdTuXUj9df4TUk2pPJ7fR7IFtitx8uyjg+urKFtmWsOb/cpLka4ipC34jg/S3dXNuejN2WlRo1v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvLWrIMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvLWrIMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA58C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760295593;
	bh=FXg8gDxSWAIgeSNJ8IUio7ut9GTibMB8edMC5wFJXjU=;
	h=To:Subject:From:Date:From;
	b=NvLWrIMk7Qtp6QjVNFJ4LMp2Vp0AFdgMnyN3jHp/J5HqmOwAoYeuKy8SUSg5qyDjY
	 WforJkKClYrKGPpPuq2IUiWw8Tvu2Kma6lRee5/8eb5Wg3wj4p5wi9Rg0jeNRlAtaq
	 XrPMuwfIOD4MbNNuB/VIIlRFcp7jA6onBs3yPvvedPZ2kgOnqy8gX4n4GmK2/rDSTK
	 o6FdOvQvZlKXK3kYeM1wBKbDLwdAZJtd3ZaTjqC1XMjgPW3XytIpbv3JvzFNKhtTSm
	 nOMv3OK0sqftAiqhC/iSOtxOhsmSoW6uPLUIPP1IY999NIgiFgcobMQ8+JCB75cFTe
	 f0tJVyuF31ZFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F060CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029559357.23108.5715022531241265568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c573d5b8c3601b618fe088efca2842bc8a972593b12ab307a2509dc35c2324b
Date: Sun, 12 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760295593
