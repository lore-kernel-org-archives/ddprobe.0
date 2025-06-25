Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5E137160
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750833594; cv=none; b=Tq+tusAxiUOmATkzAZG2F09wTARafMIC3lPAbgKExSle9QPm3Z3/B0SQmR1wn0WhD08R2N1TBFgkXLwHnp6ofjGL03unFQj4kYMVdcszSQq20q5SqADX8TdjEWLjWifx+IQ6+7LhPsenyIKA00vyHi99ONccL9YA05oKOLSeztQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750833594; c=relaxed/simple;
	bh=VhuI7TRVCEXQe2mQcZKdMIGl5W1b0KUL028HENhH6z4=;
	h=To:Subject:From:Message-Id:Date; b=p1ht8DeT/AYgfqPZhTOV95gxaPK3QjnLBuwQSir4NW14hNMwJVqjGFuz4zuvsMBLRho8REqA8tllqhfVkJaPZs+JA8FEFiUpt+f/fmphpNOu4hk4GF3pe7D4WiXrSSZl1w+qcnEV5r0psjEGhoJOaFDWPl68jdeyn4HjUgksnmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1bYHZk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1bYHZk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2600C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750833593;
	bh=VhuI7TRVCEXQe2mQcZKdMIGl5W1b0KUL028HENhH6z4=;
	h=To:Subject:From:Date:From;
	b=E1bYHZk7cR/34JEadLxnC4EGjRPt9lUbNmOdPc8KxxTuwm70BsY8bJhQPYP/xx1uY
	 KKjHdHPjpjCyrRtDRjKvW60Iqb8hreZJNpTJZTanbmkEavpUMJdKZLPFj41fE8KqsO
	 35SCLGi2qHTv92W439MhCSaV57ccddDwY0/3jgAFh7635EKnHjUH6hjM+wZ6UQBITa
	 84zAm0t3JjYNyQgLSv/RHdzumZoLfG2GZgpj3icqMCOKGz5mCPY69ahSmb5arIz4sY
	 h1oAmBORzCjl8MddkwYpGzodMDZBjj2C7P+o0PzmlC3dqAIlbB9outAMLB2nxkOqIR
	 cr+k6bki4XGaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02FC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175083359357.24030.6265422412028542232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325df43ba9ee65c454a50c624d85cbed49d66c3c896fe3462a7db997596fcdd7
Date: Wed, 25 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750833593
