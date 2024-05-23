Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D3D3C2D
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 09:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716458003; cv=none; b=tFhmt/04e1mOJWiUWM27KwIAG87VkjVU1d19C6xLfLE2V5hEkno2eLFFm41eClw5fTsgrr11zE0PRorU/n5MDJQbx3kP8WQJxo6IA5zZPoLVJ04EqI5XkHqYsffnpGzwR4C9BsEeXJnxrtKJzumAbvXR0zAqNcwiPXaREJzsKUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716458003; c=relaxed/simple;
	bh=HVP2x0jrYbIi95hY+SpYA18ET+jtRH/LqIvKLu/jgQo=;
	h=To:Subject:From:Message-Id:Date; b=JnLERPG1te5F5pxEnRCGxKkE+fwJOEO2DcjjLUv7O5Ijs32fK1uMkNTNwVR07UpoKCoIgvCHiIPqBPkN+FFi9vvs1RoB2wkhIXlNOArehBjTIMuVITf81Ftqe8kWUe8r65LRh14R0Qwhedn4N/sPsxwSGF5z7rs9OVa6lcARvdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfsvqvel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfsvqvel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9EE4C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 09:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716458002;
	bh=HVP2x0jrYbIi95hY+SpYA18ET+jtRH/LqIvKLu/jgQo=;
	h=To:Subject:From:Date:From;
	b=dfsvqvelfvhFq2HA/r6h0kgBz3I5Aj56PQJYXxH25mrC4uqBoUh9DnoE56GG+Z9Gm
	 kH9uNqsIVin5w49ZrcXjCKku9PksnlG8LI42VFC0NznDdhqZlU4UMTj5vzj3NzXxmr
	 TQYS529zsdx5y+TOP+5deZoSp5+aB/6hC6mkoX8/GXhByfmmQ5TrmQA/ozfRAi3y6a
	 MY9oPX3TjRBT6SPbrA6k8bjKybFCRAShS7BLt/KE4CI8Nux75AHZ26tCS/5u7jzCcU
	 UOcyRWQJXgJcxs+YmlaGkkWH9sBFBNi2vRth25UxreM4hHFDyfx63DaDnIMZgqMltA
	 9kvm5oLxqTorQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A19C25B79
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 09:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171645800280.4132.3488592972121044783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277bf65bdef5709f4d769d3c68b16e9174f0ac5a06fca0b3c4ba3962a0ce04dd
Date: Thu, 23 May 2024 09:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716458002
