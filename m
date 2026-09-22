Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5260749C4BA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790104234; cv=none; b=Hl62t0w6mVdTF9hEGcos9IqlC2OZTN6gLpOK2hQab28Z4zes9UAtDhMV/sDs2DhQwNKqyahubzpNEeeaHpXv3xUGxUuYryan/gPm0ebcsFPWYW8uzNV+jyzsioprbEqpbL+Ga7euMw+ehKpK1cWt+8OpnR+a6dBhY9E81sNEOsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790104234; c=relaxed/simple;
	bh=Di1oBTKk/CaxsOqQcKPyK7WXCY2g/32LK7rndYlco0M=;
	h=To:Subject:From:Message-Id:Date; b=Yb4W6LLiYM0XjJtejd3ht8m6JkzA8cx43CyRMG55HPCcwx9HFEXGSUiVEl/hx5/kFzgPIQwu53WN58tffq1l/Nr/RxYSJEm76F5d0NaglqK86+1opzKKSG0KKVYzVAvEPNwZlAr29du/GpPTYH98rU7V/Zr9BIGUpkz9Qww6bcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEk3PQG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEk3PQG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA643C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790104233;
	bh=Di1oBTKk/CaxsOqQcKPyK7WXCY2g/32LK7rndYlco0M=;
	h=To:Subject:From:Date:From;
	b=JEk3PQG6j+jbfH0/C804H793m3LlSJ+smGtV+5bYT2+Mp9W47tbiq5+CCKyrYEYq9
	 hziGQsdNTIcrT6uRMRHd32JBLlDTJOnzrdPHeyoeGtF3ETEfbAnXr9ljM1IvZsmrJQ
	 riL2NBryboc5Lkzvzuffazk8qEczxchB0KLmm4BEg6z/1XgXxZHtgTmLeXEEYoQG43
	 yORrSKOp2ewGY0yeDx7l2iSctqYc4x0IXjS4n4ho+n1J6CSZSqL5dmtCnqmikpsged
	 6iofBJlpmw0qofp4t/NiZJjzzzPucKopjBpUMvzlFfgh1YUUQ0G9sNcxWV/nbYE1xt
	 VaSMckHRkiEtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F5DC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010423371.1413.6921962034429375051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50505bdecf8bfa951b85ee96433ab18f9a57ac79a05ba24cdab8e43e92f06815
Date: Tue, 22 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790104233
