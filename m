Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661C11CD2B
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 05:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741238334; cv=none; b=AaUqQg87k3tiaq5fsZn9pcyQHl5A1lbho8R4FfLIC1cSd0Tc5O580VbTaP+r4aQCWerdj6ifapkWD5516wAQQQ6DzN4Qqwk4ubXZwqhSdCwISt3fj8w9YCBqgSUtgb2qpmmenyQwQq2eMOowlCos0YOGyHPnUjKqt7g060uu/SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741238334; c=relaxed/simple;
	bh=BBEUnOFkh92P2LTPkjR7CzKgIZOdnh0YzCFyPG22710=;
	h=To:Subject:From:Message-Id:Date; b=HbxYODzvqk8wJcDqLWrR7/ZOA/wEqr+Bwd1XqAXdXZKz3cx66RDO1ge/bKCNmgfTSiINK8PraaHtQHQFzMO5hRhjUev18Mk15MG6FDoD56f9+nszIHDIQgckmF+jTqrH1lmEAtq81z0oxVh846nNcOqtEWsQ/A241Abr37T67HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTZJotci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTZJotci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9761C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 05:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741238333;
	bh=BBEUnOFkh92P2LTPkjR7CzKgIZOdnh0YzCFyPG22710=;
	h=To:Subject:From:Date:From;
	b=bTZJotcimlSHVEikLPtXrMBmK2y7hVxSlV18tMXZMkuzgSKhYx7D4Oz+ZJA84fEzF
	 sjHpJ/oLC53Kg5SrbvlqN/vB7FnIWerVEtv8fswD6eusATSEiE2wEz3yXsGWXVXBvr
	 /ux7CutC+z3qur/4nSAlQvU8k3hamIpTD1YnyZND6/Agli9ElmXDRbTbCp1QZ+fXQT
	 hpEGEGuNkSx3ynpxfJCvKFt2cQHkYvRAW+1T0eI6s+Q6ipbFsSKhg7eFF1wA5e/Cd7
	 vSw2IkCxFDUBWN4ZVdWBQm1pJXjzQjBsB0wZDwbMSLZtcLykxh1qVHM0PrxRDOyTMZ
	 9yWoKAD4m5tvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3DB5C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 05:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174123833365.11174.549784195789659606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c1096d738b578847d1f5a56863852b32d912486cd14ebabc85cb44a735a784b
Date: Thu, 06 Mar 2025 05:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741238333
