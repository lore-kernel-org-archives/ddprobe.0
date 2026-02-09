Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275CE20DE3
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770663834; cv=none; b=T3FG/u3IEceWwNNQVMEKX346xUN/3YqNd47VlonSrpMbB3dCWPJcQv4zJiLnkHAPBL1JaY3NvWX86TOEQGJv1/2qmtPSNic4pQVfgkFYFNzqzhqIVxsuS47Xo8iNJFcx8g6BWKQBe5pQdpw42ulREMfLzt8bwUADwL1ctSNq7KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770663834; c=relaxed/simple;
	bh=I5Yizch0h6ddN9yu6HP0EWmeP59CwP+jSRFDaoYriaI=;
	h=To:Subject:From:Message-Id:Date; b=Qv4bM6nrRkFr2e68pKw1d4eqGvRegBXcDE0/fLbrHUhJYpouucbED3BzdjaB7vy67a02kBAkErJR/sLIWlJlALvMk4/iwCnQZfMNw/066Vi2IdxLcu7C08MXT4LC7685kLBiKX3YGdxxBLe9ZDlyPvsQfgUPhVnRRUWa67EOMRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWVf6Z8V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWVf6Z8V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A44C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770663833;
	bh=I5Yizch0h6ddN9yu6HP0EWmeP59CwP+jSRFDaoYriaI=;
	h=To:Subject:From:Date:From;
	b=MWVf6Z8VRvPcGDqu+H9mYkS1ES9xnqRN6E8JIOoIbJ5ueMquB0COVBSdUTxFcXyQs
	 TObKbL/KZThNfL9J77v0jhURu9GE5XnqcUZ48k3DGFauejSN5hJRmwmaM4K7vudw5l
	 BjOhrFy7LzR2xiKV91iRoqLNiTB8XmU7SGHRg+jE0gw6PBatqOf1J8wdbk9TW9ouMy
	 O9DB08KeUQi24zQmnGYOMf4CqTm4CtBl+dUZgkZ3ciu6l7cuk+gmIrxhtzdMCSP/iR
	 C2n83WfJG/NSSekPZsa/lz+LEQHrJ43yhmglFfyRL8hu5/TFrLMDFIawHxyDXz3KME
	 9EksvuY61FimA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CC9E7E0D0
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066383372.25069.15442963910395295773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f73bdaa3b1f88c40e2020988a8f73621a9974311e774dc22eddbb1e002b026
Date: Mon, 09 Feb 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770663833
