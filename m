Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57EE634FF74
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780494874; cv=none; b=TB2LFzLdXwMxAY1AJ7CAZQR+HFfT05Ljuo0QQCI/ledsChHlvWlxM7R+Shti0MKgxWS9U3Kg1j6fMgZMIz6ty9q5OZKQ0FvIV0zSn+eS5f0stWPKYTnldx4wiLak9Q+hFwxykIQbJrIxc4bMd2+W031zYmbtmHYNSskzuK2BOwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780494874; c=relaxed/simple;
	bh=4LMfIPhUYEXJWf66H2lS0ncIigCUjPCfUXAnHepMzQ0=;
	h=To:Subject:From:Message-Id:Date; b=lLnENwYLbLTgar0ZqkvF5KlZjSV7IQCZJVkZhOej9501+ONobtHdaQXSivhLlcU0vTvRemZQjq2D3MAOKQXmb24E5OSY6SlmoIlzJRroQEU0sIzLaMAcwKFoAzYCJzQgF7E6sdAq7s4+Pa7RJcN06y4lBOaPp3WNGkMvjerNWdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oe65ineQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oe65ineQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7674C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780494873;
	bh=4LMfIPhUYEXJWf66H2lS0ncIigCUjPCfUXAnHepMzQ0=;
	h=To:Subject:From:Date:From;
	b=Oe65ineQPByo0nq7ec6y8I2Cd+MvLCAtyKjqtYv8KtuekUA5tH8+T+HUchZMOjzbJ
	 yDd8MzLkZu4NU3vR5pJLrW2Hi7O9lAQ9WMDZkUhd9GXCkbMxC1ni1C8Wim9mevg3+M
	 8xXXOhMAd9IRgUsHm3a3ctVNJMf0kpBwMe7uoNt/TP1BRsGoypn06UdA2yt6HduYgu
	 nejcaCJtNaa1yBrpZaDVYKjRmHU957nOCCRSDVs9XsNwZfaIwexhHbyVHo9gcBzgMs
	 Z3oqOQbntN0CrHJV/K9ZCUkZLktPpyz8tA5q30rrAwgm/pX98JEeJdNrgYNVLX3Sx0
	 xzRLvPBDkw/ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2CCCD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 13:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049487370.14494.1720370158264875895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81dad186d83d4692ddbef23ffd12c795c021b4ad0d76b0daf48c9614e2bb40b2
Date: Wed, 03 Jun 2026 13:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780494873
