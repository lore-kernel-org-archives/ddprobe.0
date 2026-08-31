Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF603C584A
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788151834; cv=none; b=iu9w1uS1EAioit2ZT7pkWkmAgV/1eQ67SAhFspc0dq/nQLIXzL5QEeOO8YDvWoobM1mXoKk5Ao/Qo69IxLnlvPqmPm4K6jtzN5oC8HBXpBGdecb+WKaJ46sJvTyVVmAJvHakdnV1m+GVB/J257WvOsaTut4hSfJxMn+Lae1wAiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788151834; c=relaxed/simple;
	bh=HmhikGxxeu3gOm7wvu3EFiStEb4ozsgGxsqW8vuQbB8=;
	h=To:Subject:From:Message-Id:Date; b=U/m4+FJifjxT4g8dklJwJB0mQ/NPIXIsWdlGBmkolbICsRAMYcEampVNA5juGKrJp2TH92Uwi0xxW1M0R933REqixscOyEGLDykxp78ITrAjwxoenmvG819wPtBPlX55VCTrHoLQc9hGgRUOiksG/kDvK2iXvBludBYtP61HwgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYJbGz5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYJbGz5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F2DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788151833;
	bh=HmhikGxxeu3gOm7wvu3EFiStEb4ozsgGxsqW8vuQbB8=;
	h=To:Subject:From:Date:From;
	b=IYJbGz5+mfIDkJsS1NjAS6uaZMjnpdU3cVKRN4WT+P6gKgvvS9GUsG43XTaduJJmv
	 FUDr8G4ECchJyOg1CZqleibzBRdFclB+RW8rVqoH4Nk0ziYK+/HFvilJbVWeO00HsS
	 2rNiwq8wqqimIViggLd1Mzgu5/NL8B7bgQz0ISMugPMgy0kXFoGl6CzwU3JIHKfPL0
	 Gyq8ZQCOF5YLqtHix6PS5zSNpEppHJMmXeB03uLt0Jc1cn5DwglgFcxv4+7EfNRVpC
	 1pi8Ec+47EjhhQegs+DXqNt7otbdAGeOUl080pzfZhCGvu29RZTKVx3VOkKIVjYhlq
	 qBGRCWIEjvxEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0C7C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815183369.3495.8652521190477353526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e2fff9adf453707a2b9672afce3f9080c275362ed95f4a12c4de35f18f9570
Date: Mon, 31 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788151833
