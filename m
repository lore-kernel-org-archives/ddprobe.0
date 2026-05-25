Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4360F397E73
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779694354; cv=none; b=NAWKILYJIY/Ms8N7gjZIpINjna0ifFKZ3T5FAIgMrKZEquIVOFJoA+ALdyugeJM1frbDo9+/TlFWYmkDxfLdHUizhH7GrEAjvpXlVwSuS4l0N0WOEQAYGOBbreZXR1iqkpyaVAI929/g6lB3jUUY6GXv/9ar/DAVNFP3vPaZwkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779694354; c=relaxed/simple;
	bh=kJ0Cwq9+H4CIs5qEa20vFDkw+tK9KLBopTkuA5CmMWY=;
	h=To:Subject:From:Message-Id:Date; b=NJ8u4ZgsH7krSQjGCr5/IGfXMYI+sUO9J0iyNScX2uYO1kDFChJHT3bacdnR6zCxFbBGUsyns9LnF05uUZ9ViCmikj6WFZSVq8xbEd1slGIlZaEgELCs/aLTwgiEtQOEV5kCXtpjWyUDBpGfNoVXkL78ow6yhs2CraEky85mEK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCTCsTEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCTCsTEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C303FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779694353;
	bh=kJ0Cwq9+H4CIs5qEa20vFDkw+tK9KLBopTkuA5CmMWY=;
	h=To:Subject:From:Date:From;
	b=pCTCsTEvlt4hLm3kUn+7YEZgAHsV6HRBqwxYIx4qGkBQTSCOkeMw2HRxPYob9sYDr
	 WTyZI9opGJeMTejQFy7GtTuylWgJquwEbdYrmwE7lS9kqmDkK7mcnSHWxTsEgXfHhk
	 S/RObKDyvQFI2O7ZZliDD/mgHWJUf3pa3rdWf8oTbfUczbIAYaElQB9nnDPiDs0LF7
	 u8n36O3BOcpbjorNc54GqRRuS9NCBC0FOwtLeHPN+iS8o64GJTORqBLxcn56oI/uaZ
	 XV6gqOWzJcAv8Z/3GSu8UqDsuK5te/6mbSt71l6TWlWo1H+6sNRGHo1g9jf61ql55N
	 wOgFDWUoBPDMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DE2CD5BC0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969435368.4876.783626554842277904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b6eb1aed1cbe9e93d23c7b236a6c83358b6b1dca3435b4eb0ed60b9af21fc7
Date: Mon, 25 May 2026 07:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779694353
