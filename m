Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044182BDC13
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771089294; cv=none; b=fuLL2brrTQgrGehx4osnWlmTrrBED19XiuO7I8bier5q4eKgV5b48HMIrZINcv3cTYqfpWPPCqLaAi7RaXV1FSMjlMMZlWS7X4Y1P9lkejKjus+y76gn4RDnU/6yac+BYM/HWJRwbztyBstcIc/CUhi2uB3XZwD2n9cqazxgXgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771089294; c=relaxed/simple;
	bh=JZkmMYYyu86LC8Tp4ZmRr5eLT2TGQGNi7bf98LwQ/JE=;
	h=To:Subject:From:Message-Id:Date; b=GmAPwY72amSNbhNFCoygOoaJVr7yXLRMO4+xvhy0LEA7Gvp7aFZRd78lBZZoo5xkpaj1X3aDzlzMTY7LelkNe57fCrQPVbruppiBnky7nQhl0x8zuUqdmMB4gDUWViqAtUA3dGdRhrmubHV0D2M5krYCaN+IsmzfrTf9VYIoBe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mffown5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mffown5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A26C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771089293;
	bh=JZkmMYYyu86LC8Tp4ZmRr5eLT2TGQGNi7bf98LwQ/JE=;
	h=To:Subject:From:Date:From;
	b=mffown5C+rmmPzi9CKZvIrnLAKpbYmxVDuEFRVdfpO0LDVj09RB1wbHoD8OBW0imr
	 wKtBTEq0AeX339k7DY1/kTddFYEsq6wSPbut4w//whdPTiTTlrGpgAvxBTFB1lGynu
	 gEUgvXlERNdAwzykr1kXZO5VB/06W487IcpcjuSH/wKAUQBlB+2PSiuvF2MYoWA7vl
	 sZ4AOWtENVyNIKAvLlgpbM2B86FqN04QE4XcmZt0spNuqbfE+82o6e2KGghOIRscmY
	 iBzcU6STmmNBmSGQN99GTfw7O51TxCa4LItvose0s+P7eAc9BQ6BjaBYNmdoDdyCYY
	 vAl0xozL63/6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9369BEF584B
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108929359.10319.10721389338490725767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c04290dba1a8f9398cb4d086ed79f2dadb80601589372def11f4a9860d5487
Date: Sat, 14 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771089293
