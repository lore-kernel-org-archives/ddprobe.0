Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EADA1D1E96
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728309354; cv=none; b=W+rg8Fcob32Y7ndfSHMGNbsDdDhrSXoha7lQ5pynff6VUxvrpQQl0NrfrXjn4vSRcozRro+TWsMRqLL05LVuDO03IJ/3tuZE9g9kTQFEPzeGnQnEObBstfZFRWIzd5ebg5ASYwrLG18merp2BY5Oi8bccgm3JfpBHK1dhOc9Vko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728309354; c=relaxed/simple;
	bh=TRQ59hlc0fVfaeOp7IAp895opJ0d5HZKK3F9aCA408o=;
	h=To:Subject:From:Message-Id:Date; b=baVlmd6X4Pf3BULW81BVIeXq2ggC7usaA2lA7q5iVD4eXeaI2jnhzdwiKyNo3pELwHx3alU8qhdc3Lk4xVqJ6ypDQ+/MNmq5qRNzLvbrWTw4cBC8/3t1/S2tTKrTfeEAvJqmGxWQLrVUAOmbUVrYLkP+zxFsxQe/uETXa7JUH6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ijv0+pr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ijv0+pr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7517C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728309353;
	bh=TRQ59hlc0fVfaeOp7IAp895opJ0d5HZKK3F9aCA408o=;
	h=To:Subject:From:Date:From;
	b=Ijv0+pr4f//sGRE5hnEMXaWElGv8Hn5HpxpgADEqMeQZpvrCHjec5lLGlmJtCyf8K
	 3RiL0QPNIb17aYWypZJma34x+RTCzQnljNw/Oiq3ZFEpqLT6GT5jfLAP2j35JEJHIT
	 EO8Qjeu6aEY1fNXW093jeqB9qqDUwhGPDgxoCG2O+XSlWm2Qnrnfb31TnZqB/ihzTN
	 VNBorUgDmmYuePB94k85m8HYHALtiYr1ObcG/UBttfKPX13+xkNItAgfORhZoI2M4z
	 apbFP8ZrWLtBuFPvYwvGUSqlzTrhQf5v9nABi/L28IACboo3VARtzbV2hKwjbYu+gQ
	 dEy9rEg6bWf8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EC8CFB441
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172830935359.21466.5398479299518962394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a907b4f888f30c6e796440554d63b913ddba1995a70b13ef97423dd5f6450e2
Date: Mon, 07 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728309353
