Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B247381E89
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790816434; cv=none; b=tIc4ghNR3dmo0t4SUVUlGyToFkNAaKLV339MeOQ1tguNwFKvbvI9MyVTZjZZ1Q9IXJn2S0Ze8Jm5QKPIszPK6S4D0m0aAC2K/p5LTIOO+B+pGH/rA47VxuFSxMg89mlul4Fm/wVzzKaN89Gi7CNnQizkXWx9ypm7S3s+OQZ2ksQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790816434; c=relaxed/simple;
	bh=JfN9Ja2bbnM/EMQ5DtITRh5s7m/6OCeyFQboCshoUGg=;
	h=To:Subject:From:Message-Id:Date; b=tBeNDZoD7tLLNh0p+Cs8gf7rlIIfFw+TwAu9GIS345FNH6sj1FMS18Bf+4jbLm1Ll/JneOolGg/ulLI1MQT4BpuoY1y253N+2ZlLMJKDL8iPNq505+DgTzPKs5+zLca7PiPtJqO0wQaOIU9bT5qKnRTeMjuR/q5Pj+8xTQg3T6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qN06Ut2G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qN06Ut2G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B5CC4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790816433;
	bh=JfN9Ja2bbnM/EMQ5DtITRh5s7m/6OCeyFQboCshoUGg=;
	h=To:Subject:From:Date:From;
	b=qN06Ut2GUNnflbYM2MLnRI+nw5AGyval5aQLpUsUflw8OL39u+nO4VbHIED33+Iv/
	 rs+LduSe4sfm1J26OwnYuK9lHIGflJBjLn93b+Mpi1FCWhe/JZd0aiDeJStLSEHKc+
	 x9KRPVQqG28CYmiglvsaZPcyuhUS2BDY1bepTRAMzJopP7zbxmCDH3mFbHkFQrawbF
	 RJcffCqfCjf1X4KBvqCOQmHOzFbQl3wx+CeJh7AuncOxB1umlm1+EWuESyRLM9m6rH
	 lbKdBCCltSlw7Ry1QBKa/K0Uzvgu9RmStPdxvzRsr+1BmTaCFQVbHd8u9J4k4qq7Pg
	 4BahkHGrAF5UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE5BCA5FC5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179081643369.20178.8375148648630357198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ddf776855547cd194aa20fe0686fde6c277364e27706be2a98e60c1dd84672
Date: Thu, 01 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790816433
