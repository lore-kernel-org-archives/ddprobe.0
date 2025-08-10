Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263A114A0B7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754824194; cv=none; b=TUWq0Ae4R5DhH6w7eXR+3pwcul89YpF6d45zutzDSfM3wKTZ+C+w9NHYIecI348O2i6AtR7v6NZLEiq7bu61PzejQgE0ipaDAazsSJIZBLjdXzVGI6ZcPoRCLufj8B7VQcP6DAuxeus9/RXK/JyyXpv6D+G0NOybq34rCxTBB7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754824194; c=relaxed/simple;
	bh=XXDUMDK+dlqrRfu//T2BWdKTIqcBFMSg1gJrAPPo1TY=;
	h=To:Subject:From:Message-Id:Date; b=sXXFu6Jlu0j/fCUxdjGYlhAxOjoIuJkvtc9zU5+6z9vQMZLa+bt08I4L/kVSzL7OStS9jQKZi2bY0plMnc2qCn3pnuKkay5kNcbOMPS4olRvH6Ky/g67xmhd6kc0xoA9kuUQyS/e5E98OtwgR3lUJHXVGmN25z0S784pro5Cgvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMNxSvBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMNxSvBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68DFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754824193;
	bh=XXDUMDK+dlqrRfu//T2BWdKTIqcBFMSg1gJrAPPo1TY=;
	h=To:Subject:From:Date:From;
	b=lMNxSvBfip35zPbvFYuPkO5olKPviFbhdX+oqh5TT856yeh92A2KbyAnbvsqVMbWX
	 KokwZ29YP11DCf4z/UnRoFErPL6yY1pGvTvmgsUm7DdJdoTdcudgqyeB3pq7rA8KxR
	 2eTDpBZxD0H1Cq3MZnesXLc37Z5DKQNR8aQwCJegOGWBt+3ltl+i1kt/vnwapqa9jO
	 DbaFaWfKVWnOAFZUoj12h7JvS22lIwZFbjW61qJ4a1BLAj8CvLlSN7zWvRb9oZwXPS
	 jcDQhQHgtg8f0oloCnZA/PQktjFFBeQr5xcEFvvlOujDFpciuArSyxo8d4+uyWdkUd
	 vDz5rpK68qe5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BB9C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175482419357.27447.12321521761044776726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b7abfcc2b39f660131f5dd05051f1f2ad9276f1782da1123f38eebbe521a5d
Date: Sun, 10 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754824193
