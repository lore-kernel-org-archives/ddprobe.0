Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315C3308F32
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778403034; cv=none; b=doEZgifmOYkeNZkv2zH9ln3Wb7PnidzIBRnQ1Afm116ku6fQL/PlL6dmP/K9Fk3YXvZAtR9PcvorvKLvM+jZm0ceRzN34yj3kvoj69sxHJgzsnSElVL2Br+B3371JsvRVGEY3Wfogs50n0fpOG/4QiFTRb318RQc+XrKm/fOI8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778403034; c=relaxed/simple;
	bh=wNX00IkB1V3ZA0K5/3IIcjYp9uWlVYktSeX0ZdjXl7I=;
	h=To:Subject:From:Message-Id:Date; b=bqxgbFv7MU2wPkG/4fvkEDpY8IDXOwI8aYhYFFPayNGlClE1FjZoetj3k46jinn5iDHAPPol0rkgv7CgGq3uMd9tDA9BpXnfrEpojIv2r1F31BmrPRtKfbsLZf5Wd/eR5n6p65ijERlPZYV74zNcNdygnZ4DNn+eNGEvlU6wVoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHwKCFqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHwKCFqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B870BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778403033;
	bh=wNX00IkB1V3ZA0K5/3IIcjYp9uWlVYktSeX0ZdjXl7I=;
	h=To:Subject:From:Date:From;
	b=kHwKCFqsrerRQdSfaFGGMyZ+j0lz22Yv/O0skKtWP6vgRJzr7iZIeRl0KQftRumas
	 BVPbML9+rqCsYRctd6jc6n00vRXpO19mMblylIpZwYJPvF4AZJtMpe8W1FVDFqTZBB
	 gXqVQKlMr9dw3cNJ/sMWTGUu+CGpXO3siYrhW5nfF8xeILf9p8AIZkmtEIpr3Hb0cn
	 h9UuHFWo/D2TLkPJHWVupDAvMBIox7Eo3D+XU3NPUrQC99UaSKx4wLyp8+IM3RLh6z
	 1i9Zwu5Jvwu18H32TY/6sHhruLNkrpUCTKL2HndHhWCXs3hBD+7d7N5+qymbWNcxNk
	 dzgYqbhUEv7oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D1ECD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840303368.7226.9289476587505686227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab4c760c345cd19c4ab1c1edf16efe436aa98e3f0bfe8958d051a485e0bce6c
Date: Sun, 10 May 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778403033
