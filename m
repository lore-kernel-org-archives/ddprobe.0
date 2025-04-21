Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3383884039
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745249395; cv=none; b=GtRXECCITY3s9lnoeGk6C5E81JqoIQJWa8mqtQGUy6npm/f+qpMdqwrVSXWdvrnbL7dynGFeQZl4c2zEey2nOKGl6e810ciUbZ5ZrSIPelU0RFrNSToYiOMOXuhWJo297DWKg/xFJLqwBf/sVBDdw/i3JL3jpNI6quShyy0w2lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745249395; c=relaxed/simple;
	bh=pnaidhEp1TWrReSrg03XyyMN5B7O6b9uR+6dHoidygQ=;
	h=To:Subject:From:Message-Id:Date; b=INTC8AHD0Tv1FDVLIaviYz91wq4idSixL+JF3zFhBFcpntKTD65fmJE8XAxPCsWyEVmW8+tdUbONtfkrLKrSAm30uSeLV+ktlWJMy+lkjK8zoXjgp2PR5pcmHYJU7GHu48FU55/J0gd9vQNN9D9JCahDFhp9yRFMiIlc/+fwVxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qi6ZYmWv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qi6ZYmWv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA493C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745249393;
	bh=pnaidhEp1TWrReSrg03XyyMN5B7O6b9uR+6dHoidygQ=;
	h=To:Subject:From:Date:From;
	b=Qi6ZYmWvK2DM80WmRuUny1ujU1xh3HDIvXW1TwhlbotYfumnB8PUe0H64hW2dgdGJ
	 VGZSyT9UbjvOYKL9lOJnziQDUyh8/f89LI8DJmEtClcZYjN0JyRRFQtewo80E7tSJ4
	 pv9uijvtS8Ml8vlW4qXaK4/sH4G6vW7EFRgIJSGrWzVFDYV2DyLtr8Maj4cGGoJLZv
	 P/Akk7E3T97W+5EpdwDbsvPwGaSmo45csa9aoaigrYokVLwYj2WDdTKgylPAOBdo/8
	 AefyzLcww4Cthih0V7ldlnPVUj3mMv4551agoVi5AAos24ofXRI3b+rCMaF42dC0Fc
	 cszKhTDodGynQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CB1C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174524939358.2889.4278810742343114075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b632c3733351600d3a5fe7b55df7d445ef262712c0e1510ee4c67335680ea2
Date: Mon, 21 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745249393
