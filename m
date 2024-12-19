Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390D0208A7
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734605154; cv=none; b=r8lgB/KlZB7v+uiizY8dPjfoO79pa9e2DRjgUPLgZx+/Jgm8+u/st271TQy+wG2pLgma7iI4TxQePYkrDZDH8MKG6756x7No5dvhcW3P49vmHQrMZt4TygCx04fQi5dPCdRl1unk2QryVeMRn/6yJYYU0Q9064TLtTrMTdSxzG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734605154; c=relaxed/simple;
	bh=iOYmfZtZI7jw9YF3gaLsemazX3AHfQ2A2JbhUriwpDY=;
	h=To:Subject:From:Message-Id:Date; b=TiUUZaYKHCGX5SklCJirwvuvIFwg+zxIzeAddXGN8jAdJHF+tK64vvVVDz8WDGV7YtOswPPdTE3d9SMxyGggauigrMQHj9phhOQ58vrYgnCDbul2tpcd3hyBXazJnW47RKydruZGWU6YDXWm6AaL+2/mSZV/X+ImlsGYJYth6+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPTPJOnx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPTPJOnx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3560C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734605153;
	bh=iOYmfZtZI7jw9YF3gaLsemazX3AHfQ2A2JbhUriwpDY=;
	h=To:Subject:From:Date:From;
	b=CPTPJOnxzmrAMDsx8qP6AvlMRHJwYcuGQ1mDC85Xm+J8I+6oOugMmagitpSH0wnMU
	 aHjEr8L7K+ejGtC684Skz1uqDePj4LLjchcSQwHEjp+nB1xCPmHOaI4ymZ0fRjCiM8
	 h7PBdT65P/HSFfdYmHg4WfhULC8c5v3krjlBvoKhYwngu960Zl+GHoZOAxjldHwou4
	 kasu+uMADWtMbgwJOR+epR4aniolTe4KxMaKSquFzQeula2Cmgmzv5pj1ffaf7X2KA
	 fz+ULhoAMBVphxhiVDb4rpB0umJmd7jRIbbHvg7ZLCL0yrqYxRVpPmKSJi9u2eI3SB
	 URIOFqTTuYeEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FEAE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173460515361.12556.14354037970186683085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afeabd07cab4a16eca2aa215ae0a874bb1c497ecb30660fc3cd30f8c6c6fd119
Date: Thu, 19 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734605153
