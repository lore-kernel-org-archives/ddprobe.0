Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229EA30F958
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767642234; cv=none; b=hwUUoFkY74/2q4LhNBipsY3O66UeESvb3O+lRXv62eriAoXV5nl3lx5aLavHENiR6rQq304CjK0NG+P+B35Cnr+YTK0MAIz1UoMa2ztsmoavfxO6rH6C+lYs9YD463uGxktGMeDTTeck9kwb0/gt29GPQikrKq7h+LSE2YFLokM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767642234; c=relaxed/simple;
	bh=4+Bt7CKvCkykaYYJxvnszl938CmOudBN4adEhpopqag=;
	h=To:Subject:From:Message-Id:Date; b=kTG79ii7oWTTDSQBEnS1bE+X+rjqy9bIgATqg7w22aRn9vIunl7R65r2flJdPD1tkdx7/ggQqDyB12FCHPlVqZZljcc0aGnUjW3b403sD2ofblwPDY0izthS0T5/7QOXBW8TJSP3Yw0te65QLusQNG00Wi/2KOW78CrHiXJizRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGLQd8Pu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGLQd8Pu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13B2C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767642233;
	bh=4+Bt7CKvCkykaYYJxvnszl938CmOudBN4adEhpopqag=;
	h=To:Subject:From:Date:From;
	b=EGLQd8Pu91FHrrsi41LxGYSnzyjstWT/NQUCAZjrlBha2Mcgwc6tswBmt361uqyXq
	 FD3sLIx7+Ie+/6f5vYuJM4njXZlkS5KOV3wV0TZDYeQI0L9Tgj6J1mDJgOcbGW9pZj
	 iofRCA+5Qhen7wIk5buW1K/fMzjqdieObM0F+VGU8xioDtPOeRBpv/EzaaDMxp/Imm
	 TiXpzjzS6Sr9cpdBKJAQfsged7CcePlu5vAOnItxyG/Dq7jcqN/Y0Xhejy7+SEGu6A
	 NVfBGyc5ZPOscF1V0uEbd3x3c3EHnun863YIzqAExAoDMIf6uv6iLhOFdigS9vDl6G
	 KbWT335xeFxRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF0DC79FBE
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176764223357.26464.11030737352957958247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d48abee3661f87d03f43a49c9753b95f1a5909b4d7b487dc1b439cc1e11604
Date: Mon, 05 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767642233
