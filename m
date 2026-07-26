Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CC4339382
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785048034; cv=none; b=NyGWdnsVxPVUUfy1J4DD9TAWXrxvnk1bA+jiBWrokxnCP8jqWEzARQUjeY6LHuwYHvPql5guVRYTjWfVmqT5ThkJBxGKIk9ebQ3AlBaHZ+a3oHTWtmEO5P/Rj7cq4goA1BX5iNynadZBlZYhfx0rAExoKyfI4yBcFuQ5jTziRgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785048034; c=relaxed/simple;
	bh=yz/ka6Jz6VaYVa46mLk3yMylbvMmAyEPrI9vNB359gU=;
	h=To:Subject:From:Message-Id:Date; b=n+YJAszBbS5Gkl9k/D4LuuOuFM2ycQW/YNDDlK022NYE2oPNW1n3MutZ7gzV0uVWWvYDMUPchg+JfikCzHHvGlDVzUqk0QeMd1uIQ+xQrm211IqDTPbkD5WWLOBhx83mvZFdqhTqechrMSQ2IVMa37MCUy7N5ZIErVWtzMbb0z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Arho9P+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Arho9P+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A63C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785048033;
	bh=yz/ka6Jz6VaYVa46mLk3yMylbvMmAyEPrI9vNB359gU=;
	h=To:Subject:From:Date:From;
	b=Arho9P+2PyS49cQ57cw+VrkVYbLvMxHCw8XepLqNLBuuS9xBt6wiSPPguyjvATWm2
	 HJfOMoNKl3zUh5fFloGh/Ebw7Q/3FwAIvcLa3M579EF6nmCTYbTunygpCgmCXSURb1
	 kyUM5n/z3ny3HJul/7n1A9Z6py4aFVqAkDtrEVmIF+o3/lX7mpQyg2tPXMQcn+d26O
	 Y1PKfnTXi/rovLeIvrbT/Br/SXG73hEKppwDGrb+v3GujhRk6PDnN2paTL7smA/UWS
	 QDkbpb0D7f/82k+sbH5dJctU8BSpTAWfl2uH1JtRs8nDBzV5WCOhDAHW/89MEW7Nlv
	 0sKquU90DckWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE116C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504803368.25037.5070357993638166183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b67ac120b0a0798890deb3dab326b7b96713d8588dceb18ccd79e756736fe0
Date: Sun, 26 Jul 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785048033
