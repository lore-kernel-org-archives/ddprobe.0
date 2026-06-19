Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369E7326941
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781838394; cv=none; b=JQwtwVDUrySj9hRHvZ5SRfivt9mXW3hApc90Cp3j4AIzQD+R4JPEZviu+UeJ38j9ZJscrfTHbqASg0r2BmsFGb7cteenHha+smFYVqNsAd1k0jLSv3/+wC1b/QgYUDv0qQzAHJ2pUOvUTVLzlJ9nGbsJDhkLUgqzl0cco9Ew4LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781838394; c=relaxed/simple;
	bh=a9tcj3CjorF1EEmnzJy0O7iHTWmcKimhCRdJAZlOt18=;
	h=To:Subject:From:Message-Id:Date; b=HB0opyhn5LhsJSt/6fQS4hsQ1eD5i+esR3PxI6RqJjY9bVLG1dbNapJsWPtOKLol/SOPp/fPkhtW8ESyRpwc6M3sI3xkpFbak50fNoY5jkKlBO8U/mcWt8qKbSNKuSdrtMfNVON05cHLY4ZXDwHd4r0TkPhhvNHLZdPAHhaLgew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLzKjaS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLzKjaS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A65C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781838393;
	bh=a9tcj3CjorF1EEmnzJy0O7iHTWmcKimhCRdJAZlOt18=;
	h=To:Subject:From:Date:From;
	b=BLzKjaS0c0kbBvLjGPmOE/7lHprVKnGalsqpEKtpmXHmTNUKlSnmHtClulQEGIxpk
	 CKKd5ynokTEOy23E3LHrMbH0q+OeCmfE6CA/P/oI9DTbjZpHsMtSUOkTXcyiIQXU8l
	 nMrhIDw5E4h3gz3vRZRJIU17pSLHEYAM+GGATG8gxcR6hLvDtoyzp7/r3N+XBhVouw
	 Hdd42aSCJpr+yl8vxFkcINbZARu0Y8CgDDiyKzhU//r6OgMDlnPMKqqIq3ZcXAo1XF
	 e1TyvT4qvZ28XAAoFxlkgBETgp1NkDMBeLsPc1/hcGPA/UFEE0T00toct3T/U6Wt6i
	 /BWoGjTkP2RbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF375CD98F0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178183839368.8966.10207629305341590887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b677cbf699cee634bfaf2380d7f7e769fcda05eab49818d96046e0c4e58ea8a
Date: Fri, 19 Jun 2026 03:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781838393
