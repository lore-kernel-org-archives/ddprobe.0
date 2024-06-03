Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3595FDA7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717406723; cv=none; b=Plx+FRfd7AXjN7dOVeE+pnjd/QuQUAP0CRSvyZN+pk1PdrFu5Jl0sXZ/8S1IHV1LBF4cTwIjKx6tkadhFj23lfRCnB+dr9FDE4ydJMl0Omsw2t7IudtevE2QletFuHG4ndyJuMgVDNmqwXusXYDES8ufzTegbcA9dWczkrAA/WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717406723; c=relaxed/simple;
	bh=NulC0iV619nxFYW+ObwWEKu79odB0wIlXKkpQpfS2oE=;
	h=To:Subject:From:Message-Id:Date; b=tQDekkMgPPCr/VM7+FdYPvgx4OQkYUkgk+tNVDE+1Zm2auEWsNH6i78huFdC5yEjQGeCAUtJEo7HXGNdIHoQzNYbkdrVyuBqumF466Tn6V2nqY2parGXYTff4lh8JjWz2ve7Iz87uOFeYChz1SEe21bnyNVr2iXPZlWd/ryeDzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eB4dM3au; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eB4dM3au"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D971BC32789
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717406722;
	bh=NulC0iV619nxFYW+ObwWEKu79odB0wIlXKkpQpfS2oE=;
	h=To:Subject:From:Date:From;
	b=eB4dM3auLjDaF1CVB08WC0j4akDt3Zy+weu+ARjLqD/kN8t2m0zupvnb/o26uQ9JM
	 lfkzUM8SBFba5impEKiymEt7gxIxx3Lp3GY0aapXggS8AkzbM879QCGtVwnPaDuocN
	 fke+o73HAW83BSVb7z9xwUgdOMt6MT7lnH2i6F9/QE5q0uRIvugbrBjiv6svofaN0X
	 Q4sSN0fjWmjaUDYQY95lwCo0uicKtpfO96uul54ssCEQfm1BcpzxMYP4EvaKEBn/4P
	 5xexFpT5WUwTlVNWt32NeX6dQdz8MMb4od2ifwerc8nLPs/VQr4ZQA6Wdfva2oKMRw
	 GIOg0oROYw5wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37EDC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171740672278.1376.2441566286681977963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a2941e422286e9f3a1493b0139bd01eab03b8cf89f176ab668926e9045682f3
Date: Mon, 03 Jun 2024 09:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717406722
