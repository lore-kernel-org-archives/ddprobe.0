Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB7E426EAD
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785420635; cv=none; b=imk7qLg8tiG7ZraWB4TCtmDL6Pr/SMTw97tcsnERTjKg2psignj3A5OyUROxeTo1mBW8VPBWW4Dz/NFjLWplfxXJ6YXqBlamBiIW/KpkkpzfWI3TWKgyJTzkpJbz5/qw+Nz+m429SGI9ebjZMfCqyh4gBYeQdP6O07Eh0ogaAOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785420635; c=relaxed/simple;
	bh=iZjKQw2QKrV2JD+WpqX2kkD8ByNMby+dejCkNZpHSDM=;
	h=To:Subject:From:Message-Id:Date; b=A0Ye5gue0wZHH/YauKg4WG/WxA/COhXhw/DzzlduTKpzSdBfX/7zSdYPUC/cY5yzS+sf6YN+yXYXOhNH0wIHDYEHq2QXkypijU/KFW/5yoCz2BWJZDYge2o4CK0JyCScPPZM76G6XphY9KDARxgmL8ButoxIjTl4wIVrEUfVn14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fISDV0Or; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fISDV0Or"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD077C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785420633;
	bh=iZjKQw2QKrV2JD+WpqX2kkD8ByNMby+dejCkNZpHSDM=;
	h=To:Subject:From:Date:From;
	b=fISDV0OrsguVAh/cYkPnWX09oN4mi/NLCsuMxCRCMbdtoKDXJiyAmCngjK7NFkBfp
	 OdHIlEqMaAUfK80oa8j3SjnUQCjzRTktqYXJYCluBgyrZV7GlrTdXp6YZJboyQibCt
	 4ENXX0qHrLBg6oynY3KL83OQNV0ndSc0JLq+yXzPMqX7DBxw+/1PqEGd25Tunptk4B
	 GrTJFqjZztLs8civcmKZy4gKAavNzgLzPaTfx14dLY61wxQlcCYhKdOYqoEaFUg1+o
	 kViyGlGsUXJE2GF/aQBqfY6JuMTm730yKDI73ubSfT9OW1vLg5IXRrlj058v+OsAhE
	 qohDBmSfbfYtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA61CC55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542063368.2069.1210794572447504201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7218a1d0f89ab4edef4fc9354e96e6bd1c90652ef7f656e76043a2bbe1f925d
Date: Thu, 30 Jul 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785420633
