Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF50A16FF2B
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710218297; cv=none; b=tPRe6yv9RtoFFHA3pPB+H3sSo/rHs/3iBtNPiVBs8tiq1inKy++icFSFRnYN/vgcHzt/2V0BsOUXvy1Hrn0Y+9USwZLPUWnzKFYPOsITAC5K5X6TCwFbMpFqwnUL4VADTrC6z9H0uCK9MnuEV04yiLmRkkirSRsQfGnhJ4xFJs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710218297; c=relaxed/simple;
	bh=dXBK93n1hUhpD5wn89xjUPAp8je9hDtRxwBlEU2TJz4=;
	h=To:Subject:From:Message-Id:Date; b=POeg2f6QH6ExUzjJxbHKNIQ+UWpBC4JBcqp1+jdhHomXj9xAWV/lPkMgGAEqmQItB7IAmgK8FqH4uKo1L/IOu4Q0W3qxhJEzpWX9SIWxH/5bHV53+JH6E/P318hAdzgLBH1EcU82SysNWmrPsT8cYsXwIrdO0i9MWnXPpvFaCQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RT6XdCrH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RT6XdCrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C74BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710218296;
	bh=dXBK93n1hUhpD5wn89xjUPAp8je9hDtRxwBlEU2TJz4=;
	h=To:Subject:From:Date:From;
	b=RT6XdCrHUvulNqiCofM7DJnXAHP35SvyAsEHyemltEv3jp0lW2YcYHoAAXmYdqFvQ
	 R+cpN9DyYOnhQtCavbGyADyMjwu6c2rR3H5t3cDZQQp5y/N3EJpGEmttm2VbtEY48e
	 w6sDkSlV6kU3pfLWJ4wAtDe4hhNDvth7W9RQLy68GCdK+rAdhZqX5zNy4xnY4Ghy0K
	 Gb4DPmXXad1ahMdQy1vQ72fPp6LIXD/C/MRIyfkLueOORRvX4aFxCDNBdc0p0ua4cx
	 wa5mwjNpYaKwcZItVx2EOTZyMTmsjt4euK3g/RQ4VehdKtYVbvQnPwRGTFXY6UM5Yg
	 FKhhECtcPjMrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60425C54E49
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171021829636.29356.17849013726729840229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85765e046214f5f9a04c625eae2d33be5824eaff1aeaa7751d1605bc44f32260
Date: Tue, 12 Mar 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710218296
