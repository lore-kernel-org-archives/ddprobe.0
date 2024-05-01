Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477451527AD
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 14:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714573943; cv=none; b=rVVgve/tAj/RXks+LixX7RSO4NyOhwbLWwF2ghNLlE6rr2M0qUsZdxhQAuY/Kt98+7/ueamDOs3hXaQcdJZyVtk7UbAsE+UzI5TnM6L1nq3SQOwLNCjiPYQB3gmMxgbe4y4vnU9nFiVU4usIKNa9uzNnLz732UxpPwRW0g9IJ6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714573943; c=relaxed/simple;
	bh=CwaeHSJTjpV6akm1xNNJR7Z5m96LtG4ecg64pQR8guA=;
	h=To:Subject:From:Message-Id:Date; b=OoLZ60v0W3364/9cF8JSKlNQOrgIHdlxH7maeWjzxFQNixp0rgyytDVVVce7FsrPnba1FPxBtAN9uL92SsPYUCCy7GwIyeZyVrynnu3DU6q0PnKmwePluTDdigT9VadFQQiQpfps6gA6YaVUNSlyPvRYvNvolpOngFx2U5hqaCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMKsqHKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMKsqHKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56D8C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714573942;
	bh=CwaeHSJTjpV6akm1xNNJR7Z5m96LtG4ecg64pQR8guA=;
	h=To:Subject:From:Date:From;
	b=aMKsqHKxNQlTMYrIyz2X/pOne2FUNmfwlBp3nB25mJOyVd8TsooUyQuKAG7iR63gN
	 z+HMHhZiTfB6zlE/DHt0h42Ym612KD4AG5WJwZNhrcSgrGJbBM6U6yEJzRdL/BuHRv
	 h6i9KPhR+7AuEPr1JTeAiejYLJyr6nJwaxzEygUjz48g/858xgmfyhVyr+HrX2b3oN
	 0XK+qkDveKMRsgUHVIV10YIWdcxFOyOdV0sdCeO8Zq9QM7epp6bsu050+pvSi5T4E+
	 7H5D6ennIaQFxUz4TE2DD/rfKklz43v0vmSq/B+1nU6RtMT2IMaRlQaHdmjn0oqDdF
	 Kl92YpK8oaRHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE0E3C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171457394276.29579.1898591944231324592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e16ea0be76e3c2aac8730131377387ca2512eb7a2f0641ece7cefdd8874561
Date: Wed, 01 May 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714573942
