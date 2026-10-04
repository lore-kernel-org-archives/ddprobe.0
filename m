Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492D0230264
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791122434; cv=none; b=ZfFgIphMyd5Po4Gab3hgWWCg9ZBympw6cDcrOrkYPJIKsYLveoS9Sz/RrfS8lNZx1x7I8IyCkqm9cSfMqmY5mL8rJqxqJIknD3Hc0qOnn0qYx3eXI5Ax57zF/e47Adf9nB94YklAg2ogNw8WyE2QaeOu5vd8xe/As/BNxM/Dsu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791122434; c=relaxed/simple;
	bh=buWXEdJ7jxIsxfx1NvcUFKx5IVkPVQSahmSbcFScV4Q=;
	h=To:Subject:From:Message-Id:Date; b=VyxajqQjUDtKa2gH3ahdMx6htKl/JjDa19zO0QmssW5tkHcX1GtnWMxSJOzAaQ5Yx9muJKjvi6xiWr4V5QZE2okud58+EF3Gov3EwLoYl6gWzfPDo1tO5edOrNb24Vc6pZtexsPz8M+vpcrWaf/UGZPbXXL5gXV5tozZUFmh1xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kytSgslh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kytSgslh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2AAC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791122433;
	bh=buWXEdJ7jxIsxfx1NvcUFKx5IVkPVQSahmSbcFScV4Q=;
	h=To:Subject:From:Date:From;
	b=kytSgslh08eUIc90xUD8SyVHOcaOelzhRCRPElu7/P6N2ThfVls5fWeb4ZcPKFrLx
	 zfnZ7BYU8GmWY1J8oTJuh8iiLXfo6W+GuZSbEj8agh0ktDxWnSIXUljdZz6PrtSLlt
	 UKk8xnbl+b9VODuTr/MQTEpnoqRSOVYxT9enWvTKGfYlz+OaILAbnWmWy2XQb05lTs
	 ZXDIzUk1LtSc7d0qGpxfxche8qyaKZyp04oxtr0fV1FRlqBFt6cK+6xahCG/x9G2Yx
	 V3etnynINzoz91AsS/OpltYVoQYgygx/td10hImhcoiBbEKmyQpcisOXD8VR7T5VuN
	 avsB1djK3/AGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC262CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112243368.23775.18122496121490657448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ecec8ed01eea9ee6f88a90c3111b69ed30bc526f6bb8dbdfc597f8090309253
Date: Sun, 04 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791122433
