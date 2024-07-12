Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF6A16E882
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 12:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720787303; cv=none; b=bFMjEMI+H2ijEPsqHt62GTYwvVRk3Zib0WPmmJvxwz1k4orwILk03+hlXhZTqOs/ib2DjoVmrQoJU/Jn555XIHnIQ6MZEmjjHhIHFydv6I6ltSdjtMivaJODlC+icU0FYhbeTpsbx3Da7Hiap4VSZHYFTgBAPXgttuimNXRpBEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720787303; c=relaxed/simple;
	bh=byMS2/6yr9tue53CR5MKlyh4O8gwSkSk5cXs7SyXBiM=;
	h=To:Subject:From:Message-Id:Date; b=cvrIDwRrine7wYsvDpUEw6CG4Z7H96RvYwtsoQ4C/lE6ZHg+JHh3H211WIeZoUPJAVnC2BqCuutut9RZdjTmtmENuQxH6J1RnY9E1VVZBin0+KE5R6ygSioYoV/YiIFOutegXjl33wK9GSp7ujfu4QorYaWt6aibn6lhvMdNpVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuZIt/LX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuZIt/LX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06696C4AF07
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 12:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720787303;
	bh=byMS2/6yr9tue53CR5MKlyh4O8gwSkSk5cXs7SyXBiM=;
	h=To:Subject:From:Date:From;
	b=YuZIt/LX5tkCG/T1EVdEeuZwl6S7LMi+YXd8UeHA0t4N/BCd8+OwffFErUJ9Wf10Q
	 PZRf/K6eTNp16iNbU418rnR4/5/lSC2UKGwLSafTZIcZ7KpyIhrJoFdTVQZISolOZh
	 hZGXPfIUyg+ZjK9W5yH7Gk6yj0UB4fIyH/k1zwk9fVq8oH1aLtB4+cS9FIDq4iFmET
	 KkW9y0wpWwRcG+7jByjaL3uUXgctDiEQRTOrm2DYbaVW81uUsIH4TB6lDKuNgBaEz0
	 qXuOVnZjJXsWA8y0DgLfdXSIDYhn5k1mrrbCRfaX2i/NBtol7U+fLcJPRyXgw23/av
	 v84xcoFTKCokA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E53D9C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 12:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172078730292.12987.15871452691699720077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ddd279b089eeeb3fc03a13d1d442f0442dbc1bfb72fecc101605d352f12e056
Date: Fri, 12 Jul 2024 12:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720787302
