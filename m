Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E80C280332
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752229194; cv=none; b=Z7mZLfevKCq21vvIEKnTd9UlHWccGcrOBevBnMYo6SUTHsD1zM0WrbNaeTe3IJqPDDxwsD9DTZmCSySN2hD3mCe/EkPYUUwG5L6XY+bX0mplEDg2+/ob2psLD1rog1PWzhBLSYH5awuCzst0IqpqbBJ6LlLuh33NISINsTiakm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752229194; c=relaxed/simple;
	bh=dr7OYeN70p91x2CCb+IEAh6FL3mbYAnlyXJV7UHHirU=;
	h=To:Subject:From:Message-Id:Date; b=W3IKSAg+unuLVoFKKvfPPmkVHX3zgjqehdSbdA45opooPrltcrezDTjDHBSi3ilzGe/wQBs0L0KXC4trjvqAooA4Dm7phUauxArEg6YVm+FJl8O6ROs34uLoj84vA0/BEYq3HWDaiIfO7UrjVS6ZDka1q8yEm3QNlV0TD5jSWr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pW82Y67/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pW82Y67/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6505C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752229193;
	bh=dr7OYeN70p91x2CCb+IEAh6FL3mbYAnlyXJV7UHHirU=;
	h=To:Subject:From:Date:From;
	b=pW82Y67/IHMImY97z+kV7mw1JnGIoFFsUmcSn98H+47t+3f4u9JM75j+17HdZ01JT
	 Qks/btJLktKwjzCCmrsItnNsB0qKmCjF8OEhJndoz9PkELyNcKlPRUQ69yaGnPR9jO
	 pIiPvMUZ6+CFR0/EZgkcnsKgY7d55iYQ8H5Rt2AnDG7gOUmD18nia4gpx6ZBS1sWGf
	 e8ucKwkV02UJn7ksExcoJmm+jS/0StJ6oLsF3ELXp74m0mtrCtW8PiTTbSFI8T0X4T
	 LL1c6vV9Q2Ntp1cJCLPMhhNFXIAQPz7igtvEZGPlxDuEryLw5CaTQrckG2af8jdnko
	 jHnyBIM3tkLTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96435C8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222919358.3073.8940297683510854319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c4f988145d0c87ec572a13f4926c320fae9a1ec03b47aad89a447882f6a44e
Date: Fri, 11 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752229193
