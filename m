Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16288CA4B
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743501594; cv=none; b=sQtVeMW+0IZg7KEwikB7aW1xqoNTJAnWsr+aD2LXOhvNz02IooM4TFB5sC2nkQj100g5xPaGWyShmPvbyAjJOq1xpDFgPWJDWZ5mA0JTyHMZJe0mdTcifJ0pIf1dmZ9zikKe+Xk54hPmQsUVNVjNSK9trgkMi1/Ca0pSTgUr1BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743501594; c=relaxed/simple;
	bh=jH2OvKldvCIR+ArpnaklTPkxGsGXxQgllOVtDqSmFyk=;
	h=To:Subject:From:Message-Id:Date; b=rq/yeShrmIAey0Ec3fRHzGFHwDrtQdZgMCGMLSWcGLMqNVdhm4burOho2RWAbMyPFSJWGU5DxZeCBUn/Pvv3s2V6+lC9j0abopuXzveS3KIYJJ6zRUYsHMhOIxh6HlKy7GYDfkXC/c9V6cs2gN0T8VUHf/fx4qfkVRLsg3X8fk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWsarlsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWsarlsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B55C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743501593;
	bh=jH2OvKldvCIR+ArpnaklTPkxGsGXxQgllOVtDqSmFyk=;
	h=To:Subject:From:Date:From;
	b=NWsarlsYcEorFJ09vO8eiZQ6tvtt+fXGyeX7WI+yKNIgBPc6GL6i8TcqiXvO6Q5lE
	 P6hS9Dr1JEQr4Xo3lw9jpzcpPxV0jyN9DdsFzTG6uPMfcUz/H4CU/QKdeqcfvN8GbC
	 uimqTT1hus5KdtAIu/MCk+f26PUZ7HekwLWaIbjFO7OGh0NmzPTHTktb5Mg+AN4DZv
	 6gJwkqgV9Qc2veDOQqcIFS7EoIhAkNhiH1LTFGuiRws5r1t9pKPUfxThFR3PnU+4fG
	 a7QjCjyxSzvFuoRSXXqXkTfilpEqTp19m+GTFL2nbupvnjqzCxcRS5o8Ewv3sY1T3h
	 N1oAeAV+1fNxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92153C36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174350159359.8921.5516509475000284390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b081ea7a4a08c50e85c75e6d896d4f25a175584cdeae64519fe911525a94c1
Date: Tue, 01 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743501593
