Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BD838B9AE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768837434; cv=none; b=DirTYEXiMfAHXjOrwVWPHInEg2r5ScAkgUsmlBhsAUsWbEliYatuU/No3pY/t5MkPhXtkAKzAYqHitHytT6ANzWxCwYrDx8VjlQ+qCdVbbSCxgQZRyn06uH1PVP3LfHl7+0xjNOsMozdVIS80LdUbFK5fkdtrFz2kEkqNpo0Uzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768837434; c=relaxed/simple;
	bh=0mYCiQtLmlvkzVeNh+PfaBX9+Ta5omhHbUPD8/RP06s=;
	h=To:Subject:From:Message-Id:Date; b=iZeRj7BADlIqor/49t1cjxAK+DkU3Tg3p92DvfZ1l3NH8yOCOAhfBfyCj6RlWqtd5hLIm+QmO4BhXAtbgvW8WjCDaD19p4RNe0JkAlRTXpPh1sVfzij0jicEIfZJlmo6vUVB9tSUTLEC9cxZ518yJ5p/3xyjiREHeVcP02Xx7Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9Ls/wVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9Ls/wVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7018C19423
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768837433;
	bh=0mYCiQtLmlvkzVeNh+PfaBX9+Ta5omhHbUPD8/RP06s=;
	h=To:Subject:From:Date:From;
	b=N9Ls/wVG6A/NQsZwx1PkI+jGZoSXV8n5CAapTEUgwTZ0uykGVo1aweByGWYgOttNG
	 ON5/I4Ci0GgDghVqcgsGxhwgVdRsbhY0B4NFYmLp8BpvMeK5JTk7EcfTiIR8rSMY+6
	 8dgc6+Ove+tVL7oysShNzeFfuP3Gef/Zo6/b0NQ1xf6lx+xEWFGkyHKAas95GvDL+X
	 gM/ErNJZYBIwZgXsdDGphXTK+ZX9wa92oceg16IG1ldGTKG687oVFuaCjCgX/ul/RH
	 MdHmkwty3Z2x15OFU60xSnVcnD7W34meh0o7fIT1VzisdX9y6JsEeHdjeN/0o3UOuS
	 OCzcA1WPpgC6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95993D29C39
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883743360.23492.111690043279448233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf430afb75d4c35e4d2ca0457728ac25f89f7ac93443bc01128e65647b7c9e01
Date: Mon, 19 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768837433
