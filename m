Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CB43B1BC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719214343; cv=none; b=hbhe/4LvLD5fjaAsi8HdnjaqPFdG5upuV7YR6gfs8WlzmZ10eRgkwhDqUe7uN9lKC69BRWcRI3bJzMbPXErkN6E4CwDu6vCq0rNveJQ5TqBSY+vU8VEsxcA8yQPvDAv810bUsQoe5vZQZvMg/nSggC/MY/8if67q0N7Hc3jeyS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719214343; c=relaxed/simple;
	bh=Wfy5/Mo8EKVsR7JgIs6lp7GonFZGTvNQJWjV9D2P69c=;
	h=To:Subject:From:Message-Id:Date; b=NYpyWzECaXXKdGV7BKV/LljSd1WhPdLDAYzIiTYHwsNciZANEof1cEJm6f3gX33VhmI2mOsQy+yUlONuRx7OW0Z502yRPi/0U33BXHChF2/24TkmHOYM3yjoQqVKPMUNU6ir63AOiJ20kDiBxC+vvBXnrgSh0wGA8r3+Ua8vi8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtlugyg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtlugyg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5F4C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719214342;
	bh=Wfy5/Mo8EKVsR7JgIs6lp7GonFZGTvNQJWjV9D2P69c=;
	h=To:Subject:From:Date:From;
	b=rtlugyg7616fmzzh9m4OALFlBhu0Ct7VKmJKhHfvfNWKdVXsEorbGklrvEInyuBFl
	 slviDx/vbWUFTvdT5QdzvIPUf+7+aqGjW/GJpHNYqbhHMxDXtVRP9tAPRyUH1T4Ha1
	 tUx6HX547UG5g1RKSI1IMW9mkZW8M8vBSwgBgGfxMOKdkqPNMU8NqX7r8g40G5KiSR
	 RbvNXiecRkB34LK8BhbhR8/Iy2Gb1BPYkIXTsX2j1mCV620cAlXBKYilAJjTJx2Jql
	 cZ2vRpX016YLLebOBr95dsjnmyvsJeIvTC2qHWu6DqYo+GRGHP4XAQwy+qweayyc9J
	 Y+fFqqD7npjeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3080C2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171921434278.15262.8648644749306786947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f75a3adc728a0bc5347443e8ce173ecb79f432181671c1ae7a58863162e6e3b
Date: Mon, 24 Jun 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719214342
