Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CAE372B3D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781619994; cv=none; b=jcEWlWD0KKKaSEejCSC4bgzTiA5GPl7s0rDYI0Qsfn4rKGFCoq1HSFX7ci3pz4rgmymWUeE9swDAUChA53OUp1yxC01IXNoowjN7V4dW9dO8FQ6EJaU9168ZWqsNAOVosRHYRDf1Af+wOf6DE0PgHWmDHxZggHb/V0R8OdK/V5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781619994; c=relaxed/simple;
	bh=RkmkL02zvRkM0r+k7eBoW5L968KE7wv7fyhNA9nZPTE=;
	h=To:Subject:From:Message-Id:Date; b=LIuxgVjauyKY66zaQ8xoRmCcCIgqGO6bMgkgjHsftCLxgQiAnF9OIDK4C6RsRvf3+1w83lV4hzVQkvHQrSQPi5AIFcl3pmXl6ZSYMDwm6qbjjiKLO/575a6MWu1VeRffQ2xo5IftC/PzfQusbuSV4VQqWQrp5bru8LUdq9GHQFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrM8iUS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrM8iUS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB38C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781619993;
	bh=RkmkL02zvRkM0r+k7eBoW5L968KE7wv7fyhNA9nZPTE=;
	h=To:Subject:From:Date:From;
	b=QrM8iUS5j+tCTv4zl9urpFMFbNvQUlxjtSnf8MFrg6JmeM88RI8lfWcINYCImeEc+
	 T4R02TTbsUQx2i+AVm9JR7o4xhcDHqITBUczQJC8YTRJeYC6zRvvbnb2f2rG6NH+lJ
	 3vP/Y/O8p+k9iOAzDoTyNdmMDHsF/B5sNTpJD5cwx55x2WD5/kDnI1OxuAK1pZbc3n
	 6gxqgWodlnVVmqQ1Eh3MLuU71uvm6wxhX2+MxLHG4/ooL8X44LepKeFRZPHdqpz2p/
	 ufx7/OOA4t2DqGY5+sMmkA3nnmNWX5kVq26qT9UzP/PW0fRUhIQaqP777hpMZENbgD
	 2Mxo/a10/EhEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F8CCD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161999371.3245.5710568729485926470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a018b9515ead2223db763cf712c99d0e772783b1a3d0875731c6819b50ab77b4
Date: Tue, 16 Jun 2026 14:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781619993
