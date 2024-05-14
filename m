Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84CF8182AE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 06:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715667743; cv=none; b=Hv/l+ZVgEsggz6UfhG8dtiFK5aB7hsVHwuYOne5pUMClD0OI9wK6FoqenJz7dzXSBf73GS7PT3v4Pn7SDUSchkOo9euKsbTJXtp8rXUERY4GPO6euvEKV4ZczN1CPVtHZnSRhYkDuBUdnZimqBYfZS3HZZizIsbmHW/piihf3vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715667743; c=relaxed/simple;
	bh=zrc8ufR/Tr5SXHuzjcpRAu93i/0ggpcXbAGAR6uDc4Y=;
	h=To:Subject:From:Message-Id:Date; b=L8kyYLqKphc5O8DQWTMB5LGw25kP2gc+aPG2w+D+TBgSMYPCEq/GtB52yro2ePamFqu8oRL4k8744jO7LsbL7bSjXq/mPLnBkBV1+W/afVXll4MVYhnCXUdyANA8gtTnjWJV0dpQY+QyCKWfQ0n5qQuyarMwtJpQVX7jDlDAud4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGznJz9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGznJz9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1EF57C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 06:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715667743;
	bh=zrc8ufR/Tr5SXHuzjcpRAu93i/0ggpcXbAGAR6uDc4Y=;
	h=To:Subject:From:Date:From;
	b=oGznJz9XXDhuRDZ+GvPOF7BsbmPJga/q06ocG548K6Dbps/5Y+RvtryKVuGyvlioX
	 96cmxeKm4LMWW7kVVWkHPN0J0zzzUInPwN6hfZ+BK5fyKQLOUHIZKqQKDx5+9quN/2
	 uHZyHA+MIjYgEfkwv6DZOmDXF6UH2T3a4tIOKimEvS9GZvEKNJQxxnSH7I0Mw3u+93
	 LbrSIyuyvCcb+E8df2557Fk2itvIQqeIF9rZZMxVc0TNcZdW2PqhY0usFCGiWF1SDd
	 8N+H2O9UEc/qbif09RTF08SHsvdVAYYmt1iOX/tNTxWeI1gj4WkXOKJKxee+/qngdk
	 /cdOgs7JwZcVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE045C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 06:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171566774287.16526.4423352874941656770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c42763eb61649b9b3d335e8e27cb826660979edd267f7b7902bfc67849fdb76
Date: Tue, 14 May 2024 06:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715667742
