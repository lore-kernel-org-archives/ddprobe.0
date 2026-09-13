Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB9A39F18F
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789296634; cv=none; b=V4J5lUDIjdOUy6PZDJRqyE1ynCMk6qzzJ0QXIJMEgGfRINM5Nm5Ctq/Q9Vv7l2t69GTLsvHA0PLnfuQX+YkYt4ME/slY+bNcyqBLxQl+LbgCepzQG3pxNm/jwHy8SrMJ7PCkMKNYzYXDeeiTvS3MsN66+7u4XVfwhcw5pldDcd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789296634; c=relaxed/simple;
	bh=X4JLtCiiO8jvYrkl1NesvCs7QCb5nkv3cSlGkBoCLdY=;
	h=To:Subject:From:Message-Id:Date; b=exxTSnGvTV6UcjqLBugg68SV/iCg6qTkZBNtcNqoAPqy0kdlkyLApYN2fN7eynlmhUZsyIgor5MYFYcK9KCa0TfyoZza0R1jYUYkz3Fi+lYad66+lMHItjbsCyoy9D/Rj67oyx7RMkNIKb9ga1bHjWwz2mynook8YD9oxpO7yKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8Kds0hd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8Kds0hd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E8CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789296633;
	bh=X4JLtCiiO8jvYrkl1NesvCs7QCb5nkv3cSlGkBoCLdY=;
	h=To:Subject:From:Date:From;
	b=M8Kds0hd4fx+gsc81yPyetyTRhgVXZyEixZpT577/YNiZFnHqOyrUfyURW5KhjuZJ
	 Smh3MnW4D/U4aRwdKpL6TdhmjWw2IkyEagOpRsE+gt0MQX1nnIs+TaDw5/xSzGoBsx
	 MxrJ98Xx07aFjR2bt5iXC/QDwO8NdFaXF8hsJPRW/M+Zl+cMQUSA7/oAMM8k8UJ7gN
	 kljdzbThwdycAsKA3PNE7ZHHZuKUKEN8kTwXE04SGl5OeYYsefZNPoyNVw+SHaX0Ge
	 wvLPbT6l6uMLjYu7Qae5uhLZv7AY+VFnu9tMYDhiwwW/1+plLrrnuuJnWb79hMdPYC
	 E1T+r/NMiNuXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2E2C88E5A
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929663368.17713.3938925180546233828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8089dbcc86cff138d7bcb38f38a86c66b7cd689d264e13cecc82c2b4ad69db6
Date: Sun, 13 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789296633
