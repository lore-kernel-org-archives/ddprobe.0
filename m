Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE36379966
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787183434; cv=none; b=dERRg8LucTo4doCpD8Rzez/pv1i1e7QpTrPMDzFRjbDRz2XZy35Ny8or1wvRv2xJv8ksLZc5MQArLt9Z/DCEo91WxZht/1p/tOImfdErvtIUuxr9MoZVuGH7v6elrn3pyrcWioIZ3Lsx7vF9ceY3wg6w9oJHA2Cm58FLTw0MmUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787183434; c=relaxed/simple;
	bh=NuLXOWVmFCXlPRM9YoSdrlKRXXdnC1GyA8IA4hSGTlQ=;
	h=To:Subject:From:Message-Id:Date; b=eP/jL+cPmRxvEDAiB5+81t8qr6cCfLebAxpJDlCvk/kC9SbYEisneDVq0UTfTakZt6s4Kgc+f/X/Xkr+vcXZbBVYbIs79tnvWUt4ju3VKOC1bitNSayXKh/4cXBiYsRVR0ZdN6rytq2ZXPO/g0NsEgqZe9LYvttmIV4ucnkbAl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gwb0WJcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gwb0WJcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14CAC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787183433;
	bh=NuLXOWVmFCXlPRM9YoSdrlKRXXdnC1GyA8IA4hSGTlQ=;
	h=To:Subject:From:Date:From;
	b=Gwb0WJcLAAs6rI6sBUdTN5VDjPfuKGCnWhT4bDDOS0VdzuRMjoJZX7uJZEBdxYm5s
	 QtQtqpN4MTiCUB+6feclgCDSxY3gcn3NeLeht58VnqEvDE6XdUshg1IXI54Zcht014
	 hC27z4koe/ZyEKgkIPpVDQaMre55BMJLr0lDnZL/s6qwxZe+1tySHxjhVi+wvlQoit
	 ZG+eVA6zz98iWJCCNCFOT6fUCR23zfWmddspd+MBlRaWtmd8LK9kiXk3QghEvWoRvq
	 dooHswgbry3lNgB4i4kTRdEeIYzNruH5+/4nIFjrtcS3BWVfFzVsBSBpit0d0xhcIq
	 nQxrceu4lWA3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC648C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178718343369.5377.8700154229583657920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8790a9143ae926c19aec9acd3783bb9ae78bc081ba2c12f7326be3df638283e3
Date: Wed, 19 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787183433
