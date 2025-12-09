Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2C3224B0D
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765284774; cv=none; b=XQCygKheuwtZSuT2cghyXQ5ewWWWQ5ScVcJgam9Ls+c6wsD4rcKcbnyZi1jp1VLN3cbptKfmBr98AaKbx0K6SBoGZlhzwR02b2jNJuv0lqAttmLtFSVVeQkULoAH58TcGc/dZnTMsVayJx6VtcPiWGMGc4gvyOGdVWNcxGXzyAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765284774; c=relaxed/simple;
	bh=bwxsSnQxQDRiZJQMPjeNBr6AMoBlwUfGb/noUms+T8M=;
	h=To:Subject:From:Message-Id:Date; b=dJm884Q3ptt8jW1rdRmv6687QaV4Us0z4PuE8koSaw4BLNCkdF2aZGtEpXld+axd2cSz2Bs2lZAD0zQutjJZI0PM8fGhAG39IQyb2iR7AodTmvNBQBwGvO8M5SJs2oDjDrDjBkQ07J9v7Qnci+5khoZ72QOj18mo8jdJ2IpKVlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+PB814E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+PB814E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A638AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765284773;
	bh=bwxsSnQxQDRiZJQMPjeNBr6AMoBlwUfGb/noUms+T8M=;
	h=To:Subject:From:Date:From;
	b=i+PB814ENYFGFK6/wB4Da5E4uiynA7ODYOWUNX4zVPNZ61+0Xt9ta58+bUmVIbWsl
	 /glpEGN9oobyXuc1wO73c5/GgQTs/6qje1mcowF08BXHwGxp+Ou5C/7z6fwDWPGG8q
	 KFj4be4ChwoTBiUGrT4qLYY7SPaVfri62mk5eqHy9r2N9jxYFR9KdsTg29SV9AbVIE
	 dw0jEmMdWMgi73AsAwK54l5rqBSuPxklB0x+ChvIOk5o5BanYWjvey3uDmI24SGS3o
	 XzGKj4oKrUbROoHdI2+vmx42gnsdQ/krJzVTc7tECdfkT1f3y41twRr//G9i/BkAER
	 sbFx8dG7su5ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC2D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176528477358.21445.17603291091706975054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5064bba100c2e3b4e0d779f0f51e05efc75ab7fc22d8b4e13f677dba7dbefb8
Date: Tue, 09 Dec 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765284773
