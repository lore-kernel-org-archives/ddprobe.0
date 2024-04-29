Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DAA14039D
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 20:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714421543; cv=none; b=j3ArIAg4VbhJw197pTTkkIirA0opOZuWmLtQsCaAypKmg1ZcPlta74vNRpdUPiJA5bbN9/0o/fRYjFSbJmpAdbngmyS/5vjty7fsUNM7naSTSDCCuFH28Fmx11kBf6Tzwh2eeRFfLuQN25kj1bQv7XOThJWXsrOySo2UxpH7Mno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714421543; c=relaxed/simple;
	bh=xzT1RTZYNk1lZgu2pYHjeZzX8ChK/4/fIhy50KZ17J0=;
	h=To:Subject:From:Message-Id:Date; b=KU/Xwk1L6+WWiX93c3NWBgt16MvTAvJDi8kMkbnOPFu3UJhiEhrAHnFtfbLcYyBJkgkAtB8v1p4HnTQhrurzQ/dmsvaC+yOUH9BgIUSwX+eV88fLTP16KTWiIr57YLAG9KWqxP7PBnl3y7VWq9zNb0ZgmnIbSDXYE6N9EU4GUMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHyE5AKq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHyE5AKq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75B8C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714421542;
	bh=xzT1RTZYNk1lZgu2pYHjeZzX8ChK/4/fIhy50KZ17J0=;
	h=To:Subject:From:Date:From;
	b=bHyE5AKq2OvI54HExYQTOykbQhUoPkVi0qUloR3qBtmr7Ma6UJF7vdPI2I7/2vUsO
	 cOwaplDDLcId4zCHQI2qMP6xRu1/aGCpIBPoDUnDGtV3fQfGOn9wpuDBwOR5ABDlSc
	 AW6IGigC4TGwbwiqrw11+Bz/I3dj9GbvAoEWZHPAVtbjlYoF9x7yhcV0TWGBEpibqZ
	 0NwTbVHw6tYoMJCtcKxwpjahw5n8LGqdTlpnPIM4vfNZxOJ1PVyvdOZaRYkAN5A0n3
	 ecazUFTIg+1Q+RuGgG7vusZSpSabL1hcxCmH+EWHs7U3dKTlJz2h1biuJc6qD2+U7e
	 Qxb9tAs4VlmbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5AF0C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171442154280.26314.16837997442719763101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9442322f26a46e61a428c66ed8e90796ca1b6a0f5988833b00a4e48e0dfded5
Date: Mon, 29 Apr 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714421542
