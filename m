Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C0D380FE7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786597234; cv=none; b=hITjU6A6W9DmeuibTK54QR3rmXi/CS9R4xMqVplwIY1heBUb9EPQBFkCofgPHmHdQT+w9lc/kXX/JpZ0EzbFZ3f8MncNShV4QaaXtjIscJI4K9b3/LunqOUK90LOG1r6K7RAAHCv55Bb1BwIqPTGQBx9rOfXHr7gSSn++W4qZ+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786597234; c=relaxed/simple;
	bh=C4mIh0dR9z/NOEbUb0Blv2Y6lQGbjvpL9vxCoj+IyxA=;
	h=To:Subject:From:Message-Id:Date; b=VZ2F0rki9a4+Cqog2kZQ+Z+QojqLDnml6SRTK+rLeS7QSybaiAIj7F1g+SYVYT/GB3DaGi0vdN/rSyfk9tFF2y/8fkO6rnRCdPdTW6oy3jZ1UZAjevu/KPlZOD9VRaKN0A+Z7RQKruGHSu7sQEN+rd94MzH8GD+HwQ2hrVVxsS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C18a3JZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C18a3JZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A36C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786597233;
	bh=C4mIh0dR9z/NOEbUb0Blv2Y6lQGbjvpL9vxCoj+IyxA=;
	h=To:Subject:From:Date:From;
	b=C18a3JZe28tbKMA0qqquRJwtSW4ZsTSv3i+Yk3zgsuWSXoqXJJup9v9lj+2IilbHU
	 mGrf0MfAKaYG/fVtAKCYxRfMMiqqz01nFApTUxB529e6cNbeVDMESdvW2nxGDyO8Gm
	 HS5k2P7FfRWiio+6xQQXO5NMUJlYcbXHvnFjUxl0uTk/XzrdeZP5rH/xH5z4t55B0o
	 H1Yve97hNZqRVmARvfe1nMJMzBd1+6fHVG2ncgMhzO/7M4QpqVt+QMmcCM/gDmrN0D
	 5jKJKx+5GuOGnqCtvVkQ2B9KPh5lf8Q+GC64OaUe3nWA8CcZbNE/TXivyHvy5YKtb1
	 vIfrl31E11lNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE73AC5AC67
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659723368.10804.17338509875731163415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db5580224c4f355ddfbdb88744598a57d133fd49659a24f176d45a64394a583
Date: Thu, 13 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786597233
