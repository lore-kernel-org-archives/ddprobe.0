Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB552931F4
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789846834; cv=none; b=pV+g6lFTP47oLBP4XtbSo37blUr/7c66f7lt9K/z68a0Tb745d9horbCgtNexo5IJh9mhoy6SmBQ/BeWbosxvJfpL9GNHh4S+6j/begoF8+vPg2XgUCzqkHBJzzZ4xlsj8sRwwWm2azzIBmrf6CiexHZ1rI9zx1eTIR3bCbrIpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789846834; c=relaxed/simple;
	bh=DPAx6wZPOboXefvJMeDS4i2w4BYFYZIP/P1DywwqPlk=;
	h=To:Subject:From:Message-Id:Date; b=bCI/BHt0FFF/D6HHvvOtJodlVkLgD0C290qO4YV3WrfhpjKL8qYPg/uu8dVTm1uMozLHx4QvwJZwN2ZTbfIv1cyyV3q6zqr3YofjmtoSxuEI073KqLzIVG2zk5QZ6hlix0BR94l8CV0M/aTgDtiBCvwAud13z+p+Fb6kQvixHJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQl2F+4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQl2F+4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A56C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789846833;
	bh=DPAx6wZPOboXefvJMeDS4i2w4BYFYZIP/P1DywwqPlk=;
	h=To:Subject:From:Date:From;
	b=YQl2F+4HMGWHnvFbyvRN0JR5JurqMq/t5Ue0Dy0/j0bGq5JYNAEK3sEFY3S4wZXXE
	 7fuWZnDs8nUgxBVkEn6daFFOKVrxpVTeEUT0CDoV/tunUCCNQUvDG6qWMWBQMNrl9k
	 s6nUgb9ZyZ8H8QaP3a+miVk8EJH1rgKPVyRkVpEMZkYRMTj/XNqZRlh3zCWWGaQvFh
	 X2DiP0uOHryDECVM7Y3qF+km2bscZSj53OW1d+z6uJ1JLrUda4y+F5PuwEGIGAEsY+
	 27ExJCvScPqciXH7vgN0k7S94QQUO2GGScNo02OmfV5UUFsuD+gE470cGEVDTUi6eK
	 Ns2Tw4esn7nYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9466C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984683368.25760.6048084918267537496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49479ce67217f8b4f60f36eae23b3f2e642445bd36cad807ba0a5b62d9047212
Date: Sat, 19 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789846833
