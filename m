Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1477A881E
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 00:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730334955; cv=none; b=ZltpyYxOzpOrjkT3ALMHiv8D7bBNnlhaWPKOSr3xJNRzj6bIeT+6FITSYX5EH2InnIGsMj1VIbnUbXWZunQHSA20LZyR7FE71bDP+++bibaQPqdpuO8cAblbxOCn7nNFUaNDd6DmGEi6xkQkx2jNGA293VokQHzGrUBuYz07uUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730334955; c=relaxed/simple;
	bh=xVEkVnbfEQVZKbkSHS+/OTsECnuVyTlLaAQIwAsS6Bg=;
	h=To:Subject:From:Message-Id:Date; b=AJifPnxfWWZJex3y5pMRjHBaggHCxgJQZ26jyE6AMK3KI8/LcQPFawRpYFxttZNKmdDUrP/cutIIthyulW+5hFyRCQbJeWWn5GOLprx8ZAKi3bSHxue33icbf1ghVYzRUONmhSl+CmWI/QbCflYIvPaFYH2QSqBdMRmTOH1ecOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pr0FxQAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pr0FxQAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD715C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730334954;
	bh=xVEkVnbfEQVZKbkSHS+/OTsECnuVyTlLaAQIwAsS6Bg=;
	h=To:Subject:From:Date:From;
	b=Pr0FxQAAnZzNHqdfKq9hxEtm2JFb6iJpthP8IvAktAMqZY81Fx0vv108v3EQbGzpb
	 BfrQbnz7inPUGyVXP3VQzoGXyVjWMr5wXP7fdmB7kndzWNctjU8iHMAwNBbufWp+Xi
	 t/w9RHzSi+QsHOEMkL18kaX1TNBf6koF+fNuGBMmlvH4ThwXNbaX7Yz0MnG6LLcAfg
	 mN6QMuL0PtA4K0gk7hJfRR1X/kxVoWw2RpWlV5I3kBb1CUFwxUUpTrgT6NCQU8eZ8N
	 Sisy60s3aPQMyllz1qro4hllTB58a6JuFzQfz+Cs0GIXImsx62el98qtlxeOiG4vtQ
	 SuSRo3H3FiWjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3CCD6B6B4
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173033495360.2853.12451075308935171462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79bf37da86cd85fa8b10376ee836df6313c2e0c9334273bd44fe81dc4ac66ac4
Date: Thu, 31 Oct 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730334953
