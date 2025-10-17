Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0920A332EA4
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760701194; cv=none; b=RxbhARbWu7i3OHUCCHZItczFdLQTU2wEGOv56ICPQN+s4baOTJRMPprHe4ayMGgIa8nUCfJVYRzXs9YY3J1ITrfuPhfnYQUnRXrxGTtadvwFGBXF6PBuom5gsqD94zn/1I8ERd6uev468e+2NmlTcGTVTQcKuBUVyjV6hOI+GbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760701194; c=relaxed/simple;
	bh=gAa7Tqblc/KiqK9ouWO0P3O2hSrC3okU+402gmJ3jmo=;
	h=To:Subject:From:Message-Id:Date; b=GSkVUZtdGg/haVYo9fpVfFgf2d/Wsk4+vAmRQ4cy6Yj4QvekoluWvppwpMvrGTHLkUSbe6StvAiz0oB06k70ADDVegbg+qPsfhYhJ0wOu4Z8hbr8J6JXLD2pB4q7VHnN8J6r0Mg11NagwSiLc5Ih4RcIhG+CGY4pKWj1BiVg6l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6LIVFF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6LIVFF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E05DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760701193;
	bh=gAa7Tqblc/KiqK9ouWO0P3O2hSrC3okU+402gmJ3jmo=;
	h=To:Subject:From:Date:From;
	b=H6LIVFF/Iq9Te59otNNx4FgylYCMJe4l6sgC8+lQHv19xQkHCY0UycIxBtmdlGX3F
	 dAu00gSbB5MFnQC4D6T/QFbMfeYkqExAqFuv/skvBD56oKcHkiydM0sYptJ5dbGeuj
	 IassoMi62TObQEvgwyF5jh+CT6o65DvC9xqhCWlBwR4xJyvA5Pnjt65Fsr5p/QOXyT
	 Lg1s60gJfm5CbB9qLtlm6KlJtj5uVN/sLheO30YeCaucPpRVYmM9aNuT2QEXCtGSDd
	 lusYQkK/27gHBEZP+l0Ud0ELdMoV3Bho3/NC4syR989kiHL7qtr467ajkuOjJIHT+i
	 n9YFyzjqmnxFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F088CCD19A
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176070119357.1908.4781061117907519063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9123c2e678b3d1a2844b2a98c4587a140ed4aa8398d7e08d09e33bd61139379
Date: Fri, 17 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760701193
