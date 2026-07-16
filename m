Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523C23B2D0F
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784239114; cv=none; b=YJ/jx4bhIh/qfYVvi606WIbmMtNMQOGNwu+hafDLMXMlsYveFOamY80hEj8ReDJ3LJlRy+MONTQSmHt7zb8qeeABK6YvC0G6Tod9X/aytMoReaq1gNCuRBgBFopL+UVjlOIxu8K7MuXpqtHhLPSfob6WwTfvkp6QPH5CwTPwXX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784239114; c=relaxed/simple;
	bh=wwpDUTZpkep8j20GarcEYPqaRboCitXMHUMyWPTYuHA=;
	h=To:Subject:From:Message-Id:Date; b=FDgq6sl3by76o04Pf+lIrg4kAusE5GJwRtB2SOPC1EO41ETnUVNScJhnlGraPCYyvw0iIJ8/q88ANO25bHKfFsJZOiSKdMR2Tq5RFVHRaYA9TW32oEW+//kyfiHsazvQSsst/IftFOkO5P+tSSTXvjD43enfaAFvv/darXfAdUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndL67F/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndL67F/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D684CC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784239113;
	bh=wwpDUTZpkep8j20GarcEYPqaRboCitXMHUMyWPTYuHA=;
	h=To:Subject:From:Date:From;
	b=ndL67F/DjJ67cPLM0u+S+BU9mukLkHdsZjILTgzaPTCOtpWoPSMe8FK1QHNNi8sQy
	 NFlOvS9djD1G9WsNNZw2Nub3o0y0Rli2Kaus9m8xf2tkYrnVWPYbSyPSXFLY3ZM/xy
	 uVF/KKY73wXScU38MTAvNDJtkykVw159z+Tp5Wr3conwDyOFtjKlDaqVcFwnmmW4I4
	 4bPCvJHNQQdhlAjw1cqLk3KxsImH+YqizE9p6xeg3m+jIyOetfWMCLhizQaqgPS+w3
	 52iSfnS+yitBXgFWKU1HrmuaglHn4UkP7w7GULQeKTQ2CY+ccsfPWwBF7nJqcFfUVs
	 e2ERMHuh5IyEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCE1C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423911368.18652.15741722798000425677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e9caf8e2cf2e214368589ec93799ac92525fde7d94d6e2d602d134c9c3a59b
Date: Thu, 16 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784239113
