Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295E62E92BC
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765512174; cv=none; b=jUgNwMVACdyTZkQ79rC1dgpicdlkJgMRqAWHZjgk4oxEBbTTVZO5SK71AGLQg03H3EWLzVMTtZUvSP8tL4jtFMX8Z/FcqloBCAa583NrHg1+60TjDuWQGZxz1NZp1Pdh6XeLjZOuyFuSTasBn50/IgnnmpNHqO17czrAP9wHgyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765512174; c=relaxed/simple;
	bh=UqRhMxr0QokptKqOWolMjc631rfhIO2O99DnbIZj1fk=;
	h=To:Subject:From:Message-Id:Date; b=VP98lYu7ah1uORZeNjJks+WB+Ou+MF3JFmwTJIhTbwpFpPmPCqY8Al0fgdacujH18thIZHDGdt6nM+c2hDPciY7gn9nGhYdzsq1SvEsKWqp9LNH5415iZjd8bEZaeBHS1OMGMwC2SHW98FxFmjd9sT+SLq4YsudvFMoRdvU8Om8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocJ58iPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocJ58iPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEACCC116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765512173;
	bh=UqRhMxr0QokptKqOWolMjc631rfhIO2O99DnbIZj1fk=;
	h=To:Subject:From:Date:From;
	b=ocJ58iPN+0HNLKO3eWlC2yzNAIkoI8gqIm7Uf1RGmVWNj24TLHwTEPszBc6CT8+Qo
	 x0Ip1oD8fUFxXTzVS5OHMIbXstIDFsPnxEQaV9HBIun1QzrhzO+sMCZH7OsKmDNDf4
	 EcoVEWRfUrDUlJdykK76SL1gslJVHX04eLFUTFeZAGogwgA5nXGOaQU4vajMTSnMA1
	 NhrQUQcvSnw3zkzWIO5exulUkqpJcXkiBAm4QqFdFsLgDeiaH1uaJTkE4uptt1mAjF
	 dcGmCv9YoD26L+cGVV9gyVOdZ0XbkyGw4Zl+M49RMNxW6gJ6Nvu/i0djzStnMXY/K6
	 H1u4XdgkCk0eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936F9D4336B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551217359.18653.295886912608357390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0a29f40b2e64cb0ad6691c77a531f71e4929933a9ba59d40bd1386f419f21e
Date: Fri, 12 Dec 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765512173
