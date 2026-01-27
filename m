Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC8A328626
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769498034; cv=none; b=J3oa59+At02iTxWcU6gQnnNBSGDgrX+6QlPvpFxS0idmVReXh58OLsnDNGpnVjd+V/oilcn+5izv4io9GfZu9dqG+EHbhUAcMpPE831apVueWkIBLQtIfYp2NOKnpFE2pxZAsN35A7+BZqzRVqJycvw7xZzEwzfPcpdTcLLWrM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769498034; c=relaxed/simple;
	bh=9rGsP2BoPJNbUiR0Z+61okP1QFfmg6c41iU34ZMZE3E=;
	h=To:Subject:From:Message-Id:Date; b=Rqf1bz6qbiN0iDN26YrLU89ciwJ+J2+gxx+gzndSTbjZqcQ6B279DXjzvmW2rtT2ZT0oFTw0u/8nuabnD/69chXCPz7ykQGzBSgTNhR62x9VieSsnH0HKE4wjkBpLlaTgY4nUnu7l523UkmPmQP9StQyB50QIRiPSOusqx/L8bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yhd1aLm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yhd1aLm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4697C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769498033;
	bh=9rGsP2BoPJNbUiR0Z+61okP1QFfmg6c41iU34ZMZE3E=;
	h=To:Subject:From:Date:From;
	b=Yhd1aLm5hIzQ9aDE2DSUYahHqDP5lmf5wek8eeMyaJz5iT8NGt7lmNkhBRkeyUo+t
	 jmAopgmeY8Pe5oe52jQ2xnkijUkn05I3fNbbZz+q/mmEvkTPY32Et2ggq/Lu+D/Nnp
	 x+tJeNIIYWi3J1C0beHnhLRWyBar+L+DGN8gKE/BNXZsKAqEslZHZVsithO4EGnQ1P
	 W7G5QNPFilZMjp52jorxATrGhbsysuxfsmHCW6dBomQ0rqSgdMrXFFiGFPlVVCvgsu
	 mC12Py1DYlG6XsfcbETMcESNRylLomO/4YBIB7jZVUTmTAiIdPUJG52+PcG5fM5s5X
	 hYMeRDRiBIgfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BE1D25954
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949803358.6805.15216177340380117474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b49cbf8fbe7f4dfbe8f7d3906c67ac8d418e14fa13f502701b9a985fad56ad2
Date: Tue, 27 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769498033
