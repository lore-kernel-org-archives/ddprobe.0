Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DB336BCF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770654834; cv=none; b=BdmDav8HVoFoeYVB8wuNPNrRnLHKWU8ymPoNNqxm4DaYAR7kFZjMT9uLqYO8anfXFIE1q3xufgl6Ggl+txiHKxe8J5dffRHgQEoDywACqgE9MRbRdg8hkudiZX9RS7ciiR9p0uzbxVHDQZcfMtvp2VtSbTEWXdsuJi1jYd0Ie+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770654834; c=relaxed/simple;
	bh=dRtmWsa3pFhme46Sh87A/fzhDOfvvRk599fd4iixYaY=;
	h=To:Subject:From:Message-Id:Date; b=Unxeb2VVAo7NC3Qzmk2TpBgmSJj5gekPTC+X0RW+K0Nc5G/xFqNHt7yjEsi7qOWYmWmPFvmHI1arAOcoOQPzO5MSVsZiWoKsq7tyxEdL2ph4tzkMSJm6DRGC2MXIIolQ1bXFrcJYJgPW9UJ6Rysa5k6QLig13zZFY/Y91wMJXWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqiAI2Z8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqiAI2Z8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8D6C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770654833;
	bh=dRtmWsa3pFhme46Sh87A/fzhDOfvvRk599fd4iixYaY=;
	h=To:Subject:From:Date:From;
	b=pqiAI2Z84OznGUyOf5CHD7bWppWzeV13Df5C8qdA7nh/iPeFAtjXVdJUEh2S0++7p
	 7FSd19s7qQ79oGnX/BINtSEKQij7gpoTLTQprAbcp/0MqMr2irsf/KytmLdDGrIBpr
	 fLSJhkARR0se7GH0EXku8cTqoOKFLbIm35R0eLAaU0xOif/PUuDXcU2STjRHrgC6sX
	 fnV2n6F7KJgfWOFwXGj2n+rxfFX3o3jhyvvNFIFtm5fKGSyPjD5o/LZnK99+FkJmGi
	 KZ5N25oufumHIl6T8JScepoGNj5ucOvgP8JLbvOm2w300HfkbXRQZ+3F+iI2i7eAAF
	 5wmyUvi95NfYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A583E7E0BC
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065483361.7309.6126437884464024230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f253869aecb93a588329e9c712dda38c7fa6566ac063d7a7a3b2d4eca5f0a2d6
Date: Mon, 09 Feb 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770654833
