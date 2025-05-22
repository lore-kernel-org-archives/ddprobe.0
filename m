Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3768028C2DE
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747926594; cv=none; b=Jwbcv1OWEjDKngSxfHuesakLIJGh2YrThXzAmahw7xF0Wub8nyqJ+px9ufybwmTwdhaOBrRT/AtcUKHLbQrMCOyPK9bqaM8v/Z+UFls3AJ0yKxFcgtKKZ1jDy4uQju+rS/+9ILvCfuTh0PXgb1rXR83AY6+szI8U5PNdOJnTasI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747926594; c=relaxed/simple;
	bh=3y+y0URIIcS4xWpqMWeT3NAHFWI74PPa+FX3zBu9OBg=;
	h=To:Subject:From:Message-Id:Date; b=eJPccGFok+rcVn8jZPc52WIPRIsm/ccXl1K0s9mkOR1GGLTwTISHxdTYzo4fctNUh4dMNm8FJgNyBWSjU6jeOHolbRyOw8TJmHQssziGY+LceWF979AnQ1VU3AOSJlOmMK4xp6EGch3psiuCidn/c565dqmvAMs18RlsRfjW9lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgEojQWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgEojQWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01D6C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747926593;
	bh=3y+y0URIIcS4xWpqMWeT3NAHFWI74PPa+FX3zBu9OBg=;
	h=To:Subject:From:Date:From;
	b=SgEojQWJ7/cAoAOO3IahJjodL2lQdFvNqHQF0VZAqgxCjoqs+d1Wq3SgWoHg5CICA
	 1J7Xr1y3qY2GzEun6v6bYx79E7AziCmWBX6KNbIz+LWOh29FfN2nkW79Db70OYYja/
	 N1YslfAI4NbsI+PViWjl5iXZm6tiprdcXUXlv2cFGdKtN2S6KVRYaCyv458jgcNlcj
	 m45sQ9yCAV1ywp8KFTnUGg0BiVPeKMq3hOEETF+Idrtlh2odATm79e2PADm98q0RMC
	 eQc94k0iNUM5heAUfir82jK0BzhCCLvFeHojCv+IgRVXLE3mmlJWBS0M2E0J9eB3NT
	 b8RSnseAF1HAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA8C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174792659358.30556.1391988972456978043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db008f4764ffc1f9e1f4680a0245fe3f07c75180597da7a77c20fb4e2e83294
Date: Thu, 22 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747926593
