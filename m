Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6223C1DE8B3
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756355394; cv=none; b=adzZPDPRCXoiDT+qLk+1H4X5rlI4VF8hJvS/MMAb3konMavjkJtIXT64pY2w7/iDdVLT8P/QCGwVDdEASKt20Umc+JqDgf894z3VyGn3+koPNpNCxY9gSfMfnHhArn9GppLWa3inw7nb4dVFD2uj3JzrykkIvQ/7ZI2D3He4BX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756355394; c=relaxed/simple;
	bh=tvwVhZiQBz9FRfwgx9Yu1QL/GA9DtEpEJAwFJeqqH68=;
	h=To:Subject:From:Message-Id:Date; b=B0qbvba3/Xw4ZE6sF8YvLwcxRafy4V24SrAqKzQXSLHD6UoKbu//aNBG3GkYdlM2IiVwnk9MJgK0xIRAKWtgI7ywxvK7XQJa0qVSvpGH4+1IjZFuVZ9/veJnqSRsRx71O81sdo5tzSM3hNRlYd7cFnGytQvfqr/sMR9CnwJ9whU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBU/+/Kp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBU/+/Kp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76E7C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756355393;
	bh=tvwVhZiQBz9FRfwgx9Yu1QL/GA9DtEpEJAwFJeqqH68=;
	h=To:Subject:From:Date:From;
	b=DBU/+/KpsdTaEnd1lJ+AzCdjhjVeqvxhur/e7U/W1e6d1HLtJRHTaZ1N7dmcwdHrf
	 LDyOiOrC1mPoH2adiHP01ih2ao3ZbuzuytZtm3f/4SDYi+lYUs9y3LIs3+61vU/+Ly
	 pVyyOa2RsCBv5j8Xpu+SwGCNjSDGzA2mTDUjHw84SlZXt28U29wvzXp4cadtIJG/cM
	 QQHJXTFBa+1UL2H+wy5IiO3PJd4iGxeU06Mw0NpRqGjPmTZJ43PX3PNo/mE+zrrrT8
	 G9xIl2hEwHQF6N2KkUxY7dTt5y+dSh294MmyY7pIyLnSFq/ZNVDX8yYkWjeIytj+S5
	 LKrEvruhaLrUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACB4CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175635539374.15614.15317087201982604875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7a4710878f6d20b53a50bc2b8ca8afe37b7c6110156ece5fded32a0a5218bd
Date: Thu, 28 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756355393
