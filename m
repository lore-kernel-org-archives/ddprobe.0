Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61958389100
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788461434; cv=none; b=FH5NQLxXA+Q0o650wXLTLNg7VYqIDf9vYd/gj5zmeBmai71wWIepBznKbcBsb5GbaLmWMLZgXVBulHlAUe3hXYl1Iq9LM7/EW8uxJC/tp03NEmu9MWqaBH8hDzybC1gmkuJTKrSPCKqRlcGS32b4fm5OVFFgqrn81PqDHwgJjrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788461434; c=relaxed/simple;
	bh=G3NhdixERGl1qphk8Fx3bQ65/hWmH5xi4OwFsQIoWds=;
	h=To:Subject:From:Message-Id:Date; b=Mi6zHQqcM3rc2gW5hUroINeBaieT6fswu9MafZqpfWg3XQO32o9SsQXQMIMFiKX1zFT9rEJ0ioB2aQmGwKgu/x0z6S78OH7FewlMTc1PBUYmTCVcT8Fz305A9owJUp6zxllRiHrF0wbHhqFFQhpepJcUTUmiZTzR77HwNDFwY8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZsefzGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZsefzGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6FCC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788461433;
	bh=G3NhdixERGl1qphk8Fx3bQ65/hWmH5xi4OwFsQIoWds=;
	h=To:Subject:From:Date:From;
	b=pZsefzGHkOcaNIreEIKrj4kfRZ8shbpYGJSS4C65i+A4hR+1KnBwiJOHL7gifBYWf
	 L/3Ktjhj3gApbVHErBeNVtl7wk6i4sIXRlPmhNc3LS8fGka3YqXyGJATSbXDcRuci+
	 utANXZPkNNkRkXYvWymISY/Zuq5ApoyuibYFgvEH5n/K6PVdfBTSBvUNE7dv445PE8
	 pRStgDYUhlpy8gh82jDMdvtFBgweuAU7rBGjbAbeiTuHVcebygfC6rMcFgAx1gPuaN
	 A2A5/bbvk+CNoQ5HhqEF2FxE97fa7h9nAxxzOZQzoPEmIUBXnx4oxM6qgLJpwK248G
	 wf2og3mvyVTBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD019C624DA
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846143368.18874.9561783015224745388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baecd4112e8427614755c57675b155033b57b119796e5b80ae84deaa6de80eeb
Date: Thu, 03 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788461433
