Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322D7385521
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779715354; cv=none; b=hOHg70nRInf1761aUbe94ToKsSePeRYq4dE/43ZUyyvSJX3NmiMJMzUIe3qGR9U4l7aP2MQYjLE4faDVsf+EPkiQFKYJVaMJznH7dXT9XMuee4GlQ5akwOIRjUJ0NB43vtoN2rn+1Unp8hb0EZ6X00UkUafd83EEiOrcswhWv3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779715354; c=relaxed/simple;
	bh=Lqx5MvXwYT2i8EIeuM+2PT2MzEVKhUaQ/U2uGGXknF4=;
	h=To:Subject:From:Message-Id:Date; b=QUWtOd1Nhnqt31JIW79W3o89iSdBxHWtoCrT23ceevM4WQYpKZkjazvg8YL8fiKfcWjwMaMUSKtaw1pLDfjATuI99TJDp1Fwydq3t9Oo+9XrqYLZTcX16lbk+VgMX92tApopQvdsiBD8K8MloESX3zaL4h1IGC+ouv7s4xOYt4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q48syyUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q48syyUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A08C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779715353;
	bh=Lqx5MvXwYT2i8EIeuM+2PT2MzEVKhUaQ/U2uGGXknF4=;
	h=To:Subject:From:Date:From;
	b=q48syyUVeBeGCqvV8+pFry0JeBTr/ddRl18ZODvBXxDIWF7OFVPtBmnn24JggxPkJ
	 IWvzYZvY4aBTQp15S8QOZu53UireaD2Br45ABso+nhjb4mXQ0HEjyldsMUwdTkh6nl
	 l7Q3K0AaJLgv2o00rrVqN7Dy6udpeARYTAvNTIyx46JIIiDog/f/hXepvJ7S9YgzML
	 wZsRGuEtch2pcG8uhnkjmjWWABXDpizxRExzVxkGWTanwF9R0gj0JgclqvJA6H7Yzh
	 jZa4okFdgjcfMepnAEK6+PlFwZbNKWjBB8GsKlUM7Dbitm6+lcThlIljat213kHeWz
	 08nAvFUa/j7EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3700CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177971535372.18416.1788993321450311368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970a119b1828903f110c107a4218bf622686c407e483c198a2b9237efe4bb4da
Date: Mon, 25 May 2026 13:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779715353
