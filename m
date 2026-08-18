Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1993B199E89
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787032234; cv=none; b=Lb48OE+GmO8BrmWRLdNQUB5AWFSyn4cUcYDu+HS6udJHSHZNF5R97988poAiKerRcTwBDw2EjJM/m4Ay/2gAr/yZ6EMS/vRtXHZpjzFS/Sypxx7z561I0OwB6HFQCnkqjAjmllaavhH5LABVkQGdP+XEVNalA9xvnxMCydwdZhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787032234; c=relaxed/simple;
	bh=V0UzQvc3FRSSt7dgxhcKPdbx2X0n4Vb1JYkieSu5s1g=;
	h=To:Subject:From:Message-Id:Date; b=QWKKJ5ToUCRt4YXPEplgz6CsO2rfcrCjg1W+IxNU25Ob904aq1m33Ib4t6GpVRgGrR6kfAhXFJvAZqbF1mFp7V3/0bPY0LKO4N71dZ4t/q9WHZvMoFrYQHa0pXUpd7ug8OeNTrAdS+nbA8m9dMKE5KrS3oa4AzPlIVsvlsQjLlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iflovoWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iflovoWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEB4C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787032233;
	bh=V0UzQvc3FRSSt7dgxhcKPdbx2X0n4Vb1JYkieSu5s1g=;
	h=To:Subject:From:Date:From;
	b=iflovoWRrYaIte9V0gYCPz9pa4MFFwIUKtJhHNBAGkoh0/f4nxd155+e2nzxpgKSS
	 y3an0L3TS2/pI1nHoEGNr7ezFg2q9zlSDVXJUjr3hw/DrDtJ2kz++ay9vCkpZRi/FS
	 XhqqI1L/Sn8YPZ67uFrCON6ZNRP4p+1rdE6E8tSa6WQYG0Jvu+JWz9BGYaDiAf2EkW
	 28FYVC1N+UtqLqzEmLj774rWF2uFF9N6r3ec3fxBXBGyOf7QmVmnYVWSoUEiossoVN
	 BK/vNYfMabRW0Lj0Xj64jiq6G3tLjh0H/hZEvr13VDTGjUXNGjG5SgDEyIlXwYUqiQ
	 UJGKoE4BrDDlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9859C5DF67
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178703223368.2258.17013257629251966096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c5e8d983376d754dc2cbc01bf435ae2feb18f849e64b6c9d027369db2624de
Date: Tue, 18 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787032233
