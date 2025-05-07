Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A81E287511
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746647395; cv=none; b=g8PiPm1mfCNKE9vM4mrvKTnHk245cr9ube5E4DtCev68eWaZx+w349hvV4p7jCpGqVDEiqHemaP1wKjG4FAkbKvTpCKz0XCzbkhwLlwaKh/Vcsvd+xfENqNwAoV+3wAe8dRKDf6yyWN67ONwJAWDzUejFmJZBdBWu2S+2TOLpZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746647395; c=relaxed/simple;
	bh=/totqU6EB2iyQ6BVfzeR8laomOyn3jT2mW3IuXMX/58=;
	h=To:Subject:From:Message-Id:Date; b=KZ6/mEe3EjEgEsY16XpolMGK7ZPV3EZ4nmHc/Xr9kYS/Vm+wXiMGaKZ1My1UtZqq0mm7k6gJPwJrLG13TpRNV87rpWXM7hB0btrZDNY+2U1OwlZ+M9YiU2rxScVZPIN/B7hQoue86kDwoYEL1T85Uhi+sKHm1360aH//ZD3y2wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxGHW7wY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxGHW7wY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF74C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746647393;
	bh=/totqU6EB2iyQ6BVfzeR8laomOyn3jT2mW3IuXMX/58=;
	h=To:Subject:From:Date:From;
	b=WxGHW7wYK5r6n0bo24R5/DrTyslXSH+lM0BD9xNOm5NTVv1ceKcAJABX1H0PC4Faj
	 ooXSTDhOxdkhiqzxfLDSj7SbK+gIdQIuEolA+s8KxJ1Sdhk2xD6vGCxwKUN+MWB58K
	 GTFskY7g5fLL8CwYjIlzSaOx5tBBto6hiQ9p4ahfT+qhmSnD7VqKY8c9soDqhqaSrg
	 QzxPvQjASBINc1UMJKtdBJFkm0s1hFsMFXEwmaa67JPp5HTxFvo/T2M653TDxLAzEn
	 PgYhKKb6A2HtuhKZeMj6GElDgXTUFsz/SMCMI/uTq3nn+x4PaEUx5sea2CLoRNsTzo
	 lHUBEecV/6TVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B5C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664739357.11738.12865195905997249755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac037b58bfa7d243f9f65d80c7d4cfd3cd9bbf6f03bb2fe42b45c667c614202
Date: Wed, 07 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746647393
