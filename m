Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B85D1F37C5
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756649995; cv=none; b=bIhuVe97CnptgbsKDiMSHJoUPL7hcIZJLxzKUELuKrvAMi1a+s5nSrPPtgJeIo59wVDBYmvGoW93B6TDSVkzSDTnl9qL/GOxCl+QrY54oBo7o8XseWipAR/zUNRq4wztqOCrj4C1FPnCHrk/8aBBLciNLoBVYJt9iM/0wlwEdUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756649995; c=relaxed/simple;
	bh=dt0oh3WYeSnT0mix8WaCuZtQqvNYlBDt1JaRhKgM1nA=;
	h=To:Subject:From:Message-Id:Date; b=Nbv4FAmxPhWdzUSNwg75diQV4dZxcLyOZbanq27mCJnihdwmu4itRGlm048FFeutz5708mnObvt+W1poR1GINJv8dWOpPfH8GT4Tq6gMwvE0BG6qWYvujD2Pu7OHNhAcGkLVLxURPRj+8Hvgktxml4y/TdZKO5RbHLqUn7d+k/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AN+Jcaa9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AN+Jcaa9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E12C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756649993;
	bh=dt0oh3WYeSnT0mix8WaCuZtQqvNYlBDt1JaRhKgM1nA=;
	h=To:Subject:From:Date:From;
	b=AN+Jcaa9PKb2AZQ7C8NnpPs9pB68rr35OAzxasvXLME7uCfyMhg4/R7QIflja7yDR
	 mDdk6IhT3wndEWQPJzW5pMH1VKHe+YMlEwD2yRM5FiDGxZEOM30nzkj+uqiYsjEZlp
	 UztmttdW3P34OJw7rrzCGUHWFMJyxhV7SzE5IUGjeI9f8GAC9ZlHTI7K2xxnTiMh6y
	 HfYFEMO1t5AYCYrGaf3mCKXYYfTjgG81PccU40PiU2wRdaakxo59qFjzt/io7xOv2U
	 Dnfly0mkljwrFzLiARvWq8HRxgeuWwclXSnOJUORXdItqJFmIDFjDl3+9ED7AEAK6W
	 dAh7o87GfWJZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91141CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664999357.12813.3191414412971742846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad264e418614755401de3853378fbbd0f842d87185a078db5de1fa6750ea52f
Date: Sun, 31 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756649993
