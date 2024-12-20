Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201DF1BD9CE
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734737754; cv=none; b=LeHOwDR363AVnsKDzn8TMO5CRFi/DmGV+L01UtlQCZChbQqeJEwyfq0PxUiPW6pvQiTxwQ49Qe8SRjkgcmBqRtoqRGB3eod9QD44OGZ5XW93QeHU96v1xH/sCREq3G7V5Xf19ox3YI650CTlsUZ58esjbrwCEd85L01DvQyoR8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734737754; c=relaxed/simple;
	bh=GIeo7PXPeDnEsSIrMb6N6+gvXGUU3ZsYCUUvmXLwMYs=;
	h=To:Subject:From:Message-Id:Date; b=mLYwvPUpDdbVmXbhDDCIvxpP21nnxyrzLHMdAux7nOmFfWjWg1SJ3KzkU8ObLkD25jwKkTaO3m40iiiJaVlWLrmKW4+XFLBPJ8lT/JWNAnykmPxBimqaNyfzfS7rUXeHPj8ldQT1DCzTQxHunfpbR05f5s6WXkIwGcfy3shc5ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOBUgRUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOBUgRUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0FAC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734737753;
	bh=GIeo7PXPeDnEsSIrMb6N6+gvXGUU3ZsYCUUvmXLwMYs=;
	h=To:Subject:From:Date:From;
	b=JOBUgRUysYm+9hcSogoL8EaflZKFM6z36WSWSijigsbYeI8ai8WPOM6UvPnHymBCu
	 XbW33RkvR9hHp+SCSHWLVmwdUSrwEQ3nSXMD90jgTFfHHwZox0gAy2KL1NUVI8uNMy
	 uUjkAC8FG2GPyacE4pNaiPOekXe+5RjFYIjToZX6OCMsfLlqs6JZF2m29lgOd7mo8n
	 VwbtgNGOybLBMyWGkkY4v1DCzE3IeDlkol4TZzOiSK1yM93ynCZfMzMVg+abMgFw/9
	 6JF/1HHSmW9MJfQdDV9QafTZD4MFQjYAoM4zU1h2hha4H6xsIEv8CtsoPMZFkPuta3
	 ykTeRAFfBmQJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946CBE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173473775359.17424.2197169157973273655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01dc4368a732faa4921b9e765f7560de80da1d996fe3aaa375eefd460d55c967
Date: Fri, 20 Dec 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734737753
