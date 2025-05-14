Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A0F2741A0
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747228194; cv=none; b=Ii83oMvKXSA+NLKUivBQf7Iid/nb48En8JJnOLhCsF5w6IMYzzCIxF2vgsu5lqPI7SBtRuh6CXFvCStitAiAh5X0jsdm5orpzVQwObucV056l9r4xtk/1uxrQJD9e/+6n74AxenbLEeBkkGX0OsXchE6imTUJpdDNPqPpPm+92k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747228194; c=relaxed/simple;
	bh=41QT5jwrdoaRnlzb6FUfMs8c5DWqyfH8EC+3lWjtGnw=;
	h=To:Subject:From:Message-Id:Date; b=ur5X8xItjXP8wEkXv1TVf8dCx4v8gjqF/8aGecaS6Z6kM4+tPSdheRViKuQqazdHwMEaqXVFY3NM+QT9drlEuB7rVQO4IRpohriICOZOxInV6kPwc7kGSeSRQg+229ERJTWMKUanEJ+lvNDGHTyfpwqxgJJcVue8ptTqFYb4zK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHG4dZPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHG4dZPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBA6C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747228193;
	bh=41QT5jwrdoaRnlzb6FUfMs8c5DWqyfH8EC+3lWjtGnw=;
	h=To:Subject:From:Date:From;
	b=uHG4dZPZRHXV9x0RP0ZBuvw+daSJz5pIL5E19opXkZYr6q3BgjKUkalUw5JxWEirt
	 tYImWvL4J+4aLCRJH7n+IdjO4/HK2CUHoNGpMjXPGa/sigzKL5e0Hf8ao5D1dZnKmf
	 tiCaHeyIeVVW9dkM8e2REraAPfY5VoIvziXs32ForK12S6ltI6K2ovA0PAVeh+9LkF
	 8cx/FZ5QatG++cUX9tHwXJ1h1PyCBtP4qH/Z3KDO63aftxwtrp/V+Mmu5Giiv1HxKz
	 r2+CKMa+FzihmeLOWsO62PAnJ5HEX1oozMcTkmDizFbIfebLl5/z76E1obo6PYVYXP
	 506uh/ZXejHMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90000C3ABCC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174722819357.5331.2545388380090910344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1478ffee163062c5d0ab6bc1ad9f62f6ee5e2cb7fe45d555218863af14f2a2f3
Date: Wed, 14 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747228193
