Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6CE399358
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788046834; cv=none; b=NA8G6WFTUDVp8BpnX3FJqyzp9L89fUra5rcvCOKIrkO+gqb45Ze5Q5lu9TLOFFG7BdpOusZ//KVFK1dPcbiKEpx+yWGBknkWgL/jlnRsurQjKrkkQ/j84x86Yq0ItlFDRSRhxAD+Pa8rly9w8dZo21iXzCGuJW6n6bYTTJ2YIJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788046834; c=relaxed/simple;
	bh=aA5EL2zN3efOLRpkU836vmh1qlAtDsgAeWHsfywYouY=;
	h=To:Subject:From:Message-Id:Date; b=KgXYMlf+Xqi69SUH7P16D2N3CilPFWafJQEFeZhw/y+fYLcBVgPoP9rVTyrLqGgHEQGxCubp9ztrPg2avR75K2P9uJ7TTy/03gV1htlvpJF0hZuWWuyliro+NnF1CCtuwh8X2yJjxIfS8F1e3flDryIJj+Z5NWbGg808C0BWcc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5+I8hDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5+I8hDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D333AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788046833;
	bh=aA5EL2zN3efOLRpkU836vmh1qlAtDsgAeWHsfywYouY=;
	h=To:Subject:From:Date:From;
	b=U5+I8hDbgwMORED17Z/rSFkcJEYJjdrKeIhoEfgB2woZwTK7to+uNeHGNxJo5oscG
	 wk8BzgiWRszZGyF7qnYg+erJz8q2McPlXNE4Hr9q3/Fj+vIUhXhjbot/WGhuVvkFE3
	 TuI1u9F3BykD0u+27qXOcDbvmIgQPfUm4qIj95wJEPm+3OPv2yRpeONfeTS/V1Ogqb
	 OnmiiCKHyLxMDXEjSpFQW32MGgbvQH/d3lsdAZ5mZjG4CWXQc/8RxRTaZM+FPTiUtt
	 xppcwWUsxHOWvyvYYXlvi4qpU/+BzR6nh0azjJYiNHTnMkmMzg5xtXd3wIzUwwjtBA
	 en5DSzQJAml2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC82FC61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804683368.29722.12696892515080768783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f686bd12413789068131817220788fb5e213dbd37c3bdcb0fbb2138ebe4b9791
Date: Sat, 29 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788046833
