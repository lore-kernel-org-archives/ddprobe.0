Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2594C97
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752892194; cv=none; b=PR5HvXt+AIKcFATjt7MiwU0S2hMcPL3g6ppZkGB1ZvE45Of3QUuSZUNDc7AwDlanhpiZQqzyS0hM//8GohwuTrwv1VMIUd4rpVbWeXEkANP7DzPlWzqPN5kTwSQnLLhzFzsY9eoCwuUILmo2cL3b131xZo6aNAx7fgmJVelAhos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752892194; c=relaxed/simple;
	bh=0CfOHhW/rzdBkBqmae/dabe6KEPYmvrYvxRIPYolHj4=;
	h=To:Subject:From:Message-Id:Date; b=NiGN4eiJ1/9F+sc5+m7XdFBFhBE5xlLWtSxMDfqD5/VlGpS4aV4ecb7Wypvq4yyV0UfIuOjeKrzKmWezXjqju5+LWLIrCxhh6RJIR/tde4obsjfxWgadTyPIoPSxQimjc4dGHloVgefhFSd82hN4qB6M7/IT07a5RPKy+3U5Wbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OeYYV+Ic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeYYV+Ic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A302AC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752892193;
	bh=0CfOHhW/rzdBkBqmae/dabe6KEPYmvrYvxRIPYolHj4=;
	h=To:Subject:From:Date:From;
	b=OeYYV+IcSpcqRyHsG7Fl4sKDxCDkHMAo7Xlbxs5YFhV3w4KsUdWg+088Y28p/0xFF
	 oWWj7CPTVGeAxzyAe2qREVPgkeitgf67DT1vUcRs4hOt+qtqxGQcCxqzMJ0gYEjZrG
	 /KMbIcceNAk5mDgozRyxY2YN9SYJ7X20sHiFtAubEzZX9mvGgnP0BqHA6/GPyDo/1u
	 OoevLeQMMpZfgfGKtdLbU7eJL9QEIVtNjklEsoa45g7RU57OESQmkekCeV90dOIG4B
	 MnnqmU5f/x2pFj0bZYZzbEmJdP98Cscjz5fGdbBp/BzB2sribwplFEC20FxqMPUEPJ
	 HdKq9wSY+GNaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC6C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289219357.32200.16751406004858545823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac3580f33b6650097ca5b9af7f2d42ca55e2a3fa6f5a4e4601fc4a3ec6fcf0d
Date: Sat, 19 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752892193
