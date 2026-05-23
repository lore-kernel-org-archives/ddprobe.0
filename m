Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486EA345731
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779526954; cv=none; b=Gxai9ms/2unVlo79Vs437jXOAfqxD3fizAl27HFG2PoIAPWQKkM9ZDMOSs9/lQwaajUwnd9abDBp4BDMszPMFvyqk9nP0Ed00CAc5OEaA+4eXnEf96oALR5gtvEm4PTk4rFl7RrJM4qGTzoxZtanN3xwiHS/nW1p9VKjihLwwrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779526954; c=relaxed/simple;
	bh=IOUQ4Py6QLtMdpoe9M98Dzt414iaTRNcm083uRIkUoI=;
	h=To:Subject:From:Message-Id:Date; b=RidcBHoTr4p/aKstZ2B6Ez3iHeQLoOr5DVtRKj7B4ICtW3b+r/MFAnzlid3GJc4/2mdB0v4VXHUXPOrJPxwgoKZ48QWgkJL+YG1s7J+GgtX6moc7rU6UxRrbdefY/RRwSsLE6vZu4lTq+zhG7Yicy5nvl6FR0W40YIw1RW+HbVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JcFgnLBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JcFgnLBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC925C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779526953;
	bh=IOUQ4Py6QLtMdpoe9M98Dzt414iaTRNcm083uRIkUoI=;
	h=To:Subject:From:Date:From;
	b=JcFgnLBkaRe4Gp5asThLlJRgpDl4OO6m+94rTFYizcYkOESsTsgIfOIX9YswCKsRA
	 u6bSELyaGTXOXwXkynhRVt2jZrL+jFT52Kiscw7TtrqN6LAmBzG+2mYVVmB+PgO1Z4
	 QU6Rz1TyueKxxcU0W+9AMU7ti49Pi3un9d5MiN8MaAHEAmg/JqVfXvP4WhF1ge92Ic
	 DkaMI0AUyQe4lZ5kq9nwAofbnHdcSDZPhM5MHQmGtRFEuhRD/rzQYvR/lpqxEu26GU
	 huiIo1hJCN9GbPnQRV/5s4w/uE7ESCKd6/lrRGRY60crl732nmsD966ixPvISMH1xa
	 Fxe7/EUE/Q7Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE536CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952695369.20149.15523265552237508546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c9f20118a1448b79e76ec4272bf208c2a27cdb54d41926f807eb0220104c11a
Date: Sat, 23 May 2026 09:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779526953
