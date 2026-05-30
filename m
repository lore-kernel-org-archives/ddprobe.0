Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE36274641
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780167874; cv=none; b=OkN0n6XJC5477jAP6hTjj5/ImlGYX6EQFcSCR9ApQRwW0xlcJopCUl8bkTfPmXHyenJMQWIKogWUlg1RmK1gtb5gSZA7dHfWy/eIvknWAWee+/70igMJliDhlmHxCHxV42Gq2Ofg65rcUzTBEMjYwiB7Zld/gcon0yz83/lqnbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780167874; c=relaxed/simple;
	bh=hOD6oDRC5pjnEFLCiGlX4gPyapPJwpDtht+yZapjXsc=;
	h=To:Subject:From:Message-Id:Date; b=XKJb4DfFCW8PqCnu4ZBPrlMY1amClkEsIRjQ+dqnn4EJEzciHbHIRDfbHP6as7d1Pl3c+WuwD03ydMdBn50xpiecMRuObfWpsGLAkk/E4+WWeVylF++wqaH4dfVf6stxcoAUfdy3r1M019QjB65GG0jJg25lOuM/OnqPHvF+qGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTxrOZ/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTxrOZ/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE915C2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780167873;
	bh=hOD6oDRC5pjnEFLCiGlX4gPyapPJwpDtht+yZapjXsc=;
	h=To:Subject:From:Date:From;
	b=RTxrOZ/B7Zzu4LN9fO9zjn+kGOJR0xT3p/y1owCBNPFE5mCffWBl08z/SkqFpuYOs
	 WPROBG+Xjwpo5cXaD4Yd3XNIBwJUEco6eEicqpZz1nkw1A8gwPJhmMrKz429y9KWTJ
	 qdpPyVBFySC6fSCNFX3i8MrCy0gfBpDfDdSIMlVaPh8qkL/LSqicTBCX+BWxw+/IuB
	 4Idfeic8MRPK755p0/61fsmxsWImSgblOQnf2YEz3VHJk+m4SzMthi4ZkS3FtBSoUT
	 Ph6l+bHoMsOYg/CghpHkxD7RRt7UeLLPAv96eQ2FqsV20IF00FBPzX4zimVXSznDSS
	 pHA82+mFqCGUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2248CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178016787374.8565.3292179881247284928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 440cc82166ccafa87af2a9c5a40ec33876f319ed36b6940003d9cb8e7e455f51
Date: Sat, 30 May 2026 19:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780167873
