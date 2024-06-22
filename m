Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588C2C8E0
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719081143; cv=none; b=V11jREYIjJmClp8G7lQOuEQ3tgcRe0HUOk9gga7dWPcWUIcZBunEO5p9JhOg7HedJKVhJlQesdj7GZE0Rpyb7pehYMfoqTfTma/CrwUPKTauyVRomCm8fErpaAcsLI8grl59KV3a/BQFWx8G+iF+woQTSBZcFjGDDqjFh+kgavU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719081143; c=relaxed/simple;
	bh=7miKsQlEQX4saan3o5tRPaVVPNuCBoS9y376Dwg+DDw=;
	h=To:Subject:From:Message-Id:Date; b=n+IKtzRw74ZJpbZ3Jmnt94y7f/BzC+Gjs+iHHEQM2Dg16U1DTx40xH0UlXT5aH9KDIHGxhSO2ijuvxOf6tWwg7j/l4dLtV1MDDAWYq8t2WAEPqngJBso2u0pw0mZ0DaV2KUpgPdtLDqBQ3Uau90hi6vL1HuKd2hhGPIC0+IXbT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEKlaOWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEKlaOWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F3EC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719081142;
	bh=7miKsQlEQX4saan3o5tRPaVVPNuCBoS9y376Dwg+DDw=;
	h=To:Subject:From:Date:From;
	b=XEKlaOWSR92JKK0BUF0nI09/eHFPZ5FmHdfhbpo+693i0sLlO+nBBgyX2jpv8OoCM
	 i9Da/hEhl/txIbTS7/KsSuQ06RH/8OnWLQVc91DzWYT2xZ29YA45x8Fmnf9MybNI2/
	 pwtPBLCxECK9xXHy+0K+cRptzYSGJBlxGM/pgf1HF7z1OaCY6pKnUELR5SFZWWyYlc
	 jfcNxncSkeFsKRqXUhLAnnbGapX3QSKRfFR03orOE0QwyNgXlMJ0imCVrJ5w8dnSnk
	 WOErrrqgiiteg/GZsGw2mIJESFSpEb5tdVc+GnuXM4MlQDoBsC+bav5zkZQDSe0NW3
	 aM00WU8m4SN/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF745C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171908114277.31036.13116626942170126279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8c3e924ab74610e313f8a373a2cb36309fe74e749800f94aff4584cb9882fbd
Date: Sat, 22 Jun 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719081142
