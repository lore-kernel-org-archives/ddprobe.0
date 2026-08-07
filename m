Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DDC2D2397
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786144834; cv=none; b=TFhVoF4Erko3Z+BOezI9gBlm7fO9xRoRraXTGc5n6kFbAG3qKNh4aQFao26yeiWWA7P/nTfGn5dJHIEo0ReiCM4y1zzmm9vcRnlLdjz7YkpcdRO0kAeQYErZL2jG6UIXcyxMHKTo2Vy0m5hCu1FpXG4AqqdGu1OIBZtinovZdWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786144834; c=relaxed/simple;
	bh=UqJrjRdgDNo+/AyBjlNbCc/jC8nMPDPrZrYTBRyG/gk=;
	h=To:Subject:From:Message-Id:Date; b=sZkIJ5LSbcSq7IyWQ6shNKnZ7w5JaPycYHoj8ofHmy75Vjk2l0jFsuvMbXdIeM4OJcavmV7GlqZcZfo6IacHULSgRWHlcO2/GmYiKXCYObxWjWUiS/FudM96d79scdTpCoHt93GhwvKjzmakAVS9EYCWXTPtTfjDB0TrpU0uV/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtJcps2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtJcps2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D547FC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786144833;
	bh=UqJrjRdgDNo+/AyBjlNbCc/jC8nMPDPrZrYTBRyG/gk=;
	h=To:Subject:From:Date:From;
	b=qtJcps2ojg/Whd23VbutndH1emUBXcfCDgvglg5NSQ72yrL6Yi4MI0Gwzqk1D1etJ
	 L6fUdIOizRMoDTRgBglYVmq9nPGPCxM1WVhLH5jAuBLxWoCR+QLEh91T6xUZS33kht
	 Qj7Y0khr9zuvpKPI3ndlcU2ppDbp9QfGjNZxTAeC85czWFDvsdoEfvRI6d0JMzsRrb
	 MYR+ZW2cdlwxIHBQuRbAl3xhoE1qZCa0KfQZ5l5VqOMhhVZvIl4Aa1mOusB6/l73RJ
	 W5qvdkIS5pIeTAj2xocifsZ9YH9DeKg2co5wVPZ6j+atx2sStzKvOZO2MHj5Z5Q87K
	 86A3X8qQRCiMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B99C5AD05
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614483369.1517.13913583040227739758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5014fbaeadb88a126de87a89266c9c869ff8e872a73507c34399e2338193db5b
Date: Fri, 07 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786144833
