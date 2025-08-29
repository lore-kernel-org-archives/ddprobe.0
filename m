Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172A726F445
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756460394; cv=none; b=IveufVolgh+0V7yilwt35f1Z6esQI33k1RrTkkC27tQZFT9SkGhKN3WSXCLX8b2weSG9C1LrDhKparzLm46dorEGrgYs5J6sg78qKF385KbwT5OzAfR26b+KL9JnSFRGBjRQhaxGspkGpG1ysjtvxdJeMZbeCaHWr51UNQNUUa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756460394; c=relaxed/simple;
	bh=fzinQf4rhArJxhJo60gPSC0CoZIXUQu640yFM4DNedk=;
	h=To:Subject:From:Message-Id:Date; b=q0kUDnHlu9PWvpAaAqvQwW9FG09j4dfvZ4uXmiOOMxwCp55mw2ov5VkUgtylG0D++2e9L/uqDd3/nfc18X+sm9SVlzyIuiAdalizLqrYU2BZxmuyX+Fnq5vJCePMfKBqC4sJROzbtD/ukovl5wNtUqeiYLq5o+2LNWpt2bFceg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9dAf+jY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9dAf+jY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E44C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756460393;
	bh=fzinQf4rhArJxhJo60gPSC0CoZIXUQu640yFM4DNedk=;
	h=To:Subject:From:Date:From;
	b=s9dAf+jYjLrjupIW5LFrmsHKGOphXhPd4wVa9I6X10RtfTdkKR10hUFTscUkLkiOB
	 jv4vUSCRzRgVxJuBDKqnPR1OoWwOMQybPKQXYdwc+1dBq87hApQW68PhxTQi9uI28N
	 DqRwVfN52uKbLd4lK9cHa1W6mMVCrYQdxZ9k81wf20nErR+nTqmEFGddOAAa4/VOzx
	 7GQ3mMGdsFqc4wT5lyt9DG7GyeUo00uP+dtY+Xg31dm37tSAQtPyex/9F/ZGSTkFCI
	 1ufW+Yuaj9iaJcJ51RTsFlVOmHWymyZfh39QNs9CEm2qa6jFm4ypzxFC3Z8P5WslMI
	 jqoSGiyFgBbNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F489CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646039357.6353.3739494498318824513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c14dcb7fd4047215cbd29e791c7bdef60f19d4700e8d511b5342a7f9ebec553
Date: Fri, 29 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756460393
