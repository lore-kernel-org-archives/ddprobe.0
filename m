Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53654346FB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779492154; cv=none; b=Nt7W+DdZNFDbq5vtMJ/ZUcMQJzmo4VKN6dTMAQsTxiWePo4v9lWHkzilQe8wbt8LP1TNAWgkfwcUBbLEB5l3Nnc9aQ0gfddahHLUIqDThSHCdfRZu0eH5DcKXHIKr1LhUHJuUlnz/f3D+8Regv7z7TdmsR7fgx0XPgFI+8/oGhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779492154; c=relaxed/simple;
	bh=rE9l0P57jVGGiHdhP6ujehUCQf+LreCDfPfqPOFS2bE=;
	h=To:Subject:From:Message-Id:Date; b=hboDg6EZ1ugzfYuF9nfSXaBJYybLKMHSwg11GAMpSryli+8tEEqmYdJhmMYCVIaYHHPR6Uss5lO7afUFLd4bARvlGITW0WkWnqMwYfXrJup1r+fC23UzRJ2LuIUZeeN68rglp0wotrcJLwb0F/tLsC7XHWPiADgUB7qJfw02XWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6VzBngy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6VzBngy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D938BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779492153;
	bh=rE9l0P57jVGGiHdhP6ujehUCQf+LreCDfPfqPOFS2bE=;
	h=To:Subject:From:Date:From;
	b=E6VzBngyOHDFccCOEfBeMea3q8flpd0jt0NL9cvAblS5kXqobw+YNSa3ztl/Z3xF7
	 3jiDZ9m2kbahprWyEMxTQUsuzPioh9mAL/ZBNiEXz/Ht190taF8pmnD9ZUaJD+QXJZ
	 5TDGCSqaTuZEmPvDBERMf7ZM752m6d+1kSDAsfR5IodQZc/sbyuQVsMFVEmKNqfpJI
	 Ahbs+qC87MUgF7FSuwNDa5DANuTxRStK75ELyukmMc0YP4Ir+QTIP1TlBoCGksrRbf
	 VLlzMfxDV9gv5iGHCv9fJ+r0Mv5JLOyDpGzHb9QAN+S/9p+EPdl3cFBg0UBBZDqS9F
	 bNgsBN8dz1cYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA111CD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949215374.31497.11191469915483054910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff6e03d6e7a139bf04f7741e0c8136bb4103901de406dca9e03a16de49309ed
Date: Fri, 22 May 2026 23:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779492153
