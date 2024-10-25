Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4FAFC0E
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729816554; cv=none; b=cD3kxTiKUDAn5Ykhhw4u07xQmStwbggoP9T8AOC+Y9IAQRxbdYDsTRR/q0qlCMBOoVtM1vhLa7FUj6+3qdCtFe43dAYThC/kwK5VYsGqWhmpx7YQbiqS7aPF85b/2EZvGGe988rGOAKp/igK0xwnN7P2pg1qpOdrDmR/wyVLVLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729816554; c=relaxed/simple;
	bh=BtsRXD7Lad0HhFOjgIN/Ia6dpWab18MpAjDSOzvxh3E=;
	h=To:Subject:From:Message-Id:Date; b=e1kcL7C0bV2kzB5Qg+v5/jjvBD57IhzLMrm9cFIE1zrFaQZWa8EilbzEP3/jlHbL070b+UQL3YLNrWFF+AP37l1vFmKXTV1AakmEjsyhzAcJO7Oahdu2MvkmlDnAOoiRTQhs2Jr8CXhsroaTcbBJsbRsRrUnfmYUPkmPXA4tnEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=indCnfYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="indCnfYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA623C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729816553;
	bh=BtsRXD7Lad0HhFOjgIN/Ia6dpWab18MpAjDSOzvxh3E=;
	h=To:Subject:From:Date:From;
	b=indCnfYKk4fp9hDKf06h4F2HSRe5NYklNJRkAxaVcknQRCfolc8lTOowx3c92+Xk2
	 QPtsludyEpTwkJb10YgpWEFUUvQP9Y17FU+JzYpze1qvrmAQLJg/Uc9pn7/4x3Q/dc
	 5yHHueDLwfC0nh5Y6Co/gld/ija+/oZuwBwewCAokW5roZrl9jh65NytngHtTSCsiF
	 eCiizMixPWKcdG1yZzHMWGyOlRImlDInHhuB0qpk90QOrMKMq7h2+2DIKsrmLSRvMI
	 QHl5FAkO5StNmxDGDSgRXNZaZZ9SEwzZXcRyaVoK3DkZUWrm4GMYJUljhf7bt11Lfk
	 +ZSEDydCa5D1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967F3D10399
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172981655360.11238.16472663657132771390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a01759e45942f2335789d3b7e449831bc12c169bcc6409a801194c44c3c77894
Date: Fri, 25 Oct 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729816553
