Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239AB26A1A4
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778806834; cv=none; b=KwM8urwRqGNHKqM+LhxcqpIz9p4mBOmWQgPpr+xglu3lcpUfa/ut1nQSngo65pHUdCW61zHaILXPp4fO5nUqf4u0622JEilnoZy001mpubN6KZO0J4VY0gYK38QuyTdmJHorc4RmeDjAyPmiVPj2lzEQsMftOQ0I5HkvWXY+3eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778806834; c=relaxed/simple;
	bh=37WWTZOxXZ1IDkTa7DCn1p4BH04vvTf4r411oHoyw04=;
	h=To:Subject:From:Message-Id:Date; b=SGi75Y+a9EhIzzaRtXfOPTSUYRYHD5IMVvFVe4LOWOCQp8+AYSaDXLU60ouTqDNcXJqm0uIy4aQ7psJp3CZ70z/yNzX3fBNRbXTA5ILvknnncejMjQMsK2NEGgSoZ4mjgoUd/d6grPVihFoJCjLRKdSMrMvIwCxjux3jIxpEhlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRtisZ5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRtisZ5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC98C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778806833;
	bh=37WWTZOxXZ1IDkTa7DCn1p4BH04vvTf4r411oHoyw04=;
	h=To:Subject:From:Date:From;
	b=IRtisZ5oBnb1JoKAhHxeY905DpbzRPNGRpEn0O6S3lryK/VK63dGViINvRCWYT8pM
	 gzp5DjsNYDk4tmxL2alhKJpyx1VcWdx7+/d+jdekExWfPxPw/YTIgWt6h2pZgkUwKv
	 VFePUCC1GUI2JkcudKaM6uv0RxxGf/sAp7ZrpotZGotn/EIVNv5tv1s+ufRuxJHtq/
	 gBpSJiDajxcpTkJIcBm7pxxRcirPVHMCtbrpPMl8wlYKHdpz0ygkk29LKN8hvxwuCn
	 d3H2ZmvrfxsElLsUx70vntyBstkcYn7yW+zl6RvafqVvNo31Ldz8aLSsaqGsbLXEsT
	 08t+8BpXcs5ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF3CCD4F39
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880683369.13431.12307770325768131942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6cff7ba20a581c1eb28beb8b00e9d166a477d69c392c8aedfeeb1f149d0c67c
Date: Fri, 15 May 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778806833
