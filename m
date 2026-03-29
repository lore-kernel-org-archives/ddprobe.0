Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEE93C2E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774751094; cv=none; b=fot68wmMFQgc3rrlViRK9mGcTK6yVAuoFSH7DFxsBU5jujEIsYs9jj3p6bM1/UsJt2Em3gFEZfuJ0IKVztXLGiBeXxugLFg4sWabEyrHDDKLINqDYsA/td/tsye5x5iPViWAntmpfLRzh2nyYq1D0teVkjdAJBDT9fWOAoFaM7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774751094; c=relaxed/simple;
	bh=Zz3eMgVWJbIfieoEdNGyC1sjIjmb1RGwE1X/nILO08U=;
	h=To:Subject:From:Message-Id:Date; b=hifEDgxzqg+Kjs4BRxpZRVRqMIt0OOhDxj29oM+zS6CS0zesbkWisQVDxMFRF1KX6VC08hijUNvoWEibaYNC3nDDhKaUKDrTHUilLbuqzkVsh4hzTJZEHMBUHrcOPRbqRIKrUJ1G32haj1dEWk4Kqn+AWi5BGW3a0EsezvDKqXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2rfgx0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2rfgx0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A841FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774751093;
	bh=Zz3eMgVWJbIfieoEdNGyC1sjIjmb1RGwE1X/nILO08U=;
	h=To:Subject:From:Date:From;
	b=c2rfgx0v7zpGK/hKLbGhnfEzNGKZaKfwPZ2kSaXgtHJ5XbYn65kS8BXBDHPWoaw5C
	 rDV3L1cCScox2hUqTdMt3FUO39wYQQaL/f8AMkt+XwYLdpSDLXxNMKII/z9FJ2oHum
	 vqPNqAV85G/CdjS80wbe/jQKcW3YXAtS3pvK8rKv3BpMBwO381xyQ2GtvT815NiZ8k
	 rpFzeHXratCbCd2utASI2dEfNHDWOTWhH2A1Wpbasq3TRqxb9DUnoqJlGh8P33vT+Q
	 pbVWaR/xEShvKOPm8ab5z8ycRP1vfOm8f9KWzXKFH180Z5OFhEbAIoyOqulDGVK5W5
	 tbdrwmIkNabVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F9810D148A
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177475109358.4828.12018830129891673857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4e456fcfcdfd1ca213d2ecc2e4527669131d49f612766242bc9019e0847dca
Date: Sun, 29 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774751093
