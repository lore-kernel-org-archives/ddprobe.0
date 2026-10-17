Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E27415B98
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792275034; cv=none; b=qU5RT+s4MII1JWKv5Kb6rzyj3sdvoxcKr9V3ztI8z6dPUYnWXtC1pIOy9Ht+ArSErKljjmIJ6CtgGhpW9qE+I+06sd4x2BGJJVm43YFUplJcL3MYmDnwPp9CjJcIdp2zBAYAQbRkmkDsXstlij3rbk84iXXDv0yorxvmkTmN3LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792275034; c=relaxed/simple;
	bh=TAeaw9MV5fNOjXiFQXO0jCjpZi9tfYsNr5JLQTqcMlg=;
	h=To:Subject:From:Message-Id:Date; b=sHel1UVfTaxZodTbFpE8HwFyu6m/N5lXhIjzkBn6kN6wQhAA2gbqbpuPIas71fccLPtudsO6Ti/cIIy4FBEGrOk0Akzhhx+vKD3q8zSKcqsPPtqrQ49WPNMm4TiIuGiAsrtiAmLMEaUSXG9PoggJs7CjIMHe052T7tV1oQqrGhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwm0twif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwm0twif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77A5C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792275033;
	bh=TAeaw9MV5fNOjXiFQXO0jCjpZi9tfYsNr5JLQTqcMlg=;
	h=To:Subject:From:Date:From;
	b=hwm0twifayRHHkenHya0SsgCb1vbsAPx3zvAC+5/aQOC09Koe8zowNk7J0Z47Dqox
	 57Fw6yQ76uUlM5rklpcqVzK0Uq/foU+5NjqMaQj8Gjlo4cHp3sL7EZ+cosJ76DbqQE
	 fr6tPSaE9MURhha702onE6KmPLqIarTsXb9Z9uh9lRZcxZqBH2TLxeT/9JnjHXeE9f
	 wwbKGIWPGyupgH+AJtxtABIzsI8CEoRYR8ULjSBgqgZhrsbOeU9Us/XZzrmvlY8pfz
	 HQabf3//hDQSISF61VxuX28hFVcaZxidTq9cQO2AApdskCVtqE5MPJA5niJygE1NG1
	 lZ5fOIfoWjtrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B497DCCF2CC
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227503370.22161.15323261786500864310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9472846c2e34c578eeed754e8085a9ecc4758d6bf5a621625137469641c65983
Date: Sat, 17 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792275033
