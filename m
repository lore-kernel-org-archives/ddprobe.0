Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445BD10E0
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733573754; cv=none; b=SEceALRhQFR8xfCtcA89ubyT3sxy+9/D/3NpDfLFgyJN5QE1QHLoI1K3FLOuYqyIAucO4N3SFlagy61cf8vZDkY453SGX0qTDilDUlxvrQY4OKepV6AOZ/M4cjf/ZSHSsP9wKJpJMBSPUezf0WV1qT4GbmV8ZsSUrtMAvCqoMi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733573754; c=relaxed/simple;
	bh=TOv/t7+x7N/4FbAjYeTrNWEZYgHZTbDJJqJa8xzGK2w=;
	h=To:Subject:From:Message-Id:Date; b=ATOm9FPGfzEou8jpQM7DHRT5uxTSm3Qra2+xu1F5OmZzmAlGVMbanVx7GeSuxb14mY9Zn3G4NytxhJNUSRauXwYZeMGtHzW/4YXdZKysy3XS6ErIQT6PJIWYAGSPsg21enhxZQTvsDqv9cXwj1r7FjK1A/5zEqD3mQbtYqzwL9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEsoXyHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEsoXyHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA3CC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733573753;
	bh=TOv/t7+x7N/4FbAjYeTrNWEZYgHZTbDJJqJa8xzGK2w=;
	h=To:Subject:From:Date:From;
	b=aEsoXyHn5squhj6uZju+HOzUp6DQH11Ony8vadq8at10L0m5N0bafaXhcw5ui2xaR
	 l96G8muNe8YzFzZQZ20pNXbENbT/iGUEpNtgYmZ7VIv3p0e9lRXk9aJYMwbAviYC6d
	 +qT2UpC30JNijAoqPjl9/ve2vJgV1ypDWqHmsmhGwHZLPVtEg6276ckHc+0NT/AqKU
	 8/z8Pt4TxdtOgsvlQypUmp7faBDf+82sbwC6r7CX6WdaXA0LyJBcUMCX35oGkqETkT
	 yoKG2M/+QbLOVpJaH6mqr5MWW5olg3BtZF3ALkiaR2SPSS7I7C2XFQNnueAvGEu4Hg
	 h7DxGs2fLTqCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BB8E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173357375363.23419.16626463684645323622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53895ed9f8e59c261f65bbf3c3cb9aef05fc52797b2a56ac43e68405f4bdbb41
Date: Sat, 07 Dec 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733573753
