Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4552413A86C
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764382974; cv=none; b=W/xngtDb0kgqBmiq0w9dPSeGl5fOt2pdsmsrqoiHQV/FLhe+UZX+SKqcNl5fiIoIk6j04IfNo5RbO3tGjzjREgA9As21+1HoaT3kZL4yzcSJRWS1cZ7y6RdfHPCsY4moHgTJy8192uGZaPbg6fbto01JJFd78L1EKgdQXFdRkjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764382974; c=relaxed/simple;
	bh=WsDAhFkXSibAMzvXsgZbu97w2uzNmHT9ABpXrz5C1NA=;
	h=To:Subject:From:Message-Id:Date; b=W3R2+U/lKwrmOgNbmHFlM7efeQ7FAf/fP4t3+L/GytrskWitoiXuLCt9dZ6arM6704n4z8yWS4aEuIkEpt/ryTySwsUOwtDfCgvZXATTj/65sp7oWvNiY0UW66kFkdMzGGZDaawwQDXx095Mw04IMcXGbSdD+J1z0sd/WnTlly4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bo9166fv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bo9166fv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB56BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764382973;
	bh=WsDAhFkXSibAMzvXsgZbu97w2uzNmHT9ABpXrz5C1NA=;
	h=To:Subject:From:Date:From;
	b=bo9166fvb2Zp1ttlSdEwvPcC7FYcbo1GXzhDbvsLRdCEHn2Ren9hrBk4M1gJyWedN
	 QwA9AiobKvdVEJI8u6N/0YfSffSc9/p7U0r4icwAq3NLi0bGznb0fuvlnUZncjvmpn
	 24BnTa9wXxRLGYGgBC9o8n8Kc3ztZSh0arZFyh4t7sBIC5+2SyvDE7GagO06NpqAc0
	 eh0mSXOR37Rs0r0YC5fgjFLByzYcm3FxvsZkDgNscW4eDTfBUz74DMMd2OEcfw9RJK
	 NocVaccmUscbePE6f4aRKa/Bm+pGXLFipCdpTV2sW7Tj3u3I2jw5MCHDJ2QHtVcPgd
	 O5oTLVdh65YXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A38D116E2
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176438297358.3012.13607477503566603399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57019fea7294417084e57cfea27fd9b36e8813ab367b65441cdcb4b7646234ae
Date: Sat, 29 Nov 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764382973
