Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A30224D6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721624154; cv=none; b=DxjD3TNToj61acEAP30L4D5czvCc0nVyR3FOI4uwrtuPfy8aE3IojZ8J4R/87DAbNzX8jKk/kCbGsQ7AnqPUZIYPuwyOrIPhPx0hWmUK7P3gs8ZLaXitcM+xgAuYhkgcwJa/O5rx24v10P2iuwGy0c44yz2NoPuRBotxT2Gq+j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721624154; c=relaxed/simple;
	bh=NeHgxY67T0rZf3GpRy1pmxk92Qg4a/Ye6Zs9MBXSLSQ=;
	h=To:Subject:From:Message-Id:Date; b=Oco87IqbfK/iooEoyuFvd+8Kwk+olPbwsPMM52a5ubRvLef6utIr1i5hcn1fvVN/MEiayDwXCpUuZ/yzaU8iJxvAy/tzxWZUZbrFu/ETmRF2x4TqY5WzYwDEK2aM1nEiauETVTkn3M3Xo/Nll11XE9IC/gp/CYlUx+jOFoY+0zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upepmJ3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upepmJ3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B388DC4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721624153;
	bh=NeHgxY67T0rZf3GpRy1pmxk92Qg4a/Ye6Zs9MBXSLSQ=;
	h=To:Subject:From:Date:From;
	b=upepmJ3aA4Yh2LDuXMwS8trqKhU9Ke1xe7iqgV+hIcZABQhhD8Q4f6Bk8NYY/E50a
	 TD/sdCRiEuTRQiTjdFGlM0bb5zIk9qksVPcZKrnzvBTFiI6Eu/8Rd/zH2J7m/9Ys8y
	 GXHoTSCM/rSkryiKlOxvm//8DZVGA5WS4tTG5X6KvKdfIgVJ32jeGAhVbNQxRHb88L
	 DJ2f3S5zv79fc5GCQUQjt4T9xIzbTtXE69zzZlyr+Cs0dlQlTXZtno6lY7VWOYE32b
	 M0RiExXbnpm6GpbcEpBwTywJCxBHT7dBbWPBIAPpefIlLfqWobU3BFtzFWcRu3zCaf
	 TmceE9haNDDKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973E0C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172162415361.8231.8265453084700744043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e749d51b7411dec5c7a20c5585261b226c823c5c657ecc7a806369c0e449ae
Date: Mon, 22 Jul 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721624153
