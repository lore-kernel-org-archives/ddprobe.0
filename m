Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EDA5370D43
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772556294; cv=none; b=AK0ESrJHyvxDYZYUQLr8E1nquJdwKk9Mf9V+IPcQYMTxwmWuFrgoBu8EloDc8bAc87hoNUvs7X4kQEhWW7UivI/jnxF7t7oR1cdDPO3c2s8E2EFxWYrrvTOnMklqVWcleie8ont6SgipmeqrYx6WSn9it6KQCHV4wwVih+6Tqws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772556294; c=relaxed/simple;
	bh=eWWVgr2jnt7BQ66Xabu0NUdnMLj+uxVBiSJBvvy9CII=;
	h=To:Subject:From:Message-Id:Date; b=G8XqiingHRVhfTMpkyLS0J+SkgRarNU3Xqm9NJC19c56jIrW5CGH7nChNYRUTgvkNoeVSoOVOPBeu8XpWHHr2HB0+zIzk3SmEDI/Asu8dDYPhvteFNsUXScj17rQJBY7rFjYFG/uRVQEdItb1qVTkDMN6drgcCQ218bxSvusl7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZTxNEDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZTxNEDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CE0C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772556293;
	bh=eWWVgr2jnt7BQ66Xabu0NUdnMLj+uxVBiSJBvvy9CII=;
	h=To:Subject:From:Date:From;
	b=rZTxNEDICrJDmarRqq6eprMzzyqcpCuCX0FP9fO9Dnhmp/WRbX6y/gFNp9BJt7+8Q
	 qfR3hApOXoD3gb3WlQLET0tOK0ps+dCFp6n4ipe+NXgunfU7PnaGHtX5p065VUg3V7
	 T4yEkDS/oNkxT6Oe2HaHBcePSwQy8X8AGybTNZ5TJvDzeXm6IiYBGYKiq2ihZA4n1r
	 lsYP3d10oFPa7EKAxlmJxXVd6644UciCxUotQeyAwO+sK4+1GUe8D6V54y63quUr6D
	 pt+hKfOD/zo+XBBPn27NYfmlFWGud82wR7xcJ/2abCicNzPhz2vaXD2eOvdwHx432L
	 uy96qfW7DkrxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9659DEDA698
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255629360.4191.11348957960329188178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2549cbe69fb3fc5e8909910a8937b8d88d34afd5b5e761e12c7a8ab068a3ec
Date: Tue, 03 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772556293
