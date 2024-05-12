Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0C7224FA
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 15:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715526143; cv=none; b=Y74QOBdvLi/cNXugyp7UBECQVcSuXLaTIX18sTze62HTcQlhzh3mhnBxCFq04G8kS2ZcIEO6EfXv8Rzi64/2m3OTCul5E5Ii6u2DFRuYN6EnUJ4pCcKWkz2/AwDDncW9MSdD62sRmbt3QvZsq9DLJ0CdTM3LRtiPCIBcrci99C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715526143; c=relaxed/simple;
	bh=KLxorBbFWILb0Lw3alEpXt/kpQGN5Z9PYyR9k+BUyGc=;
	h=To:Subject:From:Message-Id:Date; b=pk2WPJdedOt16CH9nv5gQj+wfr5PzM8FubkntZNLIyUySoA7x3eh3TgWl0/S20noLyhqGF8bzMbvLZo5wmWvtWaUs4G0nUugLQl6+P+Gx1mOzJ95ydh195CeLUGrBXfkEzgQYQseeMmM6CjDIb+VqU+5eodyVUONK/M9F2S47vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1jvXIcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1jvXIcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E43FDC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715526142;
	bh=KLxorBbFWILb0Lw3alEpXt/kpQGN5Z9PYyR9k+BUyGc=;
	h=To:Subject:From:Date:From;
	b=M1jvXIcffhdOsPSZCEA53kkBanJG62TaDPLZAvEWEbNG6l0JNS0LbWZbZ0sOkA8Th
	 bHQyzqhD0RxbHz/qS27anBwev/J36aZCYMf8+HQplwmSj7vdJHMOn4H3QNixBeiOmR
	 C33OnQ125E5sh1LLCaMVcsEMC0LQHL2xWlFGqcK/SaPa5GV9pBuA1sEreSSM2xnSOZ
	 Ygh2LrHFlZlfglqn9HO+MRtLQQOiS4exzmiEJdL71jbgUW5BLaCvyUj19VmDlKTgi2
	 HhhJm+pRltQim75SrxZ26NaPwreLAWU8V9E+IRBHe44bhXv+FGMHMES9eL6IoM9I7U
	 GTzy3Mpp/avJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D01C6C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171552614280.19569.5678827816339326400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63cf933767d34d8d4f78ed640f7acb36027a85ab60e6925e77b3c3054e077d7e
Date: Sun, 12 May 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715526142
