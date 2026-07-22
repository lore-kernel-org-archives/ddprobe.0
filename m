Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9476243CE64
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784740174; cv=none; b=S+XP66LHbWhBcri5glUCFwhW+A3gUB64wVryx153oRbTlY6vJ4K9IcTVF3sjQhtlMOW4B/XfopV4LLyjkebm5FnQoCh/13rH6m4F19zRmzaf/7S81hzhRjmaxlRtl/Pm2tlewSvy1zgC1TRhq+Qq0YiXIkmF/Zy97Mxq0C7RCbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784740174; c=relaxed/simple;
	bh=nLRBVuWOpdPZkiAGCLYGon3xyit0ERdVi28wBzE12mQ=;
	h=To:Subject:From:Message-Id:Date; b=YYI31swAb9buqpVNfBUYXALVcanwtg/0Qzqee7tWFMByehxx8WqwO2NuSKzdaadaRmOWiqLpp7wQSH1H4uGiet3NIy5Y5AFxZqOLhmPcrqa0MgsueEPWrhmxc5QT7NfdmvHAOvdbS1Avd1qvmbw9D5Q8tJ3hBstk4SWABypyT3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOILyMAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOILyMAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD77EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784740173;
	bh=nLRBVuWOpdPZkiAGCLYGon3xyit0ERdVi28wBzE12mQ=;
	h=To:Subject:From:Date:From;
	b=LOILyMAFQUpEWnWPimL4w2ariWFEwOULlOapX/fN1ggVVTFeBBf9uaZcjs7U3l/E2
	 q0OD7cScqvT/wpILrxf3wb6Nl2qL+g5eghs0aCo28XvTvnczeUDbBwNvbIjbwJLN3g
	 RXjri45aDo7tcGqeckYJqcK8xem5+IL9b88R38bDYlufYCR8mmTnRs/3Hy+An6ID7G
	 7J3M4042jpAv9WDQTTvUtsb0xFxJc0lg8kYORUXwfmZNOy+bUHxYF7Q/mWB+umiLOe
	 sFZZmXpBGKBYpGO3eBIOtMLTbisxduRJ3UaAg0ebgNaYiiGWeEOwSegS9Q9ZygGY/8
	 xAupJF8riiKEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3A3C44532
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474017369.11295.11592871188329678813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba36abe5e51779ab8d0fc120b52b32c2af7dfcb310115a525d90850c172eecde
Date: Wed, 22 Jul 2026 17:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784740173
