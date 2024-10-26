Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529A91465A0
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729986354; cv=none; b=iRqqizcmABHJPXP2wSvKVCviRaufk8R8wE+G3QUZqhGJqqmKT4/g7IcosYHUMNI1xga81VJbEz2fn/a/IhSXumH11FKCJY42sJugOkuAyGCZaLuN2OQO3jnKGE95N8B71OV8rVrLZVatkXiwCpDOQQgWJG0/YUxnrFiYYb1VQF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729986354; c=relaxed/simple;
	bh=9KBU/5T1gHTWQu5qzatWb7JDL8B/Db03Ght4qilu25g=;
	h=To:Subject:From:Message-Id:Date; b=UaeJ1VHms1z/wHRCDtAR/tHFSSjKEJWEH/dmwPFTtRKFE6qZhFAgzlZ/2xSuAzEyLTueEEIJgH9pJNlHww5aPAbinOrpW5X+SHxcs3yUJpl4nsJ813MazyYtn4+qs50Q1GTkHj13oE5o8dXXHOzV9Ze1hKbycwGMwYZqW7LVcyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcDCYAgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcDCYAgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8226C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729986353;
	bh=9KBU/5T1gHTWQu5qzatWb7JDL8B/Db03Ght4qilu25g=;
	h=To:Subject:From:Date:From;
	b=VcDCYAgRZJ82/v2GhjQZyED2bvLVtzGANXg7emYFtsg8D6NXlCMofV/1Nx5bmVbAP
	 3KpelNioXgHVc9yqoY9VpY3fdi5chh6zRq3gIkxt7yNYsmpJZzS81WgMVJcOqxtPaC
	 wRlRMdtwz5ERi58zxQXc7CQH/BiWCW2a4qqWuEKMWdhN1kR5P9kJY+bIZgeSvo5Z8J
	 S9MVhN+TRqBO6gvdzLh7R0/AibXPT4/ey1OeVyHlvJuwxGS/s4g0ysx3zh1/fL3MHa
	 eGEO9hLpKqTANJNDXxkgPT8RBSyx0BFD4/dA9YMVOLICHNBMLDtRz1JJPjMN1RKduY
	 ytB7y0bh9JSUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A50BAD10C07
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172998635363.9711.3377139074106683677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31c8507941df0427fea95f2b0f32347fc84fe8a248ca9e7c05fda7e0614878c
Date: Sat, 26 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729986353
