Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D36D3D45F4
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778655034; cv=none; b=EUnb0BpESTj7OOTxzxEDU4f2aSo8pPV7NN+kOUcWzfZdIGkj0DlNOOEUqTR9Y0U+HB9rCXcdylnSwFOxX18nS9btcyz2vWPbEngMDrf2SojuYePpLF+nPD1EQkkxxodgySzndcQAW/0K9LFuv+ccvvP2bLfY5fXbSl9RJJIz3Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778655034; c=relaxed/simple;
	bh=5jZM0mKqKBzrD4EFxU8lbwS8Rv+IbRBHdmDZ6zM1C/Y=;
	h=To:Subject:From:Message-Id:Date; b=DmB/CkIdXaapKHxZOuLhyHOkIoV+wJDOKKpUqnm9qIKPlbV905EX5bs5RHg+2tySf1Hqs8t08qxIwSm9j+k+TpyZe04q8VaIImHFDihq1w181ofYv8Zfb0cpGKkA26jaQn+fyA2Gmzc+7H483PuJWaYkEC5KNZR6pvQFufAUFmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yt5FmwkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yt5FmwkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4F7C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778655033;
	bh=5jZM0mKqKBzrD4EFxU8lbwS8Rv+IbRBHdmDZ6zM1C/Y=;
	h=To:Subject:From:Date:From;
	b=Yt5FmwkOS2VnVmJlJSSqMBlAyEX2dLf/2/QXmOXMnpL4qOtN8tC3q4+ZoS3njUeWn
	 L9k0qxQebOu4m9ruOYju34u7ymwiVCdqWWyIyoJC+Oi3TPknUWbJ+1uGfwNfC/siAt
	 a6xfCX0ApeJPhpUeY+N66BY4iwgJ7fYL6urcsezGBe1Ev4IH/953jDJAkhRdyvck9A
	 qiDauuYXAnJ4JfePa8Y70KUPGGx/ougPx4FI6+cwGKh4kr/hgCbFxzFENAIkANFrA5
	 7nu1ObrBdeneeBx0gH/8I3K1GputK05pApK4ZC9xNXwezc2yLEiwcRfD4wA3rEWnsI
	 XH5q7jbIHZaWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7D0CD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865503368.10012.11787483772694056689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46014d4b44226ffd59dd5145ccc0aa5b16c361ff04fca67f951eb73088a2d2c
Date: Wed, 13 May 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778655033
