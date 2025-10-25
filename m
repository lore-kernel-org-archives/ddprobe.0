Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC2B52F88
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761416394; cv=none; b=l8XsBE4l4cdtb9R7PqwPK4Yz/oKVaO0tOwsveIWU8YWhg+duOAOIjBhzEFTg7gIqEoeSatKtBPJPf0YViD50ZCY5JenZrXTQ055I3hbGsu7FPbkGIano+i7qei2SZMLq136s4ONgzF2ql4aCEeBoP84lbACamOiXOUF5OwMafOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761416394; c=relaxed/simple;
	bh=GnIJ0ZwHQbxpKVcbof3HPUD3XFK/2NPIcCA9LUvsICM=;
	h=To:Subject:From:Message-Id:Date; b=WiGYs1yiz0V1pDsbgTxNdeXEB1JDo5hTyH00Yryy0Mrb/q4hL19yfk6eMBUWzeFWcHlZmXxpNldyoo8KAmOHcylUpEzgyJZT2NW60vEChfM6xgPyeDueEVO5gg6lXQbUN1OvzYOCmvhQ0u7F6CFomfau4yMte7p2UKrpo61G9wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCXok25D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCXok25D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41D4C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761416393;
	bh=GnIJ0ZwHQbxpKVcbof3HPUD3XFK/2NPIcCA9LUvsICM=;
	h=To:Subject:From:Date:From;
	b=dCXok25Der+t6xIjvMrEogbwuM7N7cf3yHksvR4dqqzHCSdcK4hYjpQQEaoJQxomb
	 lfh7OxSnKAKsCNzTN7EZt/xw7V8xQaqNxqYTvJj4EucngEnc5NVycet0vL2MVX0XZK
	 EzvHhozbNti7balWxZBoVUZDeSIj1i1K9GpNomPOa3yu6aW6HVaHL++CvK6jTO4N4Q
	 V8pep6gPAoCY4XKKAsH7u6x9WdwGQJqMQWTrKF5wI2X/PUwtOYa/DYkvTS1XBho8U6
	 hSoPsdn7UOLf+kYQjJkauhE81HSpqZFRmXU5R47QKZ2uSWkl51olhjyG4QUomN1rYf
	 h0SgHKUiMOTqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D84CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141639357.20473.9435353084597228775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3855037c7c31abceb754cfb05a75caf5eb9bc60b80f7e52c9da39e704108e33
Date: Sat, 25 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761416393
