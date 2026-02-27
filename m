Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0519137BE75
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772235894; cv=none; b=LNsV9NkKTlwXE2L6GkD0phMe6/WETyIipgOiCQ1IYTYa+fT9s2/QAFaYsIWGk7vYSKMVkalH+J1Jf1RDMt05txVYmAZV2jD6k8/dhUsdmVJScITNeZczi+V72AD+DFCyCQVFsE/fSsLP6LRjb2vxInMdcILyYKm82D+NmGkZhJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772235894; c=relaxed/simple;
	bh=+tf2zzn+h6754aktYIPhE+9ZNKH7pYktNU0NfjJFEqQ=;
	h=To:Subject:From:Message-Id:Date; b=jI9c8ttJR273mGix00pmXx/nbuRaDgat1sEXB6sQL6JWcI+rZaP5qvEkaFCE7odCuN9puArwoRSgFmz/Lm9bT1uK4Gqsrt9W0GG5q2tMdNC7LaRcKdVSByPeCH+wIk5RMkysKXhzY9Mz4hFVyvflPMVAv6jok/GhxgXVoL9m5XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nd7/jfxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nd7/jfxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A307CC19422
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772235893;
	bh=+tf2zzn+h6754aktYIPhE+9ZNKH7pYktNU0NfjJFEqQ=;
	h=To:Subject:From:Date:From;
	b=Nd7/jfxzp5pzpUnAXxIao/laxsA5g4JdzEblAZ9wXVe5vluWhcsmIXA/c1+WsYFqE
	 KehwzYx5fAmQIn05fiqE33Q2vX4RXb2yyoxseL964ETRl3qgpqeruleaJmInqJSYQX
	 fqJf2X9TztZcYWmoTSNHN8bztmypaunfGVrPzTwq7qVY+p+UMQaVTvNpooj+Snx21L
	 x9sie4U+gGh16r6oaPoEDYouFMndhWRPKdCj1TEi7ogRYLEw1qGY7OqSl+tHXsYUk5
	 XzB+3lmt64evAbqv2ZBxUJiDRabZKuBZX5vrLpnLCe3+CJNCSplRjUC8fhTc8NU5+b
	 yvtIVokzXeX/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC91048924
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177223589358.28648.15180410901333302695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d85b581bf3b7108cf301097ae89430bef4fd09a0c39fc3cbd8a264c0c19cb5
Date: Fri, 27 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772235893
