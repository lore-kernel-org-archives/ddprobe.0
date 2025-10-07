Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AE11E489
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759825794; cv=none; b=MicWRiMYC/7oHrUb0SQqUSgaJs4wh3qLLfTGfgsj9jnOaYJqnbA1ELq5cN0Uko0OZvwFUDu+jZEDi0jC1sdr2Juq+LrYzhRcv1TIYXyNnMOXLxjUP4niHuKgugFP4mgUo2x7IB959gfdgQaI7ih4HadQZiATK5K+06OSDoAzS/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759825794; c=relaxed/simple;
	bh=89xkHWPRGXqkKk1qpHVDMnBjmEWChjD/czjOelYHSAQ=;
	h=To:Subject:From:Message-Id:Date; b=Mb78Yh62i4mksJSSTbWMBJEoIU25my7xKTi0rnhR+3Psd6CvHvTp+tIfpPJT12Uf0Ni6QsZV6ZcSFG52ZOj/j72Z4rX8ko+mOY5HTNL59AozIHWJU6gKAmye+HHOt9/EGjAROvguihjUk2ULRI6g946P3i7lNxgD65RVHwj/kjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmDzLfnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmDzLfnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F453C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759825793;
	bh=89xkHWPRGXqkKk1qpHVDMnBjmEWChjD/czjOelYHSAQ=;
	h=To:Subject:From:Date:From;
	b=DmDzLfnp/R96BbRWAi0LfiBD7HQhwjx/IhQ/gFHmbZR78mseg6BOuU2o8Cz2awcJA
	 6XenVZJK06jfQ/LBZLPOqL6gz1yIUgh9z4wuyUKS+ysdgVbERbqrIIEsWSvG5jmaY8
	 bO3NAzGaayd2htw5ddohfBVfiqqIdIfdqWgy62Pap0kgqRhFOuYee8zNtsSpqdzUrr
	 W7qt/iaoDEDlgJqbypT7EGcSprxTAg6tR0BHzsJR0TrfxF65oThBL3BtHQg4PDyvqi
	 iax/k2mNHOse7XkgQWjoXeDzW16RCsMOZuKVU4MginyhYQFFvy6GyI1MYTiA7qjela
	 /mhmhWgtQxXOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905A7CCD184
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982579358.27650.13126920212913764228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3cc9d5ffe9ba4044531e43a56359ad3891567f08efea057cf8385e724a22705
Date: Tue, 07 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759825793
