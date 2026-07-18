Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E70D3242DF
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784353714; cv=none; b=FvsIUtff6vdFiBVYVsF/W0P8cFZkG0aIbqe1xyQ64r1VeKOvPgrmUBH2TSH6qmMgrO/P2eCCnbArpoznCoHc0UCfmSdjrkuiT4qlwzsF2BW9DfBNK367LUBadGwY/+YIenskfQi/d8UMqwsTPNokIgs3tgTKqQYe94zvs70q4aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784353714; c=relaxed/simple;
	bh=TS6SkCEDW+3QFcplXGjdxRao13OVd7mNW5+juDm4+Xw=;
	h=To:Subject:From:Message-Id:Date; b=jLcKi7N0FhCVJG1MGd7V9gLFSgxixCFSc94T3SYVOK8ef3PkhCTw6Aqq9+ywAcaBghrG55vbjD/HA/EFo8sbkXCGmGX9AkXyt2qUbBPplBEC/MAqOBQ1Mg0qRHlKMIubbRzbEe4+ctfycfrvFy2NP5ZAgzJn89pup9DWU6rTBM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TckN3vBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TckN3vBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE078C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784353713;
	bh=TS6SkCEDW+3QFcplXGjdxRao13OVd7mNW5+juDm4+Xw=;
	h=To:Subject:From:Date:From;
	b=TckN3vBiaTu4PTmd1KAG63mAN9cj8jlRynQzMp48NUueMpZ3+TVeUG+7qLcwufEya
	 7s7fSKal2mJ2ITK3glOscVyWOqVSvyPJPu9CIIQOGcN0DXy6OnyRNDcW4jeXW2+1ja
	 lhoJypl585kIhky9f3T031MQms/AOSmGpfyY6CCzjQp9lJnpGKhXgJxFzSKoQL20bv
	 a37Z471K8IqwmtEFMbcf+1XF3kILJJ8EZXVB2NS6qy8w+QHx/NoZF0y2OmseCaLGZn
	 GEDqSz1fpkmr9oxAuE+90tHI0oXwJ158dZhYlKPrQgQvkmWV1INFqf1bCqQLDles2J
	 22+eKa4Jijt4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B3BC4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435371367.11396.7546769628240198964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a73eb17c7b96ceee96f7b47a2ba9afe9644d5360b987eb7554203e336f26337
Date: Sat, 18 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784353713
