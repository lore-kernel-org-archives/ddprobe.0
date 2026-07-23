Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF8912C534
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784768974; cv=none; b=SvdKG0mCyfUebAQMD9IMR43Ou/qtAEmmGBfr+pQfeV9Cbq8wGSaQTqmdgT0Uqsbc4mfDiq7Sr5t88m7DoU9ZhT0LpXqbMl+H0H0pgYsLcTK8onaZmh7vz5dywyjgDwVbLi8AlaPdjXkhpPjGuh5+KePdupiLGI+TlvuX6jiEG/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784768974; c=relaxed/simple;
	bh=c7C142cK8KiGGicGmsBM4yw1n+Al6HcB2Nx4n+jVXzA=;
	h=To:Subject:From:Message-Id:Date; b=MuN81Pbg1qS8mUioDCHDNAQw0kyyNI4j2cFOj+NELQw0fsY0nccSIWbmgo0F+Mv2zf6PVJAP2cXk7CwCLUlHFpeilspfZCEjT/PIneKpkazK/gXR+KhD4hBvpB5ZGaSCTQmVe+ZwI9xYHrw4I8/4YoyKWL+lYtDtZcFFy3cnCPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nu6Yq+Io; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nu6Yq+Io"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97B8C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784768973;
	bh=c7C142cK8KiGGicGmsBM4yw1n+Al6HcB2Nx4n+jVXzA=;
	h=To:Subject:From:Date:From;
	b=nu6Yq+IohFO0jSZlZGopmQgCAISDrzOH5HuAuI7t/GQ8qkztUL0LWW/2/RnuU3vRK
	 ba2K+0LxlYz8hyWlyGo5g+Z5XLZWI3VhVMeY7m+9Osh4TaBGhzMkDv+6p7jroaBKzL
	 5IYAqhL8lIOU6svpjSpJYQdH9Ger1YWWrJdO7/OmLEn1a44AvlzI5S3tcnyZlz95kL
	 k/VZwpZDA3P/6JQGwQgs61LI0owvOyj7U6KPkCr6wO3G9hKBs6nglznCK458aALbRN
	 p803rpmILTH3L2pZy9cOBmU5UDeXbIeppGw2W+STEsGhuSjwiGE5y7+/UfJ3+vka8D
	 N3GDeF6baP9ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7C9C44536
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178476897368.30832.14120619603310597127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a36635e5731cdc0b4e285baef6148147b603fed1e1309808f6829b08adb51ac3
Date: Thu, 23 Jul 2026 01:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784768973
