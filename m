Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAC2C2E0
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729998355; cv=none; b=a4BtRgdeusXuyh0RDYHC9CQlT+02iPCwzYePZHLwzL47hEALto5B5bnaJoienBiUBdVhutcryNVNDaSnUkpRNSY16HFq/FBjQ3Rduw6VvrNYHNhpnGdqMvN/sk2CDeB4lYW9aJmpjJ1sMmLC/E8gxYGy9aSZkfHmmN7uzCdFSc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729998355; c=relaxed/simple;
	bh=z5/H8WAJOLX1YdypWNIEQtAa513bc3TI/D+mtgJzpLY=;
	h=To:Subject:From:Message-Id:Date; b=N47t/2Y0liwCAS8zGw5jKCnaDTFYu9zt89jvJ/UlmRUqJwrxuc9FRp5TkA3SjDCxWEqfJUUV/OLT4biI97N1rki5q45tSnELuCZcL0VwyDvXAAIEld8xpTnJbmId1XyxXfRoZIB6qex0KBp7Rtkzg+PStf7XWPR0CuT9xd0ltuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r698IoqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r698IoqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA01C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729998353;
	bh=z5/H8WAJOLX1YdypWNIEQtAa513bc3TI/D+mtgJzpLY=;
	h=To:Subject:From:Date:From;
	b=r698IoqM9QlaiiO0/A2W2/QVGvzPHDaMOdKtmIqTb8vAsD8/rUyfq8ylMNhXWZY/d
	 P/Xj6vK7j6UaGmO7Sx32TzEvKA5uYTremXN/OKjxWC30GnbVnfoPrY3tI1VX5yvzIE
	 UAGqKtcrCLLFJkxyf3E3zUR78alGli4tUiHJZOwerV0HskcKf2t54k0I2sCkKPMryk
	 czjsdnx1QUKfLTQ4muofkkVcrEaxIf++SjdrQ+OqTok0tt3p+b1bvKwoZp9BIDMv4X
	 dC6G0KhpkgR48KdZxTp2G7uFxVCAVPGdilmxu/q2kavc9ItPyyFdgRHRP2BW7F1KGd
	 d0cm6rdWAqf3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E5BD0C604
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172999835359.3354.8075967658943147991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54186b550b8ff9334a878a606dc737dac60a2fe360f74d74fd259a12f8718ca2
Date: Sun, 27 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729998353
