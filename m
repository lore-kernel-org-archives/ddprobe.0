Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F40F9C0
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773977693; cv=none; b=gIS5dAo6aXGCbDPJQAsFB3IoKF8hZOdUfB8PfmM5AcCyrGzWdpm56U/dgAwL36QQ2+EYD4X/B+CTg6vzAF+s7QzDkebRuIF+Uvao4XmRYrqdJRRcXngFveCLXsyvGOiy0Oy7B8sz9VVRnS4RMs4NyEASssmlyUdj/8lMmphdd5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773977693; c=relaxed/simple;
	bh=18iKNgxU6klFYbECU7z0xXz/pb0hbd0r8iglrw+0Cns=;
	h=To:Subject:From:Message-Id:Date; b=KaSgRMns6+CTJKmzZBhnrprMIM1L6Qn9MX9RYDrffB9pxEPUqPyd3tuXfJfDayQwU+Hr3EYIxkNz+2LzByZ+CNHLo3+sSpnIop0UtmnbECiYUF+07LOhHT7cDg25a6BODMn9wwjzdOAGIih3nbwW0eEBNC0sM3gBgpLPJHF3CCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ozj8IWTf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ozj8IWTf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CF8C19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773977693;
	bh=18iKNgxU6klFYbECU7z0xXz/pb0hbd0r8iglrw+0Cns=;
	h=To:Subject:From:Date:From;
	b=Ozj8IWTf5umnzUO5sKuiUbdPApGX1vlnKSg5tLhEpqOJ24VCnckYaePypIGWxpIQu
	 P8m9oUUvwNJzHZFjsnjWsMGXWwEEGOCAE0XtnWAgANmPFgAQ/Cj4NPcNeld9CyB6oR
	 wo+X1qOax+U5dcAPtSKTAoOCkb23FGdA4qCckQsKHEEtYDAq4deWyY06Yg8GQqYO8/
	 gL0y6Uho0fHZxR3GJo5IeFYWKxuCjHdwHYqj3+tOAIGg7aQS5ZDVKSDFXZC+6168wk
	 B06+Hrlxl35hmfMsf/TwRipgmQScLHl3dPr14q1u2V8uPI3oEN/5pTnvvk3TOYcxwu
	 UAxu9vXQ+519g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EA109316E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177397769358.14151.1098897884482316884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f4bafd44e010aee224c4b78256ea38fb5a30734d25a9d625f45a00190ece9e
Date: Fri, 20 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773977693
