Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265C12C0323
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780538074; cv=none; b=uWwM3ZeMxqoBO49mZxQW8u7yXYzARy9UWdGgSCX8PvsfH1CoHl+945LyIJtEDSBCAXdfmeu1WN+D7/t3TaZsnHrBqMN9xdtU2dcnzMojjWbgkBMINluYT9fJp/OYmt0dHCHyc5avbJxiw9fYkQNDvwTL0GTOUfd7IMVAEOBR5D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780538074; c=relaxed/simple;
	bh=Rg4xf6vGeERc/wR868j8Gr/V/1D1R0oOEhHpbhCznzs=;
	h=To:Subject:From:Message-Id:Date; b=eYBSSe0eocfGeDw9Od/A1OEctImLwLoTiK+gf2cE0Ia9fLt2oFxKEepbvGyWfBMnTgutq38/ZGwHQg1sE5W8gG3JL5hrQ8h8Q8KKlOdkbPAGVvXbtXqxGF/WnK4ROKAa5Tky+RKf8rbjQFK4jnWjRux6bVzzF+ZM09zK7VuEUGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gx2VWvsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gx2VWvsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A20C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780538073;
	bh=Rg4xf6vGeERc/wR868j8Gr/V/1D1R0oOEhHpbhCznzs=;
	h=To:Subject:From:Date:From;
	b=gx2VWvsb+ewpZXVERF/A8o3OwjhvEgDGBu5QT3z5+Zqrq9ybtPzfp9GMBHQbrxLki
	 j3igTmjKHaMciSOWmSWhXeWVZtFBD/mDoVE46mc8WUO4s8fRlkQbPyYHilgPpIiIHX
	 pWZTeUEjtcgyASxHXPnW1YNuyxUxPLvJ2Nk8X1bSmlUtcrMmJuU6B8Wk6Svz9dwkb8
	 svV8WLIlcBjck8p5vhn03+5rjU24lXdXmSMsveMBqS92mEXvySkGW7XJOadNd0HzXI
	 IZEiSz3Zye87h0Ob0sGYx+j4hrjYgfDgk5eNPvJoDURxtvhwN+IcJBI1mmaRiCCzRF
	 L+KeuwG4MRAcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AF3CD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053807368.8773.15984730788539521234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815c27c2e5fd9e7c7038be727afbccb6288b64e145f2e5c42c300f8fafa6097f
Date: Thu, 04 Jun 2026 01:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780538073
