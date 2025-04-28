Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CEA15ECD7
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745876394; cv=none; b=ElF8WL48VfSJLU5K4JXyr7EvJqeim9QDJ9XRH1zb320iZcW3uzMzXokDBhoaX69lCKzJ/tJCUhK9jamWcdt7s4RmqFLgzNKD47gh5GSTgZcxNKVNRCPZqv8ZRHutkzQGBftHgitJZgXTtZOFNCc/S6dC/CELxmc+2jHy2sph4ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745876394; c=relaxed/simple;
	bh=QZ9Dy7fnBFF+MUgjNr4raWJbMSJObBpeBzf35ovYROE=;
	h=To:Subject:From:Message-Id:Date; b=G7gnQKSyb3Tg/fDpnVAClbIyKfEY240E9qEggyG/lXLfjmTchx8InpsrcQqUqV2o5p64IGIvxcS2HLhRZeRAoGsEHJlLobmcFwWzwi+Fu6pG2p6rnIRZsDN8zU8dVjsqBGqGZCSPrtTXztIvkTumRUg2gZ/dlqnxgETmgSQvCOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MS6tnlcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MS6tnlcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C455C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745876393;
	bh=QZ9Dy7fnBFF+MUgjNr4raWJbMSJObBpeBzf35ovYROE=;
	h=To:Subject:From:Date:From;
	b=MS6tnlcs9SPBIkKboo3UoCelrq3qX0rz+AdvKHkSW0CHIq62D/Qbzyp59VWb1y0ce
	 p/vNxQnF09fetbLN2Ts7wxB1fRi4D9lAvi79ysqgi5r4ma4AL/pbJMzm++X4Og+r7/
	 mKSMnOJEXSYHFhn43nqJQ2U9CNp4W/VW8pU/b0AM2dcnaiNBGqNaczoVJHSLKGZdBJ
	 yywgEZvtmEreqqPrmsC0EfXQtLDn4nt+pMrDE/0ImKNUkpagqTs1nKQUVKyGtXXDj8
	 2f1fM4z/PDg6LQ+jYtyC9Xb2TuvI8sRd6kz9sPcVstlmQd0pLX78Uu376gkvZ+d9a4
	 A5Q/6uJ/XzE2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F109C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587639357.10408.18116360951900344126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a1d53f28460b314eb5eec3941d5533ab8f3fa1d1dededed56cb579199d1f62
Date: Mon, 28 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745876393
