Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA401DF756
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736205354; cv=none; b=nNgDj0kUrizfgl8detee6MJDVxSbUfvr0JsuSHOdwP1m7agnZVl6p2advVgh9CBWIZZBFhNZoGdoi2LYOMBusbpCcO1rZxCbRrw1jjtsDKWsRDpWrcaMQdekQi8PKex02cn9ZiTYloJzb5obJhu0MK6bwazBNsPkco3zo0ZOKIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736205354; c=relaxed/simple;
	bh=wtKaFw+sbZwArcz/4M3yNww/QsSp/Fak1lCdXfHLPeo=;
	h=To:Subject:From:Message-Id:Date; b=ReWusOoDDV/pzwIci+SD0ZOUI7dMKXaMO9GXQFLRCj9O/XUNW3g7UHr0vKOHwuB/h8QxavvejsEsNW0SQS2G7TwH36DsVYOfDRvBjVQMfM6B6FHSlidwhqw21kbTySDlnkSfVUJS/17NMluP4nyPNLcH1Xh/O4UCLgpaIrmOrTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nv4e3/iy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nv4e3/iy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8CAC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736205353;
	bh=wtKaFw+sbZwArcz/4M3yNww/QsSp/Fak1lCdXfHLPeo=;
	h=To:Subject:From:Date:From;
	b=Nv4e3/iyov1OXAs3NT/gNfWWtLO4FIF52u3Tc0nTwiEXpDs/LvxdtMW9VVrnQ4eHT
	 jjuG9HYMUsOHWpsW8/hzG+ppF9Vuaxjr1Ni9M6ihxS9jLWrY43KSYvRpoK9q+kRepc
	 GJOa8exNq2kHPWnCetJJBPuVxCCyqOYb4HZ8Rpc9SHE4Rbx7InmOHNsCBmLOfFg+Hk
	 i1TFviF0S4C8NbX98zVJ+8Es/tqK+dNG6mOCSDcxInM7opaTn6Z7N3pxicNVOOn2Oy
	 jrbbhy+vgZnHQKBkA8qXAlZGL7696kEqkTZmuOKEwf5O0CgRbMZx/6chmn8IPwS3Qd
	 6k7faOid7URLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FDEE77199
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173620535360.2696.2179911601025564677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99e26e9b7844c4515ffd93cf8dc1420d65e2574cd52ebfb8c2a87dee726281d
Date: Mon, 06 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736205353
