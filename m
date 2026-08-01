Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687C31684B0
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785547834; cv=none; b=ahUa+2cQUndbRnoa+lRblSJ9WQLvXra8JYGE40cDjmTrNX0WdLN1zUDeemiQUvLxOBkdJuf/qHQEyJ6LzB/x9O6i7T9WqUSC+QwDm2IBWlNmHe7xkfZDscpvkY76/W+I6txMQV+nGshrmHCLmmt+1c4xlKbyHVVwcy6EatTC+To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785547834; c=relaxed/simple;
	bh=2UKCUpLC29EzWMCQn6uXlfvGgL8R/9wvtgmcvp7fwMs=;
	h=To:Subject:From:Message-Id:Date; b=uCQxi+/VFQ/U9xDqRRNhH5kiYNgjRrEQZsIxQnJOzmLjcsMxIEtYhdJjdhUHV4D9xInynuee3kqNzZbbR88iyH4VqAkTjT0HgPi+PrN4Ku07pym1u2uYI/zJSGfXRVtiins7WNr+ebyt36Ovywrqch2WEpkF04gVL28F0woT9Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CliUz5//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CliUz5//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E03ECC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785547833;
	bh=2UKCUpLC29EzWMCQn6uXlfvGgL8R/9wvtgmcvp7fwMs=;
	h=To:Subject:From:Date:From;
	b=CliUz5//Dn3l/QWiEzs/RP4+b99U91IkSvJTv3f2300UL4PyKULCEhLC6SR8Wu+ZX
	 JEFRd0RXMeBqyAT0R4nR4hhXlhVtWQMU/M44AP3qh3tsALx6/1/aGg8yn0rjIHRNp8
	 KqHzxDwqvbCjTi3inMdhgyxik1Wm85JHIUSIRh1U7cJmwKm0Csqwm5zlY3HFk7wxKn
	 EY67QH7xcEAHTJlTf8Ms1heAAkAHMR9qoqoZC5PxWG0bN0o/2ketaftgI3j+jPudqU
	 xYmlnODyfm3Lo2Ziaups3TxRGlQeQ1dRVFpeUVBJNCjenJlbhtt//efTr9T8JmZn6L
	 Y57PYdi1huGjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B622CC55171
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554783370.24353.18439673757227950863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813748c458afc7314a31ae35d4f9ce49cb69fe94b70ad58959f32df26f252a1d
Date: Sat, 01 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785547833
