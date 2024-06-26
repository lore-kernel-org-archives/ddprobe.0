Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D38D14D70C
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 06:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719383603; cv=none; b=E3NGV/78PUlKvdUWMAhvBKyl8XtDV1D0UWzTyTe41fmeHXdZ7QfK5XrEVDs9ermbZXauFCeJulZxwfti4rdtt9qSU28EIZWqitRSNC01gXJH/AjbfwrJxNaZWG4wx6/kpskAIL/W888JPItOgVLtRV4WccafFSwtf6CKDihTz54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719383603; c=relaxed/simple;
	bh=KDOvkqa2+w26vm8Cdd0duqZKoI7Va1BVRHWvFWyPnXA=;
	h=To:Subject:From:Message-Id:Date; b=T+S+lzBlaMsGIgH9BD+yoUWV89gbKA9nG1VJRkB93T5KlKT0/eY2Q6bi8SX3x5H37OdQ3NVCA4r6aiLHCfJC9MEVBYOt1uJBHtf0AY5zkhcVCB6mWR1AZBOe+5mJ6fEXiNvPeD+tgymqyJ8CCwvcmTPgcalsR4Np/QpK50pBSVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzljLaEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzljLaEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB40DC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 06:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719383602;
	bh=KDOvkqa2+w26vm8Cdd0duqZKoI7Va1BVRHWvFWyPnXA=;
	h=To:Subject:From:Date:From;
	b=LzljLaEqgipLjzg3cLzPYMUHA15BUD60xAvN+VtkCuZ1Yv9iyJj/UI6G4YasRVqvk
	 1pI7rHqhA3QAtxUsZ7jtMsN2lKP2fhMThhggKb2fAJzgWjU7jiJuqGR/P9YPYA/1Oa
	 bE5OyxBO2ysT03Q/DWSREgVfHVTnYjGGsINC/R5/7nR33Vj9eBNYv6ue6DCGyw/C8V
	 H5Mqw4dprAcrax03r6SfgfmvLSKT8cD22z06MHW4mUGqAAnBKIodY2KY/lGBVFN0Sn
	 NEXVcmhVvFn5KUFsmeWA72Xm8HMwU83tGHly+IwQsXmMs91V6D5GOYf+/7JiUqiJtk
	 1SBPQ3WZi51ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7609C3064D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 06:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171938360280.26456.11460521124238871525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e725fa00f8e899c8861d728deb81daccc0f1221af7d3795db0afb78f508ccc98
Date: Wed, 26 Jun 2024 06:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719383602
