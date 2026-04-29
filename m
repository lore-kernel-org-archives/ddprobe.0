Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292B435F5EC
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777433854; cv=none; b=KpkcjMfTdimvLEeWxuhXHtfck5bG2TCAHpFL16FcXpgIUetv3EXC3bf8qgbOzUAxmQ2cIVBHnUky5cp5rei7QGqQ5RsNKlZY7jxs+UclbDngFuVx3SoVhtA+Sk0ldK+owRFZc7VBhgdsNRdTnKKtk2hGWfbRATW33NIgy5Yf4cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777433854; c=relaxed/simple;
	bh=cTK2OWVBVMDmjAl31a+aw5S5c7BhNjRcEBUgdurgUHo=;
	h=To:Subject:From:Message-Id:Date; b=ckw5JlUNFop/YWzoA1N1bGcc8OWojQatSjL5UVUq6HRx2aZDS1urKmnzRGU2IRy7yfXxKNuobJqp70B3nCdY8cIUaTF5V+0+j+VUv9ztvcmGcjixGC/SE8/Owl898oIZivHwUUMrzt9HiE7mbVkVvfhEpJ/ecurx1ngTSZgmQYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2MpRc5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2MpRc5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB49C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777433853;
	bh=cTK2OWVBVMDmjAl31a+aw5S5c7BhNjRcEBUgdurgUHo=;
	h=To:Subject:From:Date:From;
	b=D2MpRc5uIZmgWc0ev55j7fJtm0EBagLT1tN8mWywNYKWftdeJGIHKMqIgWVewgYut
	 jTBAHeRsARqyxdFoPyfub7YcB/8xhMtxC2uTBS4dyCsOR3be/LJMOLdVBBO8ucch2Q
	 Z4jVGM+597u4ZIR4vZZ+u8wF1U6f8tv6gOHxiJ84HHPWWj8/nLwvirAmupVh/gps9i
	 tZqYt8gn8r8ZCoyHvvs4sE9A6Pfm/NwEVtYbvoNdRDLjb34oSYnKuc8gpKoOUCC3vt
	 vkeXsrGoiFZ+mS49PZBXubA94WtWay3kPqbqw8PyN2N+69dFOlh8QpL0KL0PDOe7Nt
	 eztni49Z7xfPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97DFFF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743385368.7002.11684650077554878381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 850880c67e1cfc294b7dbce4756b9554b9c98bb0bfab0bc5822a283e9a74cbda
Date: Wed, 29 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777433853
