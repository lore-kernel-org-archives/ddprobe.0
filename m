Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347E0804
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730552154; cv=none; b=p3HUNjyWvLFpb8ZsH847mwqt1vOD5ehE1QODRnlMv5rojmSi4iFogA5Ewy/SSV3VcREKpLLQ06RRcMkvqh00I9LjSaKr7vWVij2EWdhOmQZ/zgW9T8IGENqgws1upYYsomDuoRZIX7StW7u8IE5gCqhfQnumXN66v5Xv7K9Z3tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730552154; c=relaxed/simple;
	bh=kjHZIhO+sw3y3hc3oD5WUK0mxdPcGGy1u2iOPR8I+ok=;
	h=To:Subject:From:Message-Id:Date; b=hxL3kpLcItL3PvTj1Gkdm4CPXypF8e2buvTFqAH07cJLGaaIrfTEgUdZ5PmnKkJ+cLk/6T4d2HdbfOU3GHDYfxbJcPvzaU7WgAdYXOARhMUFWWsfm+kkYe8HyU1QUerf4i6lj246PIu6Mh6mE4H9OCeLxMCLSOA8J1JhMLsaQAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDjw8kvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDjw8kvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CFAC4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730552153;
	bh=kjHZIhO+sw3y3hc3oD5WUK0mxdPcGGy1u2iOPR8I+ok=;
	h=To:Subject:From:Date:From;
	b=gDjw8kvhAphDg0bFFdyCOje3Bg3EQCJ/KcENQKHQJ1+fGa8lHKqBIYyFiVEDfsr64
	 MAfDzuHy7KdylyN9/VNNc2esT9m0es8dzA0ETR8ZoZRsmPmKHtzGpX3LcwpGkfcMG1
	 Xwkn5ixFaMLG1WPhEBd6yQU2QslRU8M73pJ7osFak++X4eVEGrcTlwB1zIT+w/dzdw
	 pWozXSyksYnIuVizJsgSdIvGkdAQtFahrTNwWz0hidZVdOOeAiz51i9QFpcaomdUoR
	 KvvKf8kXHWmrDoC2Y4thA9Ll7B2/5K/ZVkCsChkJB1ToThEvtMfftl26j7s4EH0acV
	 LAKTuN5E/lrKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D2FE677F5
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173055215361.21403.355952929786112331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9bc09f3d7e3d9049e1689e8a60635dce0676e43d5b3c7f94f8af064647d881
Date: Sat, 02 Nov 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730552153
