Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E4420E032
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756657795; cv=none; b=GHMBfjtVxhdOrBJAAPdpxSY4uShecZQtKwv7aPU3jiik5C5RvBgVznVPM8lwE6DLwQPUNy74wlysk3h/Boj7FY5Vt2pOKEoMgdeCOk36onRyRYfxpoiFlYUpne64zEBniw3Ot7z+2cBtu7v8xANMDZQ/oU50HpE0MdZ+zNIyiOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756657795; c=relaxed/simple;
	bh=YaEitj4GBLBFeiwdGlc3ZynIwgq5O2T84SEkozgkz0o=;
	h=To:Subject:From:Message-Id:Date; b=RO3ig1Dq9rl0IJmJ7zpoBXHHCouuupM+RSPj4tkVjTpCLaZiS6WH7PTQINZicgUvIFWcdX40Lf47xh5/zuKIPnUGbXo87GHHLurbqUV/DDa2k5Skh0vjC6+k7hpbhJvoPrcQ+5WbdM4Z4GKa0gsf7Vdq79+xtFm5rzWknJwipmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFaiFPMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFaiFPMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2930C4CEF6
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756657793;
	bh=YaEitj4GBLBFeiwdGlc3ZynIwgq5O2T84SEkozgkz0o=;
	h=To:Subject:From:Date:From;
	b=UFaiFPMqgy182H2dAQeHFW8jrySHB+dNMUeMILg8gdOo0SG1WyxPdFJA6Nv4Y+5Zy
	 CaAyFjdqDSgUtbDXpWNMBweB8hYzq2/17ogfPm5RB5c/rATwLabYDJjUawjiFzRkJY
	 pFIL9bdSjy2C+RJxGjazlhBcvVhhY51SzDTLtKEASjUziwVXEmOpt5oNeRE6yoOJAf
	 +XdwcqU5deIZlBWattP57IEPuIymyLNVHeMA/eTKFqBwtkwmzgZQSdiy1QBiDi8zYL
	 BT2vAN0iqEl3J0F5KMhcIJOw10PaSyV90Mi8BAmK/PT7kAQcIQSRmqogelRommFj9l
	 p6RR83grKrbyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92688CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175665779357.10471.7149327925327750542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36bafabd03a1bcc3c15691619c9f022cbc86cfbba74fe0295a715ba51c5c91be
Date: Sun, 31 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756657793
