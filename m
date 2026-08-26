Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48819351C02
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787732434; cv=none; b=uPzoUjVa0vT8FfzOsBIAGx1GmzBnUJOyEl2MWPJOhkTLyo9Pyr4lZ2TTlO+Zsu9KF0XcvimeU3aO9NW/jKy8rTBBcziCQaJ1ctO3IxGf3elu/bnCMVvFE+ZfnruNOQCelzVPbMS35Dt8lg+Iq05SQLJ1fmiPrun6ncMDse1mdns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787732434; c=relaxed/simple;
	bh=FRp9bRXq0u4hswlCtVJQUp03U5sdriFjL+jQiNjQL18=;
	h=To:Subject:From:Message-Id:Date; b=VvbSVV7XGFL6fGsMMuD6xEYI2g8fWITaOkzP2u7upFwpTypQPX3aTamAJJ/DC+NOQfGDmKYusn73yZkXL0RLRFtgbpjyEukHUCIo/N06sQ5oO5RDuXvZou1XmfhvtipG5zVui60e+9TkoFIs7I552KIV36s0WcYvyi44eYxQQLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVs/LIXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVs/LIXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECD5C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787732433;
	bh=FRp9bRXq0u4hswlCtVJQUp03U5sdriFjL+jQiNjQL18=;
	h=To:Subject:From:Date:From;
	b=HVs/LIXSQM5/vlMHoWEpGUWifsSqLTdtwcb9B4+LQX5mV/7YuR6OmnilbWeucGy2W
	 6rcAnehwm1adiHnZjBNHiNTGX3QGw7y+JHPhrZ0QajMUWbv6U6XQ74yyOc/BvABZl1
	 5VeFS7OgKhnO53nZ1hWXzsY/9XEzO3YHQiU+4rXjoUrqc4e4jASnQCn7ARCpdp3/V9
	 gTtBqH11sKfp75/QgQ135d6NpRvPNaS6UXyVWIVlcLKw/9HJrH0LQJ6TChwvN1EeWz
	 oYy5Zc47c9GyAe94nZwhYsbehO5wDybYvVvgcyiVW47l1QthR7riXP8vQwEdAJlKz8
	 sLmSucrFQhiLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC42C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178773243368.13196.12644649803545695321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb56badc0cb88d690851533cc2ac56cbc7baf541bb6f4f5409f0dbdc69a554ec
Date: Wed, 26 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787732433
