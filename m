Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB5D1F5F6
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766972034; cv=none; b=ZaczUe2VFD1wEZTYhWpRGU3FG+fXPwTlJfvUC1H7XDX0sDlOhXqbwYwQdd/2mKteUhmoKEFKhEJeoZMyVTA9EDopgqrzIraGebahkgQH3V9XOICbIlo/lyN99PB5V4w9nO1eDg90aYgig7z3B8Q5WeAQMgOS0XD6lsytnSxgBSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766972034; c=relaxed/simple;
	bh=HtHZk2ARSemvwOf4nCpij5pNrrHHVF+vNuMltx1grjk=;
	h=To:Subject:From:Message-Id:Date; b=iFTOiHUxaSzdtNTdxh3izQRUbty23L5rv3p1cAYoRg4Arj8VUtauN+dS3WMQ5oRiWGRO++eHv1a87HD2C1zBrk916iCja/Su3Oaue3zTh8VKNX70pNzP2RSfwDhzEuoll0utXGfI75WZR2owi44ZyL7ZRujkZTPHqdSieLXtXUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPNUA7hQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPNUA7hQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9CFC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766972033;
	bh=HtHZk2ARSemvwOf4nCpij5pNrrHHVF+vNuMltx1grjk=;
	h=To:Subject:From:Date:From;
	b=HPNUA7hQ5XWIQpmGmdc7Ja5dlWBdlQkBXvU52rieEViFZmqG2IsvlJr2j0GKRcZhz
	 oaY9zz0aIc7x008bwf8pz+V1S1TkG9tVPInL+2LZYfkB8Won4PCEz1poraDlxuhT3x
	 AFiroZjKpEBMg3FuIfZXqP6i9UT/kngy6oiFMQLN7AERQKZ4D6O8ppHuFE3vnz+S1B
	 HFRUoHoylJOwCEEyHoDHaab7a8wfQU3w0knQiNK77xcss08TCce0J87KDco8RWjV9l
	 o2tauilljbVGr/qD5z93epOJVg62a+XpN6aLETGQBhPyq7gxPjmkWMMrmCoCgUxVgY
	 P34G6BiYMirIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968B5D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697203359.25389.9372293301803572662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ace7629d9109bd940a16766365210720d0f052ee227e28739322d34b4225e4
Date: Mon, 29 Dec 2025 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766972033
