Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C5634BA32
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759205994; cv=none; b=h1ft7x/TmsIF+mpjEUEpnA/scPk2kHU/Xo/eq8kkVbKJrRhnfpNOPzTeuLUvROI+cBVnqeu3yVFXNl+TowjfUdaUPgIRZZuPtrDVWAgPhU86bY1Wy+IqfaD0/OjQR0SltKkHmOwY8KFPQH9aOFa8wWo3V4J46WnFyqZnicjuIPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759205994; c=relaxed/simple;
	bh=wItS/lVNmBmu7iYPxLnIOKW7McQIFlifKHUka7zByRE=;
	h=To:Subject:From:Message-Id:Date; b=aVKz01Q9b2bU+xj+Y1jsb0fljGLgKYYMPbKYXoWVVkfGdd/PojnR29RHQYZCxWsEeVfO+pdE1CK4QGP+5NjdxdlhrT+abfYa+YIXD7LlhQXZjofr1/dOPC/tnjBjMVSrmIJXsPGZqqtQqzSdQGDA+InQcBDpSm/xHUZHjNgeWp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pubZg/oF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pubZg/oF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E13C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759205993;
	bh=wItS/lVNmBmu7iYPxLnIOKW7McQIFlifKHUka7zByRE=;
	h=To:Subject:From:Date:From;
	b=pubZg/oF4WzChb/VTCBUtexpcpBJyrmtGtdKK8hHP3oi+fmkm2UiVEfDKXimBeN8Y
	 YwcGuvrJhJNkoIcoyp3YAyddFX9Uhg1PDKytLgP7OEZyjLSJzmqmZZn8tiDyrCg6a9
	 qBu8AQi1yOgdykszLJqlVSioSq9ie5KqpvbkSNj9he53VIluDOKR44uQ9dC+WJSrSM
	 KzGGEWYeP/65Ird0ogEWRF2+B2yk43V2Pwssf/kGzXuDGaHsp3qiaYvITUQiwpvjaQ
	 BoRKmvXOQYF4mEhtVWk4Vwakf0i8t9lKwTuBdBrI4+4GZU05PIQslhTpSlkUSaT5JU
	 A8Anht2vMc3Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A066DCAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175920599364.16665.15480174024901606991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d0e8d7106c65052ad06e136453ebd4d214a5ea5da4547749df3ac342076226
Date: Tue, 30 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759205993
