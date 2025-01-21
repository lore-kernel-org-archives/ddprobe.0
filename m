Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487432E406
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737487554; cv=none; b=WFkIV2xs/+2aHexwaduijDCl9EUfSavsWzDbt3HOKfqaw5BQb8IHPHLnlTomMXMjTnKh50tZXXNlhAo3V9kCK9htCopOl4+ROyn3lxb0lR2MsVmGYnrMnofjb7NO87YPCGnZXkVpqjiALNgwRB5IQ8Y/P8X47FRx6ujHWxrO+80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737487554; c=relaxed/simple;
	bh=jWfazHvBfj9q+raHxHu8BOmlQfdpsvFZnZHJtc1eizA=;
	h=To:Subject:From:Message-Id:Date; b=B0BmiLtJHJrc+IyKVZZeEZbjf8yp1OPZAE82DPmKME0zkYQNccTV6GYfUrf2MV4HZjzXPmMPt6GkUcRbLjPgc4kurha5tZE1a79VlgKRh3BGOc9d0mnTIpqLfgf79KjLbipTWoWx1UKaYwHgkRy3dzjY3wP2xJ0GdcODV28PAHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F919Nf2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F919Nf2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F55C4CEE0
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737487553;
	bh=jWfazHvBfj9q+raHxHu8BOmlQfdpsvFZnZHJtc1eizA=;
	h=To:Subject:From:Date:From;
	b=F919Nf2otyPhqfLBoh8R82JbehtOh1R8gfiJ96UTsfSPAJbrLVtS2/TDGkxLqvrY8
	 TSDoI+fE7Fq/7d7qE8UFU7parc2o19Gi8HK3R4imox0IsE17EtKir89EzruvN20Srn
	 iIRI998t8bNICc/YCO5q2NvswTcnZfMbTB+pBIMpRvW+fDVOat54HIB0xhtMpqDtcy
	 /BcCjBBml+JJYgr0Exrkps5JM9sTQEEdqu9yqvYS4bRbcwyKJD/N3BkkI0sOkOHm7S
	 BLIR8amnCbPbg046Y66Jxic9neRkfKyj/kC0LC57WyO7Fnreh4GPffRbI7yOMlLxG+
	 op9Mp3Nu8vIdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FE8C0218B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173748755361.512.11316030331672304736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c87cfbd8cddb09b92f993f2ae80228054c35a01b8706d818b5edae3fc54e83c
Date: Tue, 21 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737487553
