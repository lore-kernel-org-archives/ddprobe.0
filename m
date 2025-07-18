Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26B7191
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752800393; cv=none; b=gn0EQ2xmm+nUY1izGk2Yi7XS2HLk+bd6R3JOxSGrlHA3SilAVZ/2oHTNQpxlT2IDJUNPq6aPnyXVYVoUQt37UXIkuFADkf3bhV9uoeGQNh508Q9dNjEwDB18XmrRjeT4ApP0VDczKdXPqBLlAhF2qrhX6NoqB6xMuo8KikewPjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752800393; c=relaxed/simple;
	bh=X1GrupOZ7LK/E/JeWD0je2TbGcl2JepfYGc6rVf4QpI=;
	h=To:Subject:From:Message-Id:Date; b=BaQm3YBV3n4SuLSpUwTTOGzU1b2vQVdjRGMSVIEP2hJrapYB2ZWq2256iUBSrcDgvz3BAGcO3sakpDcURU25UJsUnVcGYHfn9uKnCh46UQrEQEO2O6q1+PoWncBQOeYnZaka6jxWw2OauwjzgKeaMlfbXGW/7DJWGQRftDCARkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+XmhA9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+XmhA9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67DBC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752800393;
	bh=X1GrupOZ7LK/E/JeWD0je2TbGcl2JepfYGc6rVf4QpI=;
	h=To:Subject:From:Date:From;
	b=T+XmhA9v9MKrcTr40riPYnUkk1HkLtJmtM7r3xO4Q82b1/YXD0Clku+gmLO6xYeGC
	 XqsJCQjO6PuO3xed348OLolXQv8bYPbwLBmCKx/sy4uUTb9ELNAaYP+7gOqFwzduVW
	 dF1uqBzdlqbx8ryybLr9/RYu6lwRH5VGiVQNYvKFNvwXM8fMX6AtPBPnacn8xD0/Mq
	 gfV1eV8Q+TF1wC8JR1Rmi2aMyJERCDqn/VKpp3Zir8Fuke+s/hjFZtqIzfrlJegGdS
	 A9K8Y4ar3NgFvTRvAWYBGKeIU3/VF2J4wDURBXZcaqwQ1E0Rj/u19jthN+xaUw/lqR
	 IxJmsBUa4XJ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A7CC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280039357.1632.8695323077588699542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1baf3d8bfa22682eb6382a99a5efdc02c022df8d5e0620e9b0a8d00e7ac4d11
Date: Fri, 18 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752800393
