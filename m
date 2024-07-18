Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C8F12EBCA
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 11:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721302523; cv=none; b=g1S0O1tleIWsswth8OsY3VF46wnrdyRQYa3wMIx7GOyWMVS4Vb9tYRm47HASrbzuDAk7srdCYqbmKacrcJWGalS2JsJChgPhgW6boFrjsKEUFp0LcarII+zVic5fpqtnpakriIVfu1KTm2y2gcEwUiw2molTUZuBDWSn6G6g1Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721302523; c=relaxed/simple;
	bh=TJT0B/RVs0gBCWRMQ0dJ+x70nmDsf7khHIuW2uamXiM=;
	h=To:Subject:From:Message-Id:Date; b=JqLsD/jNQHgzU906kHsj/njW0HhsPSFzg+N3IK5lr3d//IjlJsy013xKN97PqBf6/UD5HngOCv8pdH/xyyqObWqfq0Li0wj768LidIb7r9yQrcfwhVtCEviobIswJqcuwSYjf+/C+Cr5ldlxZx45btODW7odgCJlU0+A8UhyjoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFZ15Luv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFZ15Luv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7054C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 11:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721302522;
	bh=TJT0B/RVs0gBCWRMQ0dJ+x70nmDsf7khHIuW2uamXiM=;
	h=To:Subject:From:Date:From;
	b=vFZ15LuvruajQgK+kuOxdGQMtMacEN8oRa3JDUm6qF9ijNdYEBce0Zst0CR8+29Tq
	 RXv0TvEEj9c84PRIjRv2cVJn9u49e5HgQiphgX+Eu2/z09EdlXC+AYgIHb6BerKiNu
	 192y88icxgw2yOzYAPq6V71JD9AjxJbveJTiaqYeLdOhkigh57J0L/yU3cKeKizT5v
	 TWUyWaA/pvhxkDIE5v2dtPrTSq8MJqvMKygLlgySNExeGwbAnkLnpK5HJUl5LGXykp
	 8iP8575qs/tHpX3yQOfmC1w/ZeUoo1kyIjhwlVjIhtT220d9tax49f9jXD5u4xvTtd
	 nFJFPO94SXJjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C833EC3DA60
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 11:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172130252281.8786.7759722388175064344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34897fd592c8b25c2e64fc443680d70251770f48fcaf31389791324f7c425c6c
Date: Thu, 18 Jul 2024 11:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721302522
