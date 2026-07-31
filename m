Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5893AE701
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785519634; cv=none; b=Izr56hSSnMZhtKyp/KKxdC8i9vAVbprpKp6pakMEzYHqFJyNvQli/JCDuMtcTpWK32ry1Q6Ysj+CSTga5KcGd6WqnC37NzHB1LNdqagnzuhfd9+ptbTDdot1N88uZkUQe9B7qBuZE0B0oYyQLjWqxszkn2bndIadCgUfPWOJpxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785519634; c=relaxed/simple;
	bh=BgKfiWv8l5dbsFr0HqoRnV2N/G99yyGqiE5FbJwMI2E=;
	h=To:Subject:From:Message-Id:Date; b=mfx/GQNWDe1LLPUX64XFPl0EbSW19tfHoCl5ymT2fK0kUjs4P7OHAkOtGcvzJLsTluax2izl/J/weQVvHG1VncHXPfC3nQnrnXcsHlNziCawNlTqmFpCOuntHIobnKTCvHmrahtc9KZp10fBifRafIRYN0s6FD25fsAxwRlM5yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HADHuqI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HADHuqI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB85C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785519633;
	bh=BgKfiWv8l5dbsFr0HqoRnV2N/G99yyGqiE5FbJwMI2E=;
	h=To:Subject:From:Date:From;
	b=HADHuqI2CKS8+Ew+OXRIHha1MrOn+rat2Paw+8/INdkGiJ5DAMOpHafMUqaT3d5TP
	 IThKWc2JaEQ92KTfxFboivloZBLOsswWmNMQeALbyYM+FIzwIBO6JOuDdG+jwyE8a1
	 eqjzF+mXaGv189B154yF7lOmFgndyX9N8+jc3SlhF1oV+tKrwn2HUATF8LOuIOwYgn
	 uQGVODVxsxc9DG70OQkIX2SrCszcfH0UhGLJZ6usKMLLSVe/Gs9+AOr7xWRltKXR4K
	 cxv7s7NBioIP0GAA+Ny+WdCps55xJ5OHLzq3o6kTvHukugQUWTdDHL3SnGLeICBoJz
	 16fG36dKpGVGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BE7C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178551963374.9272.6106623384933716031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5705dcd5e8f1a8ab13def028a723193b0fec26252b9d27fc7a91b8bd51d3a7cc
Date: Fri, 31 Jul 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785519633
