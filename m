Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231A8150997
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768125234; cv=none; b=fPJ7x2IWBrd7gq2+K96PA4DQ+k4pXXFRVlECM6GGQI5KAZTEvJOYovAexnJ/VkhyFD03NkesKH8+/yw2srvkVzUQFBtffYY7zbLudmLA/1s5urJO3o8akbLA9m+1iBPPCjyLiTzs+BQXM41QviLKqYPdYnUZuy3qpyfYDyw8oXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768125234; c=relaxed/simple;
	bh=eUSdn34pi5qhMMgHj/3eIeVjQhrpPPP5HXQ45voV28o=;
	h=To:Subject:From:Message-Id:Date; b=MaNhx7/MInVaD21YSLpCpiAG9Az0YZVO7N5foiaWiCoMB5hw1xqjmdc9R/wZUCwMsEEp8DvYedqSF7jiRe4pIkEFwHPXk/5iTblG5h4zee9tjA1kXZvRxbw1+5Qn901vip/tV0WsEw2c1FSOZTc+Uj2wsoCpEMvkIkRyOgKQU1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4aFA+eG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4aFA+eG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C57C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768125233;
	bh=eUSdn34pi5qhMMgHj/3eIeVjQhrpPPP5HXQ45voV28o=;
	h=To:Subject:From:Date:From;
	b=o4aFA+eG8OxKLE5M6hFceHdNDLUNoccGeMyY17kJmcsjYB1S6uo//QzRSVM/ekJBk
	 s7iqYzTkTiKqrWdBeylRdcpkp04eWgA+maZ+J0b7k89AXVS+BkesGZludIPYNtjgmj
	 DVHGeKPgiu3RauzAPM7cE2NKGpQY2mdGGuXpeLH+JL1hgeF808lvu+wgZ3KPvAoxDA
	 aSwVmuTg5NUN0PxNoHwfOft6+SBVXec1h2HDZsEHkSKuPRgUlpVlXYgOqEadIk9p7t
	 nb14W5cFEtOJItG7fvm+nZ8y2JK8LuN8Tl5ma7O1qemh0vNDJBis5VokoBiIHGONky
	 B0G9g1tRyUK8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F84D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176812523357.8523.13669266580991481262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b82f2917193deacf7481f578b8c0d643f5c1dd2d02ad40aa3c8be5f3a07ee00
Date: Sun, 11 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768125233
