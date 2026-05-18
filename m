Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD9C405C49
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779067834; cv=none; b=WyoR7pe8YhpYaCWpWr0SiDdikWfma2UpnWiwbjQr1eBEq0KB5PNIe0OMVuwFU9UZDIwgI8Kw96vAC+PH8Ex+GVEeuwFfW1hbl55lPL0bc4ZbGR+3AO6cPU0/CsYIasWW4AzRZWSf9RiwiyMdKli6BxmWHZu353hOv/z8b+iSpk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779067834; c=relaxed/simple;
	bh=k9NkXpPaBEWGHS+L2+MxL9LziVcfjr0mNQC3xv2CcTQ=;
	h=To:Subject:From:Message-Id:Date; b=OnpFX8Ef2Q5fmqObH3ojCIg8FipaKEDZ2rOZryHGomzB6ndCraJlhMOJFClHBhgI46FEN+novsYh59K/g1J4plVyX54m8jMQK5lhDWR28puLaeHodC7qsOrWXZpQ7lje8H1/3/utwY3NQgN+U41MZyOEMk5fdAoMyG+NUn+ENYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sePIL6vh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sePIL6vh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA982C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779067833;
	bh=k9NkXpPaBEWGHS+L2+MxL9LziVcfjr0mNQC3xv2CcTQ=;
	h=To:Subject:From:Date:From;
	b=sePIL6vhiZTDmSMtyqI4snE0gRV7WnS4A6uz5nfN3okQoFuUYGQGa27iAI7qJnk6i
	 eW5CEXT4CIoa5j2uqvHPUPGWyVQbLCshNGLxsOE6dloNp3x43rUjmf0oMKbYi6EK9S
	 7ZdbPCGTsrBGAxrV8DneGaIXvggCumlpbR2HF94HZb7sctrO6H0jiozQrRyL661aUn
	 RgRNQfzJhyEcPTQe2ThgcV5UOQl/6La6vobpHmxDfvmu/z75o8+b2lJkwUHsrmsKf7
	 QDbA7rRuT9v1SYy1EZVsm7ai42z1G5MFvKKW9X5uQA+OBJePmVuf/Na0m/E3jzWOs7
	 1bR6BD5WkTwUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E70CD4F3D
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906783371.7674.14207968915046538270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565870568a7e00f9cfa06160b014ab513b4cfb5ab49acec1368b7f023d2e0166
Date: Mon, 18 May 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779067833
