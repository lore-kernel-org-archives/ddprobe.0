Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A04211A14
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775617534; cv=none; b=K+JveWw0iEUUmLT6KE6mCrgpTYLSTAACxXQ6M6iM2xYfhawJbkqaBBp0ec/GWVdlaNQrNH1YA+OI0Ksj81PloCmYUhoizlWl7TPPWo+Bo7CrwpgTmn0uf3ai7iwSlYastC+gn7+qfc/i6/6TjmNMi9YPZACupjjWf5Mpjx4PALE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775617534; c=relaxed/simple;
	bh=Oic7NlThFzFzbJPCtwiHoMNh5e93K7hh6VFVpBt8JaY=;
	h=To:Subject:From:Message-Id:Date; b=tiKBm8QVZIVKXe4dlLubxfENaldSen+Nc43VC68B00YECdweBaOBeUXzMDa/H0vUBCNs3gADivhmhe8ZdlZCwhCz6a15H3UisNbQhkTB7iw/c+kQIiNJ0gnCFDdVK2B1MCYAYezsJDtizjpof/zgc7E2Y1mEahnpuT1jh8/2tlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYwVFczj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYwVFczj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D7E8C116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775617534;
	bh=Oic7NlThFzFzbJPCtwiHoMNh5e93K7hh6VFVpBt8JaY=;
	h=To:Subject:From:Date:From;
	b=CYwVFczjLWKI390QpoPK2DreN4mBZjOsYsdEjWMooTCNVNYgV6GVGlUkm6pVxNh25
	 DsJxy4udvU7wJuv+7eFVL556vkUxNTa8gwBIrO7m8z+RK3khmxC4MmxSC8RGdGVh8p
	 eimUCW4eBdHa+5VijGTRtX359/oOqoJmCSR1WX0cTd5l/g90nEziYzPZbX4Aj+JcUM
	 n9WqdorW90ytnled4BigClMFuFGCVQNL/gJmSEmFLuYc/b8bwwV21uxxjf/KMFDYfD
	 hWaRcFLjZ7fOzVOoeYkVo16jjRI3zAkF5WP3OD17qSez9J+yLF874vgB73QrAdqKDE
	 bQPxy2r/QxgQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBCB4105D999
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561753385.1653.2835746361909274777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7b4dc455bfda98fb810b197780732c5a79a9c92e0b29ebff25cfc0baac9ccc
Date: Wed, 08 Apr 2026 03:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775617533
