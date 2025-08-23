Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386651E4A4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755991794; cv=none; b=Oar0XQ/DlQxi+Ph5GqXGn5Jn2J5PovywzsAWaML2TMOGpIgP+cWZuidrZOSRJFLVKhfpfwYfFO/Wu7BuziX50bDnYhMs5DRb5R3s9vMs5Se9miDzXz6nhF08ljkXukLwoQeHdAZJ0aWWoPq1pXLzJkd4YT48Gynn4JFBo7ONMgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755991794; c=relaxed/simple;
	bh=tSGqR8KmgvDW4ukwbHgAHoVilyCodK1KQdr7HioZDSM=;
	h=To:Subject:From:Message-Id:Date; b=oSGPdEylu01sVCjscRDz0yDWVgXFHMF6RS75tlOTEwq+h7dOHbL50WSDxuT/TmeJ8wNS3K8J0eeykRSf93eoVuwFAG7Oa4wIe9oftBpp0hNF4YAO7KE7iZ05p5N0X+m2O1agLaGlCrLw/Gv7Qtao+tf8Lr9QqVMb88l0qkGujbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqEgV8IH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqEgV8IH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3575C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755991793;
	bh=tSGqR8KmgvDW4ukwbHgAHoVilyCodK1KQdr7HioZDSM=;
	h=To:Subject:From:Date:From;
	b=cqEgV8IHV/EPU3HG+g8liUQmzHYT/ir4hkoHDQ9HnORR4qsw5yjPfq377eMehkmCA
	 SCJSChCWwK8cGN5IIP39zspoPv6QpXDuoVhuPMrcFC6aePfYItaf9LYaNQS7u7yXnh
	 059t4MP/QYIon560KMhKdZo7VJj4qrxAho5tLpC956T0XmvT3SqWUA5vg8YzC+hvaj
	 likuG92eGRdJtvlAYMUsizOq+CTY2UbrRIZ9o78TkUrdQhxaNAncZ1JuSO15WlfZLH
	 iWkpThjGJNZbZrqmP/jHVWJK/CXjSVCR5E0XFgwIdQjKfyEoo5wB6k7eCBSpQNy+yK
	 kldGLBm20M2xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91576CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175599179357.30714.3360343392348382760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77e2dafa4c307ad4150af6bb5fca3a3779c97b54e991ec41553b57f86e91d8a
Date: Sat, 23 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755991793
