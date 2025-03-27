Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6AF286A9
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743066594; cv=none; b=CtvUFofd1B6JhQaC9gIDbq0L12Dq4jphuQ5xGaTVf1eHipHUaYhJW7BYV+cB54ceatRZgFAnLnXp0xzx+sriLD6n5Al73yuCufppiLHI9uTPhvXNnHF7PHJdVddiquKPBgRv3TpXDdo9gV388uTbIuxyPLC7J8E2Shi3yhLJaJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743066594; c=relaxed/simple;
	bh=Kr1LLaYB00yvepKSZCk5XZvo/yc3JwR0+4W47lyB81A=;
	h=To:Subject:From:Message-Id:Date; b=oSQgmm5Z2bW9mY3JzzQCcuz7CD5j1i92UNEd5GeJUYb4P6D2tAfe3aUZtYWt6y39bYFcC0yoEctFn3hVkvGdO4WYZ+PHc49fOAYIc/U6Gx7FHn9tvzJ2a+PmN7g2GahvUOwvbCnHLEPfpw2qyeFcUC4lExpnVJYNeJb6ZYuH5og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4IA4H5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4IA4H5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6839C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743066593;
	bh=Kr1LLaYB00yvepKSZCk5XZvo/yc3JwR0+4W47lyB81A=;
	h=To:Subject:From:Date:From;
	b=T4IA4H5po+X2vAtJFk4KQbEteotSiLCAD5UR1jPjJ9yc+RxPnrMfKRaRsLtGBpeqY
	 sU5tqvmbZKGxR01zko0/XLUC9D2dkRlnqloMYmLO/cadfQNkyZczFaY6kBThwbS+u6
	 MU4GnMI1r2cTB9ppi9NNMq8/g3lPjg/IMoDI6TJQm4pC9s75xUP9iRTRaFPaX0Q8fy
	 DeG7cTtDAZx+hTpid/6QaaNgwWo7GU+vht23UDjoC5qnFkT9hCnEkvYZDLxAmYRT79
	 KBQGSF3MuwXdZutxwro48UQSxQ6WNWlXSFrcv9iwQUqtlF0UtHVc/p/U30KhtdnorR
	 qIvvXlVvbtWCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9EB5C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174306659369.24939.8706530025042990058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e255b7be2ffe95093dc7c846f4c66de37a6c0ce2b862ee584ad947eb214734ec
Date: Thu, 27 Mar 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743066593
