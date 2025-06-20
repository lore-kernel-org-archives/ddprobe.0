Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DC5229B1E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750412994; cv=none; b=rrJq0xSh9ywnfJzOa93a58N9CmoT+BX+CzCJvnVdPE9pG1rs0LCx4sPU/ntKZ7XTeAiGIAIC0HsAfqPJMmbfngfBPtrvdyEk7/JZl0b4EIp6jAW6Wi2E1xW9Cg2DWz2lg0KSWaJuxuown2Vhc6nhMbyQ3Yc/EUKl5onNq2AztRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750412994; c=relaxed/simple;
	bh=S3G44IvN3CvxyjREI3ty3xvo+IVxqQgjhhn9asNOOJU=;
	h=To:Subject:From:Message-Id:Date; b=ay2FCbobcCFdzHyOEWiqVCROM0ngKqfhcCFp95DBnkU+07/F0JiG0uyqI53+e4dZnF5LfuAuniJkl0l4ENJZ3Bu3/avyCGZYIrAMAlqClLddM9PlbdJv6mMAqsVP4S2Uo+qkLAQyfkIYzAiSROUiPC0KwX5RAghwHUF5wBjJd08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIHAzQWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIHAzQWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A2ABC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750412993;
	bh=S3G44IvN3CvxyjREI3ty3xvo+IVxqQgjhhn9asNOOJU=;
	h=To:Subject:From:Date:From;
	b=vIHAzQWIAg2a3/w56pnXBc1tuGG+lNJE9xFj3BHdL/j3kvgQFG3VWuCuzGgO0JyEP
	 1tEpTUFCI92Ibn0R0ivpP0N82ux05Ki4uw3s+svsSSo22HZPSiEp/B3yz0OE7Vxbp/
	 jo2oIpZ9QTEmUvyVyOC9rRJZCoOCyA1Z3dni7R9s935De8z2jaKhf461bN8ktShe/W
	 KeeCVw3ZDpShUwREzxyNP0kqnyUhzHM63kveLURqdI2Ai/+jWlTrPFUEzmqw2Iy9/s
	 mXR9nmIydpCu4/l4DhZAcQh8Vls+crul4MKAugYzs1DzqpWS9gQ+BOHBa/9gL709iG
	 Wq7BY/if74sEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE39C7115D
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175041299357.7836.12431113064658094139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5dfc80b5fe025e7ad758196455b013841a4bab7ec9ba079027b49093169e1f
Date: Fri, 20 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750412993
