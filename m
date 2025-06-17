Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2204028A714
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750153194; cv=none; b=DJTKN3WQ55NaBEPXfZIsSaj1bQpaevTE4cjKohxEpGEeeH6RYRBYm6DvIRzvyIJgvHZwX7PuOEgvs32rZUYIeLdiqawzHg7mwqJcbuhgsV89nYSmOcLtExAzXwOjLJV7jlXPREDRwcDY3PqrkLj3qAD6cQej/mbNC7jB11Q5780=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750153194; c=relaxed/simple;
	bh=X/+B/BzAX0CMjrK2fUur+tNGUw2/rdTsr5jD+yiGjbQ=;
	h=To:Subject:From:Message-Id:Date; b=eeMaax0Dp5RSTI7imI9M3QY+GAidf0ENK47zY6ZGYoRtLU1qscXlBp/1+pZTWm6qXOv0k2gr3a/EuSGhMC+XDVFbS6Ch8mbX0D4+yNRTo27EiOmaQ2idXErA3FJRkf72r7RxUgouovFqJXS/K5PzusNr+wjkwJqAy9J/sraQeWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FOy+MM4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FOy+MM4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A656AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750153193;
	bh=X/+B/BzAX0CMjrK2fUur+tNGUw2/rdTsr5jD+yiGjbQ=;
	h=To:Subject:From:Date:From;
	b=FOy+MM4jjWYQp4CLEQd2i+lHWCVzcCHNUuQZ452oKKG9YWYPaXvw6je9Ymn1dmMyZ
	 nU3cRxhS9rfQetIGNLSSXjXXFuSzSI2iNwWJlAwBVWm0LaleWq7Rx0qed1mARU8MpP
	 /4TIJFJ0ShVujNpu4oxRVtKMOCEvtGb+6RE8NrLVMNDhiokPpiD5un9bomOZGHSAvV
	 IMjFeNtKkuMK2n00fcE2M3hq1SWbfW8EkN1cR1w+IzjpLYovx7cXQiErdQkZOw4BU0
	 424nghTrL+yMpyk2BCsqSt72K69bTenh9XojmxooEsiSQmMsVBt66rsnEXIf2we8H6
	 OJkYFMfr5lZBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93923C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015319358.17834.50017590351401057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff7937e0574a1ccee6b43761e25a69d1ce47365156a5ac2ea092de366c76bef
Date: Tue, 17 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750153193
