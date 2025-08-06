Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09796233701
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754521194; cv=none; b=u7XPSjYvASiOZkuTvRviUShqAebyV0jVGESh9nQqgWWayEAfQkRwsTGkzktncFRKW2FSTRgMwwu9L5hshWrYW/eePeIBovOQFHYJvrE08i11PnH2jy/BidmyCOv5+CQbk1DJBgU68nietri8Ns+5PonqT05We9GgqiCQ4TkxvrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754521194; c=relaxed/simple;
	bh=8SEtC9SCdEePHMjitR3pVRka9TkQYzYbJnblvwqI/OM=;
	h=To:Subject:From:Message-Id:Date; b=hkjXI9pLqFgmFRSsn04FXVRakc5/WTbu6D2Imw+gaSJ+djDfwRZTi+Z3a7f40BI0NNigwGSR5UgRQg4slPu7SrTUPqfi2Wp/F+Gz+MzCP4WwVLEuu2o9x3xdt2MCunAi0AnQ3vLpcEP9L+HI/XmV/t0J4cCtIRXiDLztbMvjRWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8iGba4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8iGba4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD7AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754521193;
	bh=8SEtC9SCdEePHMjitR3pVRka9TkQYzYbJnblvwqI/OM=;
	h=To:Subject:From:Date:From;
	b=s8iGba4e/YLexbRWG/xxD/+NbIXMbKdu7qC9+TIEzRFqHKQ/VZB3NyJe7YAjbV3a+
	 YIdr9ecxfLigdRW55yBSUPr1bTi2/ne3oPcJG/C21XzrsvprNov/pWVlRK7L8iJNlJ
	 zCRWACKR3TLFf9v94g4+Kbo0I+cM2DLqfAnWm49Qnhl4/uUV38aXxYRRcLUTeADcNs
	 xILcOvkpbCkLj+wI/Q516RZkSjgFQbbIAotJhONDA1kl5AG20VAZuJHCp5sMqh5jrp
	 lr5A4C6wtgLxmUiBNqcpM231a/JC8nFYce/1BOS0Ni9jHEXAGOgZCOBUrzK4hOoRI2
	 hzpgoO8VWVy0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDDFC87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175452119357.30152.15743705555238070361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd132a71d8ecf837c500baa0e0adf881e5c38a4fef39d2c5b8077de7e98b57a8
Date: Wed, 06 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754521193
