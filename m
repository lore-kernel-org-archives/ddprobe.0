Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C3D315D40
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786974635; cv=none; b=APpRdCfWcAIJN1ypU0l1HWr290wiUE9wIIdKJ+5+TRoDFjCUBl0sy7g2Y2dWOkZCB7D2NFY/gdaIxSm67OeAlz4fPIJNzRwKBdNge3Z/CU9dowHjD5sO3xHBLa2rMfOmX+KXInDnUWQ+Q79JS7ErcvLRyRr64Vlu96XTJu18hco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786974635; c=relaxed/simple;
	bh=WDwEqRRzhXpzKMR7iDsAYbrwUf5EHxIsv37K5p9T8Wc=;
	h=To:Subject:From:Message-Id:Date; b=jYkH4n0TeviBHMl7h4ilLXND38LsaPOOQHrYBu+/qN1UomNXhou97Y+GabkXHAiHkvQshThIPMAew5H9pRjXPNkEZ349PdEBLI5x7XZCwILujeygFsdSZQErC+QR9a1Rk8qTDjEkfuSPTQ9Qn0eauxTP94hG/FGeASreLYDD0xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPYDloki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPYDloki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1405C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786974633;
	bh=WDwEqRRzhXpzKMR7iDsAYbrwUf5EHxIsv37K5p9T8Wc=;
	h=To:Subject:From:Date:From;
	b=BPYDlokiXrqq+IPgTrxXyNuhYh6g2xgltSE4+ei8h1UTNGGOKTpDa9dR+isTwFSPX
	 WqjkP/IQUFu42sG18RGUAIOYY9ONwhiROHQt/oiS1qseNgeQG4bcVER2I/BcD1r/S9
	 M0hQQEYCFcCi6ihdDs5b101/e5q8J7Y1fFnDi4bW6T6ldzpSDTO97Snv/fI2KsjAXx
	 sG1v22nfffFE1aS9Z8CjnrqX/MO5ada7DrDkL4cB5l9AJ8xs8teaprGmOjzJV94Gck
	 HTL6ufXIqfcp8PWL+8O/5/uotULmlIACM3/2zb9Ysv5ngeSHUmJkREwX89WVYyDzSI
	 ugXCqPwsbyr9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB072C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178697463369.20552.1268888710814512855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b2f707301ea8e44a687a3b3067636c7e835cd54476f0d068f26652663251a9c
Date: Mon, 17 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786974633
