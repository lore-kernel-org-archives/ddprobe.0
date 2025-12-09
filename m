Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C33225788
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765239773; cv=none; b=O7XQj1hNuI5L8IAghaftyIcs/KytX3Xb7vVmQfwg443JVc4m3J9DSFia+8BksJNBqR//28YFxm9u+wBNrALsnQd65j0mLU9ItDK9Hlz5zsGohhJq0slDF1OhqhGtXGX/KnZvBgQblND/3mfwMOl0oacZAsx21Z8lSq0oHCbJ058=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765239773; c=relaxed/simple;
	bh=kfovjAcUBD19840ak6Oz9oxPjZsWmpz6peMx8HNbyS0=;
	h=To:Subject:From:Message-Id:Date; b=p4kuNxHVYHH3VoC3LpiSYeiygY1CfmJqVMp1fw3D7IdT9HHn/05A8FYwCd/LoAjucM+XUaz4djuRqj5O4BOKJZUTsWM3dZpdqkjf/FPKTAjA5lj3tuzVd24jTeDG6ig7U/wHC8n2QQofRonZouW5Jj+j1jUtaiZjzAduFfknyEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQbDB6lp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQbDB6lp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D4EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765239773;
	bh=kfovjAcUBD19840ak6Oz9oxPjZsWmpz6peMx8HNbyS0=;
	h=To:Subject:From:Date:From;
	b=EQbDB6lpQbFGf7EewcGQsBn/tXtY+N2APz/MnEIw7vExAfp+wnqLL/xb7/+ISgRZZ
	 MP0azS1xGdvwMvs4WLF9sGVtEY1f3ZMLZRU2Jlaw6gWX6ZhgHzJr3vt59wzADBkGJ2
	 LpQ6OM7B5VgGT8EbDMgEHcr7ZhT90+whpP0MIC0tr072LrHQlsgr+/oA+XMo+hfcq4
	 m9rkclI2ffZsxLEBzViDmqIvEY1F9sACcj+n4pE4LMZFnsdXMZGRgdESN7BHZKX8nc
	 mDG5y0XijZBDJYplWB8T6s7FpQ9mNjj8DqlW6sBZVsnzPFTU/M6MuYLpqzJgeDe/WE
	 bJHhl4HM1hD2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9092AD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523977358.26557.6001506635444823212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7fde8c64ef7e33ae5169b66ae8b77aaa6fc8ebfc8e58685dd2dbf6c94e267b
Date: Tue, 09 Dec 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765239773
