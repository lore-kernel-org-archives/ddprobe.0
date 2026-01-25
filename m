Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DFB1D54FA
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769319234; cv=none; b=GK46G4cByWqACry7sr+c5u5tsE0teHnuvsvJX0QHFKxJdgMPmHQCByRa9vU7crTLTJGVyXqd3yxTWBdiifGhbNynj8V2NffL6VhDmBNvJ1Z96L6UVd8kKCGF1DH/4OQ3Mb41TAv6MIQHg7QaVOpfgR/WqdSSCzGfKlqcSMJQhN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769319234; c=relaxed/simple;
	bh=VZsfOmDp/jgoaWd++o9Q7V+D5avVAYamUgQHr2Qpqq8=;
	h=To:Subject:From:Message-Id:Date; b=YwoL3P2BdO1hTZTOg0utmqgiU+hgbs1p5rBgKJgqrNYEZRTccEavkdibuRgkR68b707jk0HVB873ptSXHKs5Qp17kT2iT49nNSo3024UncuiPnbFkBnk1cjU5Sdh0IB+y5MNKL7Vcpg0fRfB9an7Oo/zPkXDt26OBDIL+3D8tJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5pmWh5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5pmWh5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A33C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769319233;
	bh=VZsfOmDp/jgoaWd++o9Q7V+D5avVAYamUgQHr2Qpqq8=;
	h=To:Subject:From:Date:From;
	b=I5pmWh5FkDbhBAbUcpDC1DqSqkLYN/DJ56sjRe01L+hBrZz4am0g3zQ6qJascGHy5
	 Ia5Fs1D+N8pktPHQX6QGtWFKk226cFFTLh0919HVfx24mOrkhf6g/GEMQniaQUtykD
	 HsN7ympAe1VM7bb19NxfBCwogIz+dQQuDytQBKyBMkb2fgdVojlWW+yZfIPQj8fgBt
	 3L1K2D4jCK6Pw5NKgJv1oBVPU2DbmeUCcxqvWk5Q4u+kIeBI/I4K87EGphR0KJT9MN
	 c1GAPD90muEMTIwAEEc3QAX292NtOVYNxzicuFHNDGNQYt81Vj0Yiqd/fzrOJcvBcq
	 fU0GpoHu5DDbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972EDE63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931923358.9953.8637937108906992687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621848ba1351abceeada759f5eceb29ca84ffd413e99f2b89276d7eb5b9064df
Date: Sun, 25 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769319233
