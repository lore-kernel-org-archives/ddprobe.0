Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4908528E7
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735627554; cv=none; b=HQAE/ghBhc8jgx/p0iUgmNHLid8Xx+4eo7ypbM6A3XpZIwCFwf0Q1vEg+L1+8HIDY2fLxLlNY8CRFXaHUi6lv8T/M8iHf87eGMBBPFkEvZDmbnThmyO8y/2vbaRcVjPo4fB3uQ+pBESTxK1XxvSEm/Z0+PLQgvDBK/tfOKuK5jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735627554; c=relaxed/simple;
	bh=8RgBx17QPEWM8YYNodsCDRlN+tdhU6Km5topYdrH1L8=;
	h=To:Subject:From:Message-Id:Date; b=i4HyFMcYBTNRlAAAorjiLMSnMiA72gdtjpgbSlTXFeFAjEA8G3eudrcPQRq3MSX1CbfUG+NfWuWprxh19J5Yxt+O4wfix5XaM1YSZctxhuSYCS3jhL/l/7U2zVSn9ZTsCzL3ETpizWsBrINq7dSNATbwawWCsCDZ1/qS/nuskVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mayZWhOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mayZWhOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67F3C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735627553;
	bh=8RgBx17QPEWM8YYNodsCDRlN+tdhU6Km5topYdrH1L8=;
	h=To:Subject:From:Date:From;
	b=mayZWhOCrbLGz2l88IH8Td4NMUWmKgWmc5nKmHUfASpM6LLg8N24UIuowX6okmtGX
	 s8yTTVGNGkPjPNhHZjF1ujnSJOLNgc9a2QQqXIsMI0BaFOM61JmTzqM3HiGAi1eYN0
	 t41vtPRu60Mft/9N+OC3Fmo72Wyx/86qcGMpP2aXm+RVNAoizz6vi3thzdnHKmtuxK
	 U8Ib90HKRYESDKoxQ1rwd84kLHJowqKGt2D8J4NgNuxTE3/oaZjCqHG20/tN3gFnL6
	 bp+tdnRmR1adwbzLNx1T3ssgyC0ZLIELg+52PWT5X08A5MCdBphxAyPwSIvA+y3/5Z
	 IzFsjcB32Wl/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C4EE77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173562755358.31913.16832720173140928178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 758eb6ff5c010c7f8090520291d62cdd027c401344e51eddc36339007d0627a2
Date: Tue, 31 Dec 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735627553
