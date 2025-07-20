Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B71174C08
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752976794; cv=none; b=nCazGMGdi0CN9aou/a2pfpRWizB0Yvb6Ux3zUvSZK+QNH67lKTfGbR8eegFVuJVws2+m9kA0hrWpjfaX6PmAAhG66sMQVktgkLhgddDTwC+I7ORIzlJUS20AZTn1yD7liNg2jzpyeg0gaKvtWWpva7TNsGZM9r2uxVDEwrbGOqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752976794; c=relaxed/simple;
	bh=F7NaglmCSiGj4Ehn3JLyc7ZdjMgbobSD3L+r8O0x9ic=;
	h=To:Subject:From:Message-Id:Date; b=rQqt4RX007Ae8gUgOtzfHIrK4WeGaVQvQfdb1Engv4ytDQop636RmG+F/EV4ouVXxrn1BYTEacTQq7jCjA3YVDdCLw2V9gUUvNCnnmgZacrOKogkMTncmU+hLj4w04SuIFjjk1af4yNDag/HDHW1TiuqSfJWN+5JgTd/PzhbfNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDA+WRFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDA+WRFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FDBC4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752976793;
	bh=F7NaglmCSiGj4Ehn3JLyc7ZdjMgbobSD3L+r8O0x9ic=;
	h=To:Subject:From:Date:From;
	b=MDA+WRFj9D4eWtR5TfrmJig6zlAkXpDzI7REWAeCwk1oHyiQ/BwO/2R3PjBMEVNQ5
	 xGNuh4b5m0hsE9uh+54Ozy8RGu0hDtPqTSvg6s5Y84aZaPqVOW1NAGZ7ni4M9HzVmh
	 2esW1Bk3Ja1KG6mVMjpTKShrEUM/8qcF1tEK7AVBnqYtoEk4vhsWlpU6m6k7PwIF56
	 L6CRPgFiNp3KpMXCjy4+T4TAeEwEwb9qM9QdLceqXaYLhJxXM4eHJvNN2Im2PKkhQj
	 iPSpEE08kA/MYKctloygSjrUjQeulbH3CRxNo8Y2H65I9575gz50SEqW6czUUEYHnQ
	 RKzC27CSANkIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F79C83F27
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297679358.24626.18060662923358414999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b396f3a12284bd4eb818b133e3c9e9557ea7661d57cf5753315b0d0897552e
Date: Sun, 20 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752976793
