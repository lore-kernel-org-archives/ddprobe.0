Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166CE7E9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735787154; cv=none; b=poL3ekWjuFGiMedTscX02GB4A5Hm/KOmD1kpcfAmUB7FNINE5MN29jM2CEIsg/lSZZ6TmF1JDr1O86VXixtXvitDhs0N6ciiRK5cBVPjo/+noxZMcFvRCctE6oQTux5I7DU920JM/d1phL0IDOxrqj3/JA4lIHKE4gtjzudJ0A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735787154; c=relaxed/simple;
	bh=AESOX+hcVOlMJsLnEtmoKsKpJE+a0zALkfkW+z4C7XA=;
	h=To:Subject:From:Message-Id:Date; b=kQuy6VLTdcIvQwptRXVlUMc0XKWTvtM8hKnrP8MHjfqiAH1P5JsFfsRu3xWucjwC1sHpKNJIo3H/4IHAv1JtnqnaZ7eY/3m4tCWSc+0PWCPaVr8T1vEKQqmNbR2g/kOZVG47+qjew6kv10X40W3Tjgm3Otc6mv1yDu9aamJlQKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHUhQmaa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHUhQmaa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5998C4CECE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735787153;
	bh=AESOX+hcVOlMJsLnEtmoKsKpJE+a0zALkfkW+z4C7XA=;
	h=To:Subject:From:Date:From;
	b=pHUhQmaa+4vgK788LJVmX+8r3+p4kBc9IbaKFcgKfd9LHRlnUaCH9T/IoluXsmbM0
	 E3fr42FjOf6WJRoO9w6TLwHCZHgIoIUXgsmdpcSG6yGJvsvxktnpqCkjeIROeipL7Q
	 AdOvaLOdf2P8AD+HacOUBgD5bN62iIrEZmaOQ3Au9SsiHsIK2UVK3JF6Ssp3XmMeJw
	 mX0x9xK4xFe/Er80DHNcQC88yNS7VLV/Cgf7yI8U4m/+kTzDfghQt0Paz7o5H9Mvjv
	 yzXAy1/6KyKXjm15jxAKoESoml0kWncDU2tEFoOd8ZP4BJqGwC6+WNxGEDktnRHOgT
	 HNYF4mARUJ/1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D1AE7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173578715358.13001.10840356004152545125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb9d67d804416ea69eee1a1c15ec404bf170f341d17896cd3ee8c840b62ef34
Date: Thu, 02 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735787153
