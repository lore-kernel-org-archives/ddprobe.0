Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C762A8C1
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736670354; cv=none; b=qG9cx2DkRll3Apl66R1LsQrcRoon8DNmPKTbD2kEsOP2LCBlSl98zOCQ0CdSmz6s0dnsDBMCcoJWJn5mPP4/xcbZxFK5Qm2D8WnCaDbXUvRGgPuf39aEZq+OIhgDGsYjYRZubn56Rj5JzxPnHlTmhfT1q2gc4aYyAUKWiEfIRwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736670354; c=relaxed/simple;
	bh=s7n1wVHKDxN0rWSdALJ4FkatNCwtVqXjCVIM3oRqcT0=;
	h=To:Subject:From:Message-Id:Date; b=Y29uOR36jUiFU6Oxf66Z5TxMcEWO4thnUfYvtcUSr8mAHTWcv0YM2vrnKip2SeyfIknMZD9Ywh5lP62Ny8CoigTYIgV/VzqzggbdtT+TuitOIFqE6eEFKKBlWJTEn02+LPw+Hqxt/GrsRdedEpFK79li2dpHWNmLmPusW6+XsR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwrD30US; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwrD30US"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41B9C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736670353;
	bh=s7n1wVHKDxN0rWSdALJ4FkatNCwtVqXjCVIM3oRqcT0=;
	h=To:Subject:From:Date:From;
	b=QwrD30USY9LMHE/7Fm/NzYYF274tbIdiWJ387P/+m9db+d+v0BLf24rVRAJUMZZgt
	 vYSBZXcR+09zsfYdKjuIDkwYnTweOzNFfaPTZN3IWyM7eXts7VO7BJA5varakGZ6QM
	 Vwnt25PKgwWfsbmkaQuMzBHZEkneOp+6epfx9TBQ9XAVJKkmtFVy42I5lF2vqXSPcO
	 ANCUUAQPsgnCHjDrUuOda/vLxCKtYZ/rwSQB8zerYqlEiNOYPJP8T9wMx6m6UwA1s0
	 yrKVsUEAeGQjUVrIgWSvYsPwZXnYBzqGZCh2JZ3x/ZQA/xN4rzxwJ16CNWGnGNTGp3
	 wa2nbaSiJLm8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B3E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173667035357.24759.5664777412284841540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42be22a013489afed0fdbef01714d34b7c6d989ab2ab7238397f859c72e7bf46
Date: Sun, 12 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736670353
