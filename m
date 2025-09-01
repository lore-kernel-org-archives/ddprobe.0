Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC002797A4
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756763994; cv=none; b=nYUQTBcOgJY2WZOsmShw8+5XTT2orOTnwoVZpzgauCwzdIg9R0YX0Llfrs89X443b0pnq2PqJg2SwaPm4tj85n4bxvHkjzxMi2Xtmg2TulWAcMxIH7oY/2XcWowVjWFgyY/eM54aNbVgcXCZZvEEyFU5CrTfZzSwvVtEsYDNXjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756763994; c=relaxed/simple;
	bh=EAseFR2gwsaT4NHsVkvAwEz1L9CJX7fWJL/h+JezmWw=;
	h=To:Subject:From:Message-Id:Date; b=JI/ZxDQK6/iHRl7g2QouHCYFo5KMG74MBSebiue2e6W6Pabt5eTvXo46jxqyigUHUmDrJTAucYXg8mubbq/7A/Kv0sURFgoGdzsyPqIdVXQhVyaZP1ERUF1mMdCwFyVF7XaHEScUNTVFkDv1I22K36u5rpqv9NZmZvsM+UvtsNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1NYklVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1NYklVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D59C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756763993;
	bh=EAseFR2gwsaT4NHsVkvAwEz1L9CJX7fWJL/h+JezmWw=;
	h=To:Subject:From:Date:From;
	b=E1NYklVEUYUjsenbi+9ZJvws6PGULw/Q6IOXJ29y8vYQwdzvOnzD/5lHPnIAeM8xQ
	 m8Xrs8J2CiggaKy1W8sF2pZGXl34LNnx7jAfY1WVoFudkh2M249t1z2CmAW38P4tT0
	 sFaEbuGMvnUuuzp8k5bn+/BZdagG+6DnWU6uQMMtbFkxR6gwtJ5Qqsu8NJ5nLd2jEc
	 d998buP9sRPLg2vSoY29T2KV6NPF6MPtZdqRYR++DZDCjUpYlsUUH6urcX0Brg/rFJ
	 W/EE4XK7t1/JEPKYk+j+wAgfeYdmbJNUUkvpoqPKhmMEVlf0VmxkXILZHC7gV95Fh8
	 LCodfftAxDgjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B5CA1007
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676399357.20391.18155289726910202908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4daa90bceb8889853bf43501ad8db34cb9f4ff769bf320a6fb74534e3c8b549
Date: Mon, 01 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756763993
