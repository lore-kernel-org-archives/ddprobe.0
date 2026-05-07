Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435FF3E9281
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778171254; cv=none; b=NCvnVdAKTpFNgwPxR4aTIC56+pVDrMgTembU0HtjBJMyq+3yzrMXHpXZV+Gkeu7qRIBS4TlwAeXXOTSFDEK7hTEzukuEK27ciM2NOBLucfAvVbewwlbG3xiWHmC2J25stemRdlxNne3eWcZDBKqzV3U+/yrXGGP4KJ+ffM+yank=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778171254; c=relaxed/simple;
	bh=3n5/v7kSmhf73OEskD0n5WmInPv5hT6VTlNBaxzzn5E=;
	h=To:Subject:From:Message-Id:Date; b=kAx7fGrLwDp8PAkPD+ZdNkQol0rF8fXAiZZeSRIjLBcO3ZawV/p7XWuCrfj1D+MXjxde32hIeRRsbqoUL/kdU4qnzG8IvCZImgMiPyxO9253nCTbwDARpP8itl/B3XUvCrGdPps5PsK8KBdHPn1N2VV8NsF3rAQNMsa9ZJ8zaNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKcZCzwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKcZCzwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB35EC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778171253;
	bh=3n5/v7kSmhf73OEskD0n5WmInPv5hT6VTlNBaxzzn5E=;
	h=To:Subject:From:Date:From;
	b=fKcZCzwWf7iXaVjRPvo0GDTnAUBgm+vN+fTkIydi9etKDk4sMuDA2slrQnPj2LJ2R
	 FP7x3/6n10QbRVcpnZJvecDcZcSeVO4fuj87pvzM9LgUl3ZS48WF0pFk+ig60VSYnm
	 WX+/O+/wSdfkf3RU3aETM61LPbAkD2xhLjiyAaTEgMoVkZ4m3MqYMIzbGmjMXmtdU/
	 QpeTkMJOX8MyuAUsL4OK3eTD5v/tDLUxdvpErm3EvBv6VVoxkdj6PkFGR074A5qedK
	 U7TZzTP/oWErbqTALt+BOg8ZEgHwMgnfYHjKwfJZohukDc45wY3/KweXa85SIPUwdJ
	 WoRvZrDVmPq0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA82CD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817125369.24968.9530718547287097549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb7e78e2820e608016bdc9bb743811adb1f126655fe71247d33924a23f59daa
Date: Thu, 07 May 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778171253
