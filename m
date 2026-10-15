Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9CA2857F0
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792058434; cv=none; b=KElTu9/mcI8dK/MeceIN5gzfLzgD71WlrjetNsHSc0wBm3en6G32TTB2LXgAnDeDbUnx6maxOluUb5A25GG1UaoIJp4UpU0EnyVVJ59/Gu+dsNLkANSppjo9I2olxYX71MnlrY8LWhmL+s0+Nfk6zxxJoeVTW0xICx5eGmxugWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792058434; c=relaxed/simple;
	bh=hF9DRFqG+ubhRtV6gyGP8sVnctOqFmzdMvN2+z663iw=;
	h=To:Subject:From:Message-Id:Date; b=dpiMor9oPu5qrHdwEh7pH7p5tcaWj+51y6TRBAzwD5yCcjFl7Ok7yNhQxUUywLgnNko2MP1zCnNOEaXaHT9eq3/AiMPuUfWVFiksScnE2/7hLUgmoaRvELsgvdj+7j7lgLBd38tCkwenvOX51VUd+BJTVvYibb7M9LYBGx63ITA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0KKFJEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0KKFJEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D414BC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792058433;
	bh=hF9DRFqG+ubhRtV6gyGP8sVnctOqFmzdMvN2+z663iw=;
	h=To:Subject:From:Date:From;
	b=Z0KKFJEq54L/6ydNScsnwT/TdxMmB4tEfm7xV6kAXdYTdZsdKNV217tJWVKQgT5Sj
	 BmEUcARVgc2lQ+B9Qa+qyQ/IbkQtkVqAkt6pyw1m8lV17/FYsv2UJOo1JFiwyH2Sc0
	 y4SY4AQ910Ohj0CMgd6N40PH8LN1OS37C0omlupBLog85T8wlBXX/n2qw0ypG05+uz
	 KPKxnLzgag0QNhsz9lNKdS5U0HFU5pX0UIZVVA7zzMoVbNql81Ah0XOUyzb2XFyLYL
	 PK8yQ+KmwRi627bkzqi6cyrrzkFZeJg241orwLYCpRP/cH/rcMAz0mRNk97d5PixJj
	 G4kt4O9nqYxpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE51CC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205843368.21537.14656949427295757396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df80d5c29772b5ff676e4188768b462c31a8ab293bdbb60717c299cc23f98d49
Date: Thu, 15 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792058433
