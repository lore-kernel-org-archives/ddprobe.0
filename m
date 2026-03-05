Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195BB1A01BE
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772677494; cv=none; b=n4UuOjRz1ro8l1v9EMdOC5poe1DZEc0omzWgZ0K2C+vWkx5D8fHk6l4DhEYybuOt6dZB3hWxRSHMNbGSA9GColU1WumhIZgxqN2kxQjt7ZK94rfYg3PYeTb6/sgFOIAT7iI4VsVbZ6vl/KSMbw0UhRjQhB4Zo0MpuBrLSuiLXn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772677494; c=relaxed/simple;
	bh=FzvTjZCM6kf1rVcnzqIla0uOb8HDiviTwg9psk3WA+8=;
	h=To:Subject:From:Message-Id:Date; b=PNJVS3wJSsS+e5ou0GBKD4mfVOi07fGVIN/+qUqE/OX8te8R0WEaxYvGVyD9EJcURaPw1mnlSCd4Q5Pfm22HV0BK/lR9QY3K1POqUXRYzszExVj+ZKfsQW1KZl4IbKFoiPF1iOEo1nKtH8hwkXQO1/nFKQ9Lwn+ELI0UF0o43Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4YyQVGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4YyQVGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03A9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772677493;
	bh=FzvTjZCM6kf1rVcnzqIla0uOb8HDiviTwg9psk3WA+8=;
	h=To:Subject:From:Date:From;
	b=B4YyQVGFhI29Ycf42OtwyW9HwJCgAuz4MkwAnMJk0TX9diQz3Jtdk0q2sDFzb43OJ
	 xVOZy+sdcRXvL2VjF3rkMVEVKLQAV7MLQpy1LT4OWFEZzNMBRC8Fp1W4wjBmq8Gv/P
	 bJWbOL1gtQUndX2/Rkc+m5V/XKwfDqbc3HFjJhyHjswqJ8rm+tc8SkTEiLHY+eRyCh
	 XW0EBLmT8igbwN/hnWd3N8eQz8O9grRBYoFsrMqnA1JJqjIUD8bZsm4f7oAhlijmXG
	 Ytw8sCmA4WKO32P6JY0GBUZyJ86mtEda2IC/nI887Ec55i5kl454VxQofrMELoLWjp
	 L9l1le7gif0rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3458EFCE43
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267749363.11334.11656327412871169712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc48bb050340b160dce7ae18da9919511e532b25daa0e40f630be3b695b372ec
Date: Thu, 05 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772677493
