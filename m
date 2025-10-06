Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20308283FE5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759759794; cv=none; b=LA6ewdhkUINmSSixCpRfsdtSNbFWtf6eVVivYgCCBIg8u/yz1xaf5Zb+Q3cxtJ/Gb6jVAFPAivoXVEUH6AZO/hq3ckTD3mMI31M1wiWjaAF9tR5GXG2v2Y/3a6mcDoLVwJzPizeVtauK09F3fhJzubX4NhljJInMNj7WmXF3Duo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759759794; c=relaxed/simple;
	bh=bY39gyW7Ivx0m5qyuCaq5BRerZbHlxftmQyzXAgN1Pc=;
	h=To:Subject:From:Message-Id:Date; b=t90tsAqt0sr8vk1tiHX9EUZR2/pSDWMt7zw18kY/4iYOmZUnKqH7FW/qAE1UOEfYWZPe/Omzi0FGYhIJbYvnSDJAv1bZygs7AVCv4O+63a9wSMdvx4ONGAesSdF2UIEmaN4qXz5virSDZUhg5clYkZLegJGtXpiRgKpc08yd4ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xq4zrmLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xq4zrmLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B45C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759759793;
	bh=bY39gyW7Ivx0m5qyuCaq5BRerZbHlxftmQyzXAgN1Pc=;
	h=To:Subject:From:Date:From;
	b=Xq4zrmLXCcTubebwvr5cbOozUX7DLZUdCCkWSiRAUOWHNtKQS8yjdukJpmmbqwTHA
	 Ywk+mb/DEz95g63Ifc5UMzmBk9p4+VIk755ypIhCcADO3UPMJ6AyVf0kYhGtVkAe42
	 qg6bvaWg9grRkSO2k1coRV0pL8fCUaNIhL49tHGRwp2cTcLMMO7R1yz8iFDFDUAQVi
	 3ThrrkEQc1/jWE2CMiNrJmddzw7zMamSknjT+GjwKZST5xtqp4l9u+fKgjzFllSIZn
	 1r6ZAFCwilrOlxeX+OhxvGsuGnsKF4w73IVoCGud77Tg+yv9bvm2HQuAgOjXvw6lj1
	 RsQh/Cet5w0OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF1CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975979357.30896.606490413073645105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b538dadfd329e745b37a35629fbb39a2d94345a0ad4cabda5942d322c7fc4d
Date: Mon, 06 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759759793
