Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BBC2C0260
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786167634; cv=none; b=WnP7jaUGBepZHVhCvVF5cQ5B0mFMXalxeueHxHKB7Qq8F9IfDpjClZBu2NWRmPdYtO/x0iIM+DFB83BPyw+JrajlqrItPIe7FAb713ZZJUoq1ZSwH8MHPJUbCzcclOK/OWF99FxEl2srE8THtBuSUItaRaiOEYnHP9+3KL2uGmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786167634; c=relaxed/simple;
	bh=ZwU8PBcx75XEKYJCmahN7RHmyakGueRaARqxDYN6JAY=;
	h=To:Subject:From:Message-Id:Date; b=qAeb1fEoX2rSRRPIB7UDGuvvHFRYcKnyHjEUYQ/smxlH7ZS8F8uoLFU7RLrvXQ6wwDDFKSlpwPeerhSVsUL2v9GOstlzdwg4THGVySIUBGI9U/+Hb7YoU21QF2f8kCs6EoQ5bK4w2LS8ZeHUmEFJqGCCYMxQki/uUxuNFUMoZAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNoSMBBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNoSMBBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D2AC2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786167633;
	bh=ZwU8PBcx75XEKYJCmahN7RHmyakGueRaARqxDYN6JAY=;
	h=To:Subject:From:Date:From;
	b=KNoSMBBpZarEizSlBP5QaSHM9EPrldNfWw8cxNKuyXOiX41/TAYtAAgSmY2adkDwb
	 qIoImD1poW/qHq+5nDd4s/g/NvtMkA0WRE+Ff2+eHYdPbsH1VW/oOLxvnnwcab7fuv
	 oooO9jS3arozaPp+WnOBq6VkkdjLrZITnl+6LnA+JGwDvqzf+4S1hHGAVn26rw+BS3
	 kpANwL/bo9m/SZgSapyvRBnPvRdQPDFoSkTN7gx2CKEJYXOsNJfYslZqSmdNrsmrMu
	 otfR6oO/yV0tnkzToiO0S9WwiVfDaGf3+Z5StAJmGInP4+Fzds8aqgiAMla/n348nI
	 +T1T2zTdy8Hpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1822C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178616763369.3896.17542087318889813896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e2de23e489f8cbc5a920f204b6985c07f9950c6c3039b32d480259cbd976e33
Date: Sat, 08 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786167633
