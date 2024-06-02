Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C66175A5
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 03:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717300523; cv=none; b=Cd4+B1A7MXseSJF32qNXExyPb5eQh79GiboYvlkCIq2i7S2XklTCOObOHzGBzD7AYvpTekhQxyfK81ryFE6BsuQCGVV1Ut7aIyPlBzZnVqlQ9fM7d1CKTl1fdrtsgSIlxjGaeQ9q5AbU98hYTapc/MX4cc/OmC7DSEgnJZzklmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717300523; c=relaxed/simple;
	bh=O8v3WZYy8VvU9QPwnQvBxfIiQ0uH5ILxXJ3SuMIHKk8=;
	h=To:Subject:From:Message-Id:Date; b=ifIQLAOGjiCcegbv1W64WSJPjhwmzYyfeJgRIDdeeWOsfxFB4X2hblwUfAxO45ZyVvu3Z8Nq9qJxeWamzIfjVK+oFAQT2g50DT7V0gmABVEjdIX5t9aeWV2SIrKUFWOP9xMHUA9P36U4sSaVu9WDLjpg0x2e3cROYYDJVyROFVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTVAsDO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTVAsDO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3BCC4AF07
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 03:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717300522;
	bh=O8v3WZYy8VvU9QPwnQvBxfIiQ0uH5ILxXJ3SuMIHKk8=;
	h=To:Subject:From:Date:From;
	b=fTVAsDO+3YxlIPdbDKrnHyyJ/WD6j0opwQS4kuEQoUCdFVUng5U/RLv8gBpaiksqg
	 LXaft8Fy0057cEK3soLRz5YaXviowTFlIh14ypA2Wtjzvu/WXuvubAAZMg/LpDQEnc
	 g9wt1QM15lPvJh6sifNoe8CoW3qIMXnFWWrAmZAkMBWUynYHWX3DErJMMCafFsrYYI
	 iIQgBxecStcgFm/vGiqOB8N8PSgs6vYueIvJT44ECEfrtPDEm+N5Uao9J+QcZBU012
	 uUL8W6KLQa8DZ6Wmj539xivh8IeUvam5cHf0ae4Pl5lvg4RpQ14w+4wSmVXNpFE+TY
	 7Ssn15lxQkb+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C86C6C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 03:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171730052278.3383.14953756695524355624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3f59632d3b773c54220343e80a6f74d2ccdd1c02ef13264094fc067b76ee91
Date: Sun, 02 Jun 2024 03:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717300522
