Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F21224B26
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747475394; cv=none; b=l9uhItmzrrcUYTMsj7o5N9G0tz/VHBxb1TQtfSCAJj8oyNpU5XcSL3w6wEQsbcJwLcaBPU4wZDdAecrnMK0y9NE1Ud6CdDoU6cWDnwoGvDx2ovq+NMGqIlo4MuzQDEIBJ4lI9aA3WfMZOxmU8JHe2/akgqvhGOyMfv6Yti0+26k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747475394; c=relaxed/simple;
	bh=LLpW/ENqT+GglVj/kgWWzNbZi6TUeR7Nn5I3DZIVR9I=;
	h=To:Subject:From:Message-Id:Date; b=Jl/tULtVGYHorHDJFl8WiJb8JypM7U8VnU0ptQ64TPVzfr7ts4PMSsxFSqrlWeWZQWUNlCn8m89eR6pS1wNamC8aeefKnWnAwIfOQYdd57WaH1w/FR2jFwvcIIjUZY1X46S643b/rDGvxqubmMNuVQ4K5+/LVSKLd42Ma6hT3MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nG8FEuYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nG8FEuYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85FBC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747475393;
	bh=LLpW/ENqT+GglVj/kgWWzNbZi6TUeR7Nn5I3DZIVR9I=;
	h=To:Subject:From:Date:From;
	b=nG8FEuYqgDyy375q7WAF0Am5O7ZdTkcQxqDdCwkKtQ1uL4hJRVQQz73EcGgKPWsbZ
	 /InzxrTKDxRxJGlTWbri81h/P6Gt4C/b2C/p3vX7CwSJ10kqHER245ZSZbb0+s5Q9R
	 bAZBMUeIVMSyz/wYoRw0DNtsxHZlMa8MHH66swluUMdX4u30Suuf05SbA1xKbKZjtp
	 m8pqDxn7qEKb9y3KSNI2OcZ2CHJM2bYMrIzoyTxDuKduOxSOl8Hu4idJi9mMIWabmN
	 IBxQaWk1H/P49FSzxdB0a6hnDMiuiExT/14vs8M511OI7Io03Bm5b1gGpxBXGQ3+1f
	 ZjKjIg+hGcVvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B71C3ABDA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174747539358.3867.7319447602729033033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 229d632ce78170edde987de65f7cb86475521f7b92730c0d9c2c9ac10efd19f7
Date: Sat, 17 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747475393
