Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C01621B191
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780281274; cv=none; b=ntTcaBVqV9PvMIVikrLeV+tU2gzDylnSlq8eSPg7ShD8CfwKegb7JYLpl7bWlq5BJWjz9A0IyUY+FTbeUUNNnv+97qWCkjH6IbO9UnR0PwX2yfZOb8QewCudsf3YurS6l8Idck2cf8L3gLuXLkDxLRl0MV6xiv++ALCH3YTfjm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780281274; c=relaxed/simple;
	bh=FuOMjV2tndUc0EPLtbb4jOCB9pwH8FoD/tzaTBtdvnw=;
	h=To:Subject:From:Message-Id:Date; b=X077sj/ouxb9QtY2zi7O/Ncw2D4w4XgToxehvp+aYx8L/0i0k9bzAF1V9UdlLWo3gURK4I+n4S+Fr1b9aOcmtYIIRygIC1/J7G7cMqCXruEH2bW2SohvUhNhmddS7XSqFMa3QvzX2AjLTZJT0pQhiUWC25Bx+CuB/q1BW5D78QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ptcqokci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ptcqokci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34FAC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780281273;
	bh=FuOMjV2tndUc0EPLtbb4jOCB9pwH8FoD/tzaTBtdvnw=;
	h=To:Subject:From:Date:From;
	b=PtcqokciIQD8/OZ5/UUDwrDYzSxUKedcv19rww8t48QzCcgQwDf2NzYN81kTwnRVO
	 x4RTw5QoPiSnxUPkINXkc/VSOEjnxUHmEG9d+ok25evgE1oUSk8PXF0rMf+XMimgD/
	 yIf0EoBRJaNpYqdlkuAwmy25BSGUrRT6ydHVcj1eBgxg+ehxiPSh8DUgHF7IVuHEhI
	 WroOV/o1tJ8c3THbe0ocX9pNvwwTLlIDP+abQwJZDrAJU38emRPmzNYoMnm+uS25t9
	 DthuYQiA3KRuBrbLHmr/QQ+GpY4eo4qNOU+pwtAIxN1VF/1kjXi/+HTbYcs9GQ/2Y0
	 YakIFamCZGRGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA983CD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028127369.28745.4107733311932104187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae89d0affa26b79fd3fd0dbd8a55195917a2e861d14a839cdded940c73499efd
Date: Mon, 01 Jun 2026 02:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780281273
