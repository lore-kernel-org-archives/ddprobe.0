Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0D126561D
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756376994; cv=none; b=S8LOxaD3jxQaZV/3RqrMqHY2G+mVw4jrniWN2Sq68euxIKeZhqtBcUIhCj09g0ZvyGl3Ol5KvPlyx1POTquRqKf3msW6yCKCeUzkYDl0mHV5yqeILdeaMXy8fitcy4OTkhaLz7agPp/R/7RUh0IYrCdpeMvEjGb4LS/IbgvEyJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756376994; c=relaxed/simple;
	bh=FXxkhZO9/8tRd5bpE437ZsyOXZbwqvZBgp6cu/wN+w4=;
	h=To:Subject:From:Message-Id:Date; b=fcBkq6B2sRqOPYNhvE5pyFEKjD+9KuuK94te7+/MhKa0lHF1nVfa0HaE21OJHiS8fA1r4Re/mx0yWWhGAiCrriy/WOVa0p8ozc4z87IraliGTEcdirtKtupvpoeQIlVCRvCB93uKoDWpDWZ73e3sXEZjJnjV2G2qVaXR0DNusGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uG9rmGHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uG9rmGHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F808C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756376993;
	bh=FXxkhZO9/8tRd5bpE437ZsyOXZbwqvZBgp6cu/wN+w4=;
	h=To:Subject:From:Date:From;
	b=uG9rmGHSTnZ5LtV57+WYMrw1qeRQjaGt3Hi6p578GTjyxHtZjglyuNd/697Rz/0Mu
	 VP7bEzbtaYcX1DlpelJRYK4unYgE32w3qSZZ0CTe8IRfKUfekTrMGSUtD+f7Pko1YR
	 1DbUMNTkdU7DuCsczQ+sDBBL3W209apIBWvsHQsm8B4Lk6VdZRNDSImvFHC6DofQ75
	 PhO0P1k0uAZzeVQHDYqjF9gkGUQNr7tm8jua5+rfKQ430KmrwPJjRQ5aoT+8eqAeDg
	 G+Mi9xYe6pNHy8ibPAUCflJjvdQYwiSn08oDKCVS6FfdnfArgIgvm5LRqAehvYLrDV
	 lFp9thOOCm6uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DACA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637699357.2488.278364308906994738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e08b41e5900546d8daa16a02b07e685f6128873fa3855eccf44a8d67477fec
Date: Thu, 28 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756376993
