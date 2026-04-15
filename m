Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0861E2D94AF
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776269254; cv=none; b=nUxe7wfu0UGKkbWII1b0H6sbpwcG7puBMfC9m8cyffzMNqUTtB4dOT/uKx2bwky3KM4snlbeUl1q0PDRFL1W1cLmE13GM6SDrbbAYqaVbhOColUt9X30lGgbPRM79eKPNwMO8ednC8EAceNQkmBpXNTGBOX7wFvVzUIYnx2cjZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776269254; c=relaxed/simple;
	bh=8L/uTV8vkj7o5Tl3+wlu41ZOodPVhikX703e1M4mggY=;
	h=To:Subject:From:Message-Id:Date; b=QZsBA2fBkzBtnc6sP0vE6gdRvA1dmUn7bUNif036aIc+7ceXseLEyvUI+dwAQspYQLrImPjlFDKJitl8xd8lb8WwoZtIwLOpUWhBNLNuw0iFM5niPpnf6O3NxIOKqRKAtkikHhMGcPkhYpIEfZCNxQWnI4YcIPIHFHXXsvX80FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRYR2ysy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRYR2ysy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EAFC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776269253;
	bh=8L/uTV8vkj7o5Tl3+wlu41ZOodPVhikX703e1M4mggY=;
	h=To:Subject:From:Date:From;
	b=uRYR2ysylfu70qsmFiJGxa/Of7oH66WB09jDO3veYqSFmJEmX4G4JX1quTTEwYhN0
	 LFTNdUzLKih+TSYtyy51zR8fQx3OpfDeYtXCRS4ZfApkG+vFuK17iFHygnHCXTc+h7
	 Dz1VNfHSckkx7z+VU1m7w1iUMIKDIbUqXc9NGEvJ/7SxuyLNEe/8wF5G3baG1rb3X0
	 h6Mw1nIve9Csio41BqqU+D+sW+qCyKrlsoG+SLbJ1X8QR9/L1ykcQ9p3I6th3/nRaC
	 wllzVouSg3GooydiyWhgPNKXrSiqFm+wtxCkwNG4MDBq+ESUF7SpF9PWZ//N/bpS3M
	 4iIQr1LznDAcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABF6F43848
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626925368.7230.2192081672516423148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cdd2be13d38e649cc4badc8aa52011510445c6668b81b1dd87ee205b79b8a3d
Date: Wed, 15 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776269253
