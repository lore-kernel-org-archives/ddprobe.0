Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299C321A4B2
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729868754; cv=none; b=L93INlzWiMeeIt9HiwzCUzDPswdJLg5TV1sB/DyP0WQ60WCEZDHoCG0GKO3mdSsa7kVuDZiIlR2DmVd+3wY8KQonJVPOImC6Pzvi4VheeCqDfvxyUfKeltXXEEkqdWfnL23LA8G7mZToMuRZoJYujvIiZXDd3e35MnT/rwubh5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729868754; c=relaxed/simple;
	bh=pBtV16sbIq1YSRhFYI1/naoyFIcJjILw9Bj88RWGW2s=;
	h=To:Subject:From:Message-Id:Date; b=CWAvWsWwFnHwrv+aZkzKPUNMr+IvnrHPnpg9hLBpKEx99lojALS79fjh/ZpIOoFyRM22gSq/y2rJkFw0u586n4G4El0aV7x14+2tioDDrD0sHPY9b+zXCs8gLkPQO76XZMk7B3FXikuTFLJmpQzq5t40GT6UX4QYtl88GSbY2v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaMNjj9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaMNjj9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B139FC4CEFA
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729868753;
	bh=pBtV16sbIq1YSRhFYI1/naoyFIcJjILw9Bj88RWGW2s=;
	h=To:Subject:From:Date:From;
	b=XaMNjj9oHNWeVgsxH3Vn4B9IuHvPgOSwDYfTdrPY4Z2N7ZJP7liBrKKS0fMC8XgdW
	 2eZNTpeAc+qwsZE3BplFKebpEm7gf35dGUtTiHRnHdwZyAfD5f5rZIHSIoHtewFW5p
	 aXaSqSKoM1aooPU1BqUI+KV2XfT5B02WEA7/k+l+RbkPq08+V6sL7D0+YoxEA+H3cT
	 8FgALr2qubCQR1YCVt0Pb9r8ZiWLjuZAULwLjotFYSr1AwewM/4n2PaM54opVQlbOa
	 ReKn5fc8zfoZRufAP81Gc1CfL3eUhbNK3o2mv9kVmyZTXmx6lUcvVcDduTuIAVs9Pi
	 8bjENnjqNMEiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99047D0C61D
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172986875361.19978.7866957176067969989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5b17b9ef45d93a00483a50aa424a0fa24c1c5af967576c1d5bfa92e46ac93b0
Date: Fri, 25 Oct 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729868753
