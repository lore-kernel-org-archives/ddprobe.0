Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A179207A38
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771490694; cv=none; b=UITk97nG8rOSx0F45qnqe6kQ2sCp5ouSIxPet1H+tWU4TNj0xtAlEqtVZtNaJFc95EildG71tDJQsOyowyJHaO1uP4Pl4qLSCr2I51HQreSfLHKQQ9vCK1z+7MAeZ6IrV03l5a8zoEgWlJNXmotYAF3IEvh/x6cGOWyLWuhVASQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771490694; c=relaxed/simple;
	bh=v2C8fDzIRUDheisdWfNapWcK6DYdzgRRtsMcIyXhkyI=;
	h=To:Subject:From:Message-Id:Date; b=tkx1HyAinqUseyd4hQPr6WDoCIRBLQ/hMSIuUVrKyl4DZ3+zLbQZ9hS6d8eRmcfOTcgATOEQXbTokl5HYvzqkBlkg5OMHfwudvn3lm5JbWWI6DSqYtc14OPrYUTCiTpY7/nex5st2yd3ymWtJLpFZeraS19erB4veGjAVdyJLks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0EwBdkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0EwBdkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED18C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771490693;
	bh=v2C8fDzIRUDheisdWfNapWcK6DYdzgRRtsMcIyXhkyI=;
	h=To:Subject:From:Date:From;
	b=B0EwBdkXB2B8MW05TBoDQqwwoaAmJg2Vy4xcED7FERRIThteqsNFMtbo9u/W9cSK/
	 pPtr2R82nWfRPE6TOXmsC9OttXjWf4htYxSSThEbuiA6SU5GuQbl9PT8ekg/VE5WJk
	 cqUz2+M/Ct7ABUhjSlfU/O8iwGCMVTvBbvKfZ8uZDImEsYae050QA6ImWjvwvqT1Q7
	 eOhapP/IstrcamieUaObSfykyFu8xG/mUFWLMrLCWwb7QpKY32ZIGC5AziudAuYQaP
	 8stkwJC2GZyaAV1Erv3NmMwUwn/MsV8Q7UtaFz7zxv3H0pIIdWPyiDkEVRDS7Imu3I
	 NV19N71il4z6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E80E9A04C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149069359.12983.14550155502191498083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 176085e09407e34d4b56d0f450dcb429d79d2c37b4d1ad6aabf2d08a4904fc81
Date: Thu, 19 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771490693
