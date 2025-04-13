Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E0D185955
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744586394; cv=none; b=MpieZL+/Bwaj5nDLWmTouXjYkgRRYKovInFJVBfyoEt0JE1ud+rESe+lLcPgIq5IJx5X+zbhgsXeujiDF89H7HlGffTipsPg2esIvpIs5eoQsr4HlI8JEgJt7o9hI1HneVFTRIOnUMom4w6wI1tkQrVrkhegitBtEGrO7GlCHU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744586394; c=relaxed/simple;
	bh=E6+XiXDmV8FpCm6XFp5CfuNe3loHijwrX26hJkPaf8E=;
	h=To:Subject:From:Message-Id:Date; b=TkhFYefB5rW8bgp71UzemQK0KnEkBCB+K+OR2g8T0ukovZLyW/y+s/XCMoJqipSTqnpYpuqmCU2GCXcpJqZVzJ/jjCQo9EbYDYCzFzagdjCXRTRB6BmLVw29oY4PMpypwc1SL4OexvPKslORB7rCfZ4PLsN1SAZjIOur9rWJ6SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXmRVPna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXmRVPna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3895C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744586393;
	bh=E6+XiXDmV8FpCm6XFp5CfuNe3loHijwrX26hJkPaf8E=;
	h=To:Subject:From:Date:From;
	b=rXmRVPnappCKDdyB1R+1Q4Y130MukuXLeaTAzqn8QYa56wj6dCdqSSSpa6T8XSEyI
	 kODDRQ5kRwSMi8nIreh9bKUG+XJg97itVXdRdmtkE7Zs0gAuPvELmZwAHhPCHtrmha
	 NjssbsfZyOipxT6/XKNuwkJ5WJPyuMla/XM+NOl2d4cXuUI4fBiXt84ek3g6w9rkeB
	 Av5AMPBGZKGeMDom60ki0lSx07a84gCwEhSEw5qQbiCifUpemMWY+I/ugNbZWLfRf9
	 iNpIEnluXCuFdUwkiyjD/McTxF2kDdJRRvHsrjzdbY3i6cbCeO1PyDOyQqdOWgomp6
	 03MxYwUyu67fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988FEC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174458639361.31606.11616463655630648041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a990e380df730f6033fa3cb13ee20ae2f8493c80d3558e8559090e7dc773f87
Date: Sun, 13 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744586393
