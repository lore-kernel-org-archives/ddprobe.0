Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0676517BA2
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768350834; cv=none; b=FIcUPhWHiIdP2QA4wXGzlqZfj8iD6rhpesSbuCUTnm+iH4NPgiQnP4/e7CtSH6cyx/2Cd5eH5tSPGKJK84pAoH+0PRtE1rNg3cl9FUm8AvuAvkfJWh9GAim4WaTlqKlqDjGqdNV+nLjyAVSM8+ycXqWQBfRiKHiEHhyoJ/p9X7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768350834; c=relaxed/simple;
	bh=VubZkDB4zFbloLSP3E4ZB/hK9Y2PC9VS6lq9kr224sw=;
	h=To:Subject:From:Message-Id:Date; b=m/EzBc2sthcfGvc5x+XrMYUbbxbL8Fj94UmiwVcHIQbkgw3X5oC16eT5Di9uEkKR7bL/YnBM+a7EBiTGn0onNm4v5q1Fmnlhi+XrbeQmDUBNT4yXeA/n3Ex6qXy7VBrSyptzGHzUHX/I3LcPM311J7s9DsJ4YsQ9j4EzOAwM53Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bb/+6/T8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bb/+6/T8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE5FC116C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768350833;
	bh=VubZkDB4zFbloLSP3E4ZB/hK9Y2PC9VS6lq9kr224sw=;
	h=To:Subject:From:Date:From;
	b=Bb/+6/T8OtvfMLqTcu5YaXER7cI6k10o3tKyQLB+1D28UV4/t8xpt4ryv/bFQdxKW
	 9T6z/yDzfT2XorE94+ywaLUANu0sTQ/Vc0wVhtfdTbtRBEWLFwQO8Eh+ftqED3B2QH
	 XY7c/Wu9iptrxSvI64/iP6upPlH45YHNiwyvQ9Sgj889OZAVv1J6tjcf871ICFCcG6
	 sdrAi8C0kY5gE6smR/836RZynw98FeMLn7tO8AXVqx376QWmWh7N5LOX3Xc81qsSsG
	 lqHOtfPmNrfSFYW6+UifW0+T1LjtWSFmnkz2ihmufec9hfOXnbQlm1jxuaBYBBSary
	 ct8pVRslmYdQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECACD30CF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835083357.23855.8320537133898963454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc2bffe1da49bdbd644962138deb42a156506afee165d8647592e2407867522
Date: Wed, 14 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768350833
