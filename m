Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC32B3C3C12
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777546654; cv=none; b=DpZBM0bBHoOwIlgKCNyHf385eYlrYMg2MdgYTL8+zT1U+csq9iLXgPflsNLBgGIvyhBTYsKAZrU9qC5Fxs5c0puDtKtB7bfPWBbKdsbFkAmpIpKPDUH13XerdpCcwTehCvZgdVRDoUq6McWlKgTJPnYYbg7PzRQcC9SQYoE7HeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777546654; c=relaxed/simple;
	bh=7Xsk2TZBOPFVJpLjxnzouFU+CIg9/jX3DYSFuJsmACs=;
	h=To:Subject:From:Message-Id:Date; b=RgW4IfcXb4JfzW2gC3aONb0wMx4PF5tXB/QuTIv0c82hsbsFARVRYgMgqxS4e2jfZCisPWdMr7durr33XhuO1UfBfyH7urh4tdBLYnzThemuSClBVpbCQcYO0ccBmdqfNio3sC4vRQtxnyx/Pf6kIWsmC9c3M8d5LoJUzONOBoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUj0Li56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUj0Li56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB86FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777546653;
	bh=7Xsk2TZBOPFVJpLjxnzouFU+CIg9/jX3DYSFuJsmACs=;
	h=To:Subject:From:Date:From;
	b=IUj0Li566Zt+iMEhB8MtgnDVm4xIhdK22RvF7/4IAKXqSAsnyA64XV7C43rhxRhpy
	 Prs2EKEhnOqkzP31whqU3FBFPqm6XhXgN6xcbbuNBnO9JdtZvMX8l53OoUGzizdngM
	 7YOT8+A+mR6L7yJZJ4UrTYfQqo3qyzdOMQK4dIO8s0BkPrOnGb/0VgjkcYfAbCHZkO
	 NE4ByCJhNoqwqIr0X5cwditxkli9+adS5PK7jiNNS6XtcRHqf/DyUYa7Ot+sbJxy+T
	 rrYnaL694QVZEj0uJg13E0/D/1zl9smQ7BX508NmQ6yJ1zOgPGNSbK3n7MtUwrx2zp
	 GNuOC0rsYtikA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC84FCCFA13
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754665368.3470.6924782469235846216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d4d372288c1727f5cbb707754dc3ac2cecc0c50affa77c53dc65154b22d482
Date: Thu, 30 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777546653
