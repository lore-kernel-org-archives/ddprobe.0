Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299E320B0F
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728442554; cv=none; b=e459HKW7lG+3N0o3eX4+touuTkgU0OtDx2/Ri/eH8hampsf5ws3yGTBN1tkrM+A8VCg7ssnIlsECP9y3iWRSWR1EhkEykvohejp7gPWcNfyUULxavGk5AXKiMSH5iK0wV9tTH2YvWhl1rw2oXcerBm5OE/I7FHtSg84MFHjOK0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728442554; c=relaxed/simple;
	bh=CtrdrdYcd1dHPWxQlQ8hUr4W0HAnwhMbgcBxImZRZi4=;
	h=To:Subject:From:Message-Id:Date; b=UjE/J4bEY7WpPSGBhsi6L26LAx1OuC+l2JAjNQ8NGMB+BB702uho+U6vsPhgXwSi3rblHrG8mwtgQ4owTFpinkWPA5XkcjFAQkjJ5PiOkVVhrvAiUt5wv+ln6ab1uCOIg13whhAFF/7MUKcCQhOruPZ788+qpjMy0dGkt+CmI0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bl5zGrKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bl5zGrKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2E6C4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728442553;
	bh=CtrdrdYcd1dHPWxQlQ8hUr4W0HAnwhMbgcBxImZRZi4=;
	h=To:Subject:From:Date:From;
	b=bl5zGrKPs33Db6kKsnqDLvplasSnKyKIp947F+AcfEHxvsnNhB29dKSLI1FzAq6Ft
	 bRbzqFGPfpFOQlKn4p1g8GkEdixla0yF1WOcd1/vGPj+WezDqnNQRW5ND+v2rpYF2l
	 Zmygaj0+5e3mzd6FtO5ao+KY1z8Eot2OtyyLEt9TzUEPmOvAV2/JjE0veN6zzrnf/b
	 gf76Sv1yatU+xNzti6/eddwVH8nzsFSxX4QA+z2BX/iY5PWhGoVPEe2FqBDGVN6+v4
	 TC3S/xshA8W2KPHNAFk3lraC0iwNMRovoH6GOvNb+U0dTOcq/C7MPv02ArLOI8GmTB
	 Qvf5D2wSIKugA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974BBCF0433
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172844255360.27605.7052743893796624488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef9f18c71f48e9693af2396173c9feb68d55cbb70960af36a5ae6ec014b296d
Date: Wed, 09 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728442553
