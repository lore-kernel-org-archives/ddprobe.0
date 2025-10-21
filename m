Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153E634A3BA
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761071394; cv=none; b=tDlaI8wR32DlmesIDWOKfyntyzYi+sGFGV4hk6nJaV4sqFxd884T3wgxVnIDwxjWWtI5R7VQTJcXt0OS+BBLYeGxIoQo6d/aLyZg+jIauVR7DnA8chejypqV71OdZz2rzNBF6sQH+wHZfBAy/8MVg7T1eS09CbYCY0gXQdAS3xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761071394; c=relaxed/simple;
	bh=18rXqlKyvm3EaOQCwZAloqcd7utonW2t2VcrK10S7Nw=;
	h=To:Subject:From:Message-Id:Date; b=phT6mzui5awvJuuWBPQ9RuXif3nQFEib7DhyRN+iUO21+PFZpzZteDzGapYbzRLO8EWZGFYdbrDNWUMT9xNLzd62GjRzI69APFYvsamIWelQ6WRC8ufiH5k6K/fmJPNcuzKWMYVg0GOE10dseUTXUeQaLs/zVfz8bJ2cmMGMv7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ed5IC4+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ed5IC4+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98D9EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761071393;
	bh=18rXqlKyvm3EaOQCwZAloqcd7utonW2t2VcrK10S7Nw=;
	h=To:Subject:From:Date:From;
	b=ed5IC4+syqcfA3W2pcXdnH6eyz3Ym1W5BbT8CXXYtER84fdgEF3/6pEznksTuG+mI
	 XNEGfIu+y2BqEBrSB9ds9Z6Eg2hupIbhvqLcQx2V2fO304iJZI9mAhOTSSNn7am/UY
	 bOn4eC/JlmeRyNNnVis5URvKvvKD0KITC0dF7Uh5GoooUh8R3NrAD+Cjl0dSP+fKsx
	 gX8Q7kJzY0uSBeza++C/4EFbpKSJOO/H0sLh838POaRb78ye+MxEv4VFpM/5DVGadK
	 5JPqxzBTaHCoRpAxDWGcDYN+lktE2/gwVyYfR8q/xmq1ulFaugNjZMa+hOg3jPeOuM
	 RjCUUVki5La9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E45CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107139358.32593.15020445426188762475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e8ccca3404cc8cd8d3e335a3fb365331a27e509871b81e3b029c83357eb1e9
Date: Tue, 21 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761071393
