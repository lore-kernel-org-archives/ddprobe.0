Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02109345CB2
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772177694; cv=none; b=bSQ+iDvxuv/E11jI06ifj11Hv7La24WnkHH4IhFh/OLtih/NIcszCMjjsOkv23AcDp7WHAp51a/WkDsGn0UnMh0arfHtGIIWweHXVme1Qc1pWr0lvFpv65DI7qFpk9oM/eih5aDUMuirRfcbhVI0ujeE6UJChedv3mucwvPm2Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772177694; c=relaxed/simple;
	bh=dtRb2MSG1TwEfhIQuBztY2rNXy1cF6VOjvFuJVyBQ14=;
	h=To:Subject:From:Message-Id:Date; b=H1xcIU68yPb5R9sYVvxbkD/M9BiO4QqQtJmH/5WIMw3prHNjQWa5FdifVgb9B56LGGmnzBBJ0HbzksaeiDaDVpDSQHNSVLJglEy8iTOUU0ljFri7vtagHEOjasw+sF3dhn/VQjGij83Dr00Geop9VZm5toWRci15jWU9THg93XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Whk+/TBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Whk+/TBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BD8C19421
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772177693;
	bh=dtRb2MSG1TwEfhIQuBztY2rNXy1cF6VOjvFuJVyBQ14=;
	h=To:Subject:From:Date:From;
	b=Whk+/TBrg7TxPzQgc/LGXm+rWhBtAdGCqYCifHQkL3mSsAyysznn2oWMfuatTDF33
	 w9Logoa45BRTyfDJf9NM+IFjKccl+vT9k0pRQoFqXy77KFFvp38bE3ttnMoIn7L9qI
	 segBJutvQrAH4G5cvuJpfga2Rr7cdTzfnUUl6BGiFE1qzxmXFOBtmj9d5KEd09NHNC
	 Zh5fcSO8L7Tz3c1hRSqALUKWsk1cT1QKkE/46nGq6d25ThSZoTY2MyedU7dbvz0yWM
	 I2AAHzRNbRS/gVk7mqGnE1pIQHCRRiWed0SAOf+LPs3+BOHziiaWjJAJNkdZZNwWgl
	 pWUnVyA61CHAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F226FD5307
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177217769364.11407.10695891375986973701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c802fe751864b419c3a7cc84fb13d4ae245b46ae228cfa3380c2c863b5f44f
Date: Fri, 27 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772177693
