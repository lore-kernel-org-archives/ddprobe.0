Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F9D34D915
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771923894; cv=none; b=GpEmAdgJG2fjuWkiSn90Yyiou78b5Zt5vfA1v/vPI81YKg6IH8K37lJLJcaC1VD4LhQBvP7wHyrFQlreaXnOGCAql+5lj1OwJjXQe1pwS7bN8FisMkpi6YP8Tm2NPhwB35Zp4ZV1bI9m2lxYfcsUyPL2EdS1lmYxMKSoPd74bMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771923894; c=relaxed/simple;
	bh=CVYBjL+zi5qNlTr6bHh5Ot2uk16LF1U0C2u1wH8kQFs=;
	h=To:Subject:From:Message-Id:Date; b=GPvHYIXlLKbKQL93R5oHu9fggx5atuc7a9sA37PRrq3CegNMr6K3b5LudQ4zdQp6wPAHoWSW//kRsioQuVvdd02dtkwvwVMZsSQ40Mv9VfjNkkippx4QawBV+MeMG+fkIt0a/VrGtkKJ2tA3p7aRzf0t5p4xPmi8ODkMYmF73Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtCA5d1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtCA5d1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1731C19423
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771923893;
	bh=CVYBjL+zi5qNlTr6bHh5Ot2uk16LF1U0C2u1wH8kQFs=;
	h=To:Subject:From:Date:From;
	b=WtCA5d1lx2SXtLsdSDd3nV16sA7g3Z1uWSx5tAVi2u5Qi+RQimkfkNbN82xWs3lNj
	 mXDqBzYUMKv3MDBWRVpqbykj3v2SptHcUYmii7ydgadoHakpQW/BGFasr8G9aFzpLz
	 FK4TngIX3a5t6NXD9VGaia0IO/9wGPPPhLG3UiQW/9DbSZIAZkf7uyWVZVHsTEPCH4
	 74B/xTcGCfFVlGL/Sy8SJQI3Qq16M3y5wR4xX59wRTqU6MmYl3gfp1i1CuWSi43+pg
	 R4FFzHyka0hkW2oQ1GGNSwAxT0csrpZw7NydwI9RzvuwFxHRNz66RQZN6SeqjwxaFm
	 20ixfP3utz8Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F68EFB819
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192389358.28566.8132361254068545541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4140667aa85467fc8c5bfc203f86a7f6e02d05d8296281dc1bae35da3fed530
Date: Tue, 24 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771923893
