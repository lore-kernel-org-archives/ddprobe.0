Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592322F9D98
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786010434; cv=none; b=gq113DhV3N2pozJVPjRr1QCCmM+vMs9PXJnRrbKPXYJCIQZQl2xffUXNXB89Zs7Ab/hFBj5I8EOCN+xoCE5tOTddl6u3vYobEE3/5mBjT4B1ROLy6BCLfvywIL4+xEIMKDJgMdmnj/kIHvQ/k0eUKCd/70p1mkcsN3D42Lx2CEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786010434; c=relaxed/simple;
	bh=7e8SgjMBQaYCMz1rDXEK5qSct0D4p50+UOLa1KA+lSs=;
	h=To:Subject:From:Message-Id:Date; b=mFwdG1gAqXhwvse+sTbki5TBSlqIOv8RBmq0GpK2NerwGHV+cjxAKj/O6rDN1KKqNu1aJL9SHhMoqIXqoRZ1TeRyKzZErNptTEL6Safq6jNT2tBypWmghGDbTRYG2Alx54KaYsRuiLVfA7ZDESvtoXKHhtMu0KB1V/armA1s+0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tblBxelu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tblBxelu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB33C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786010433;
	bh=7e8SgjMBQaYCMz1rDXEK5qSct0D4p50+UOLa1KA+lSs=;
	h=To:Subject:From:Date:From;
	b=tblBxeluJTjBe10u1QhfBZMKVu8rGyqrZ7URpJieHY5Wzer+0Li5d1eiBzQ+pGSzV
	 jQf10sq8UwfpSMVkKrYsjximhHygAG0piv6m6hZZbTiyLJoiYP2aNke1AR8o+LmJ1V
	 filireX7ogwidfGafDMl/k2m3oANDQ1gOo4yfTfHwPf/ROcxFpgpqLnKZQrt+bHQxR
	 +hH1pkZbvA8oUzUsjSLeiOorefx9oc6U9B3S7pDOzx9CmtJy+yxRa0op3wmoX5WS3c
	 MqaCDRORaNurZaiNqjbwhJpcpXBFrEAZ8M8PFfdIJGm4KBfsbAJjanemsAJ/X39yjv
	 k1PK1JmGtN9dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BE4C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178601043374.27843.9059486807183523957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9c3edac775fd36d1b9356fd354c7cd5ab944151ea739b4cf8c784ef730bc33
Date: Thu, 06 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786010433
