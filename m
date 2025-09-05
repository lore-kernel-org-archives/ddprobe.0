Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F8A30596C
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757096394; cv=none; b=OId1JaiVLmfBk0ujhnzcmgzYVCF22o1yi6+p2qUWEcKcW6GDPy758mjgP5l8YPbIX72XrEPuvanTbvpRM7GjNs63S8r5Lbn0ttXY5sWBWfxvO0YYh3KoxhMjN8TmQ8OThG6sAdjSfB05EJAdfCApekCViiqAx2M6Nc33n+tcK5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757096394; c=relaxed/simple;
	bh=4qh94UhlOLcUXwXjEsOKH+FLbL5AhKsxYHCIzsuO+lg=;
	h=To:Subject:From:Message-Id:Date; b=cJ/p+d7t7Zho3+dLUCijEdAqgtSEgLrYrqDzVtJ3y7fGyQIwln/ADMQ0O4+5XLxkcguHRXJFw9cdxuOpTcW/QGZWG4Kk3G8C/U+GmI2X8byCtjwVeULYMG1JsDKW0oy5TptNzcnUgSx0eS4Ua7s32ZHbYkRU1bARLP40/0XtIbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pz6X0DwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pz6X0DwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AA1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757096393;
	bh=4qh94UhlOLcUXwXjEsOKH+FLbL5AhKsxYHCIzsuO+lg=;
	h=To:Subject:From:Date:From;
	b=pz6X0DwOsrDRzQfeI0Ox79sHrjTHo738pDq8KPBc4Qxk8JmwLDXsH3gW/MwjmTKDV
	 yK5M2IfmHyc2DnC6XXAPNLBMJb+Gb0P5JiXKzIXHjFLscuSMa4LIDDwrehVZCsXzIV
	 XWHMHfz2FIahnwnWmbwBkn8i9uFnmT5nSJ+ziN84PruerdgvLtGBuWtjBQgZ3RQM0j
	 8MFR77oAilnYyD+v3xmOzyeywndj57KR7R4JG51GWjMaAYWea0tNl4KBq8XoGhXw/4
	 OKu2lfeortjFllGFoE05tEnfivPXiI68C8Nuva+meyYaO/S1lyBOcu7hcaZERgf5qc
	 9+IFCcVzgf//w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90508CA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709639358.21599.13393130536945482030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7c492ff3e1d3566dd6a6be4c9482d4e9af8ce6ef4eadad1517af03d2fb927e
Date: Fri, 05 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757096393
