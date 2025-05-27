Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBF92DCC0C
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748311794; cv=none; b=PGLhinYM/gpa9dbyIjZIsskHyhX73am0csI6tRPOPE+wcbWciVebeQGw7OJqMvY0JdmdhuzmRepl4wlu0LfS9Nuid/DPnjTZRq9vVxx+US5iaNRtzUydQS4Sx5YyWqHKkowLhHV22hhNrYTFt41LnqzJR/VaEbjKFnuLDjwWQ/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748311794; c=relaxed/simple;
	bh=DiT373AwSef2XO0m9lyTr+sxaGv/4LSkDaWydPcZqyo=;
	h=To:Subject:From:Message-Id:Date; b=aM0JOjJAxpPQbV3nZYpczZMBeW+akPLJhSDj8uMJ+aOdNx/NqnBuM6K84yAxZ/Zi8B26oMMaVH7X7gI4SJ/kR0kRuDvzzBfGf+DuBmC1WahgTurDV159MGFIki3UCBQQKexqxnm5M3hddfcupNZIpdaIW2cCBCYPoJvku8uL750=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVbZafHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVbZafHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D03C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748311793;
	bh=DiT373AwSef2XO0m9lyTr+sxaGv/4LSkDaWydPcZqyo=;
	h=To:Subject:From:Date:From;
	b=LVbZafHgbizRxi14yRfM1wCHtmylq1lBdKSmuYBcK8wQtYyzeV3D56OQyPiUJVxCy
	 Cj0Zg1nx92vGZVhdjJAJCmroYI5okdc/Y/F0TWul3oeudvvB7KKWpEE/VIQGAMxRXh
	 5TAeZbOWXoRUwgRiPSYdhQhtS/TFZB08HvwCTGA4DYz82o6+MGjQbryo4FR9tJ8XKa
	 tpmcWiyiO1NsXehSXCvu97ECi+7j3VTwVApXtWuDn7aNq2Vu/aQ5z8PKThVVZR55ur
	 LIbxgnAJV0/yxAu92/oKOukj2oR2e5rZE7wJ8ZDhYlp8uKNLko0LOhk8C4Vr4i39Jb
	 CzMT1zqUpVXFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F63BC54FB3
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174831179358.14764.5735685985394168027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e8a918fddc2fb63e20cd57b214590c97152499c3c03808c0fb41990448380e
Date: Tue, 27 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748311793
