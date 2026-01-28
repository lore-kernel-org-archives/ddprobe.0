Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08298126BF7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769589234; cv=none; b=BSkMsryXQ04OAZf2HDMFEGDkfbpRH5/2qRdqJTivD05y5CphlrSR2xMHZj/vRuRTZs1ScfCTojjl/4OwZZ1PYxH/CNJqwwABB809AwpRuUlvzFtgP43h227qVzv630mseyXkQGSR0RELgRYHti5BBCLyTA2X6oZGNrn/iXC+YYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769589234; c=relaxed/simple;
	bh=+LL9TOhPFowbYHsXuEiS4P5dsh/f76aDgOUe16qTpBw=;
	h=To:Subject:From:Message-Id:Date; b=Gpik2fa0Pcg4Fjit7hIArYEOUxLijrodxpa5IrDEpozlTxpvaITFaFDL5Ud4cPyp7PsuNs2lM+YclkFYm2ZxcyT5QJVz59+vsOeXnvxsPyUzWPRGwOmQ8ZtGCvGsEcHoSExpDrt3g6D104RADnqBh6gNybLtIXWDCONURvcfe08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/wKtiHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/wKtiHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67B9C19421
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769589233;
	bh=+LL9TOhPFowbYHsXuEiS4P5dsh/f76aDgOUe16qTpBw=;
	h=To:Subject:From:Date:From;
	b=W/wKtiHxMDz4tX1V8HwN1GsSFEB9Z8yAV1Ul7s8SlrX9ww/qblPdXv6VX8ALc5xKo
	 5uocqziFI7G85tiFPrwSmwXea/fHTnVL94ogLdyMlo5g4tEbQIEMSe3NK4ai2kn+aD
	 479hAsobC7/KZkJHxBqTQkA3c8adCHW5F65Ep3BYjhBX1HMmPO4SidI9ZRjG3GhY+5
	 P3pvj1RCb/7lsUEYXnEVpVxyTY/9BxUgvMpzyEgyQItKzB5yIA404Kgz1iIUWbiP7c
	 uOIt5JZvWzH9jSEiWpcQVY+H3ba1s1hCy/Wg3zFnj+LT1D7uCKS8nWLvUe5RSpqzfG
	 RNOKq1EEs0QVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169FD35691
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958923358.14816.16271353849581424302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 071850f7a80e19709833eb0eab0b983f3a386a5c12ad5e761c5cc6ba77169a6b
Date: Wed, 28 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769589233
