Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF8037FF5F
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769077434; cv=none; b=U45lji9MnH59h4jLllFGNGZuEq5bF21EiqpVVnksAfHERpSuDzUdPtWDgABt5BK+uBQ0i8QJuHvfWoH2iIhoM7Jwflm4VUrQYR+cexaf8JSrfh/MNabIk8XDdm/Afwpuz9dE+fnmMs/IDMcfomQO1UPDjYv9T26hYlDG0xfbImI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769077434; c=relaxed/simple;
	bh=CJNzv+rztt+FEkmIidjEJdT9+EqyH5MAbIE7vmIF2lQ=;
	h=To:Subject:From:Message-Id:Date; b=cfcNI3YFAR/GlqFHijDC4fUd/BOLjKZc+idpg7IrmPUYljqIVfInFluI+rkSIHl3Rr/y18Ta72briqJE6JJR7atQSUnX64Tqb5ojiQL4Z+aAkX5/S8Wh4hCKKbpz+PcA59jcwxReRexSrrleOjMZrkTnhuzFxIoNWd6WRx4Vskw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjX3Pvsu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjX3Pvsu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6CFC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769077433;
	bh=CJNzv+rztt+FEkmIidjEJdT9+EqyH5MAbIE7vmIF2lQ=;
	h=To:Subject:From:Date:From;
	b=HjX3Pvsul32poYJEgJ2p5VPQW5LBmy3F6MA6HNgrGZM5fgTWw1/RG4VFetbyemOPk
	 mwBKTNbVrzpf9q6qSOTh1d7ylPgNSTZuOZqwz9KA8dZqW+RXTz2zrpfL7G0h75ROpi
	 WG9hS7iXbGMRER/VyoXKA29xU/RxzwIVbdRVV5+8AjBzKqiFxPy5cmU21EHOMlIkaJ
	 1wZZU0MH8+sl6C95QoGJnjp2oL/ROICNxfmeXA7Kn1vX1tv1KgYLCXP2HYzD2DZCZ8
	 SoRadiMXaaQF5CrtI+Vccw9LPSnhUGR13Wztf7fLCVNkRoPT8PNjRCGcr5Vi3z6ej+
	 t2uuvZowdolpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E282C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907743363.18061.656749940056888637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b6cc0496fa048b167bf55b0facfac957e62aba7777191f6844a9ce72231c9b4
Date: Thu, 22 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769077433
