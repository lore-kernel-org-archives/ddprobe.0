Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B81A266581
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787743234; cv=none; b=DKUPCKS8D9kVZjxQjnNifumhl58ErW9ebWv3UOVrMe0kx195gcb1KFRqyK7swCIm6CyFNLHzI55mCO0ql4ahng+/EHnJXi8vJ1X7Ijt8wTN6gTf5sjPrkSmEZk/A4X4c7zcBi2UxrDILDtm4AKKgNwSrIidvZtTu2MyQ0twvgW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787743234; c=relaxed/simple;
	bh=AJvqafDfQNWfZgL3QJTMnTGFibJG54MUlVgfBMnHNfk=;
	h=To:Subject:From:Message-Id:Date; b=KxnzxsRHjAm9XKXUBpdgucgiVkelnIf3a5cz4Tbxl5ecCrXp+nwtlmLm2JStPYhr/0e0L5ZgEg1mSpFTZH1pGP5Xf99P+MVuZrIP1DZpIqs2hW6l0CIs73YeM6825hpgwuCG3ks/FRQD8og6xeKw8gYm/5DGmWhaDj8zIdVc1/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMsV06mK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMsV06mK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EAEC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787743233;
	bh=AJvqafDfQNWfZgL3QJTMnTGFibJG54MUlVgfBMnHNfk=;
	h=To:Subject:From:Date:From;
	b=dMsV06mKV0M9Dhcqmu/DvrnNmV/nzDiGIn6UlsEaGNMMQbJrr6/Tu8/QrBer20eiB
	 F4siFKD8AfgVS3dT6+fZXSgi44KZX8Vk2tHjxWdpXb5YAqnEDnB/YdZn3Cw+BNgFdh
	 tfzZt0dzHYnSKQWyPrNaarrABs7ewkXH87FiNjkSamIRYfgWBaHEnbadDe6MstPMAk
	 wE4gkLC8NOMLwquvKO/cdhwkzbn+5MfXHKsgcefUq98kNzU/tLPtHuauQVnKbOql6S
	 3rK7bCNbAvG7pF8E6yERYYJLpxdA1vdZpXLTxdpMLOgm+oIvXhmN1c5XksrWweG8H5
	 dAbshKdRVeuoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB956C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774323369.13126.5531700568999732535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c92b6c2cebfb46af9a4c9c933617ccb7d1ddfb332e6c50586e6a872e1c6d99f
Date: Wed, 26 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787743233
