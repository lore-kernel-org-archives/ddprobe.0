Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4758125742F
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745204995; cv=none; b=GMM8Qoz9ZWxlrgft7Lvo+ZjnG/iVUvDLbs8FYQBqRKmnyOdULkhwNZL4i7JMZt6FdRQzM0efOfe//ACJgaShjmNBn9aOgUJMxob2HVzgAhzV/UJJunaYYbVSdlJLaFeZzpUbhvD4OPXAfo7cQebkcFelKFovMthv3WzqZqb2444=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745204995; c=relaxed/simple;
	bh=NgwrZ1EUdfXU0w0ZkQzoTAAoU0pklBOkZCk0snI6G+8=;
	h=To:Subject:From:Message-Id:Date; b=EBnT0cvRevtjrvQcWURJw9XDbMGfrUiWVA8HYceU3aJXrf4M1NV4oOr3RAYTddughe6kgQjVbusfXR/G4hjckhoDLg9TYtSKR3WjvVp8oy0XDIN1dbliXVKvJr3QiK96VJgReZsu0x1rrC1f3shMiB70f/FG1sDAHdugVTinZTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBWLL5Yv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBWLL5Yv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A4EC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745204993;
	bh=NgwrZ1EUdfXU0w0ZkQzoTAAoU0pklBOkZCk0snI6G+8=;
	h=To:Subject:From:Date:From;
	b=eBWLL5Yv+GQX6lNncEjA9+eyVuheAlEsuyERpISWaImoAvQLZ15KNf0Gvs5G/QEBa
	 +I1v/pdiu7OLuVmQqgGyA9L0p68dVxl2P0cfGUdE34AcxxqFwROgMKHV8B8xQnBtii
	 18OF+byJFG8vQBcHuQLRRBWGPXWO3T4/feqN6rxrSLRrrRV7uSrjeOtc/8uhVgEWD7
	 MxWFWwUvBV/JNC+2fr9q8YW1vF6zt3+l3o4xM30lASruEnpY8O6bzKiJddjE2/JHcg
	 +yE6ugqt07Qc/6G4zhN+2vfLNX0GXoKr6k8ZcAaE3euTa2AzDNvxexI23l7lC5/4OB
	 f7Y4Ohj5tYxrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A118CC369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174520499363.7447.2944468736399785497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a8c07d3a58fc35681113a7e44bb3b703ae38d31f1d540bad536ef3b148a0d2
Date: Mon, 21 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745204993
