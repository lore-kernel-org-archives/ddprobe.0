Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD481FA3
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 01:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718070503; cv=none; b=C8eRwXRAeEa362e2klOrXHoTYIhBSC0YkHWo7G/94oa1M6/rhWnXd63Sajpub1WoUjRmP1DySDFv8LIMIDyP/0D6MZ/XzNCmMYwKWMQZDfZWXDBqUoTd21HuOM5AQbOYUZgpIDM/zowE0cv71jVMQXCPrIZ6evmdOaJTmCFJ6NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718070503; c=relaxed/simple;
	bh=sy1HRb1FwEcurD8Sn6AuUNlj1HKx8JkRjlTQjUFpNag=;
	h=To:Subject:From:Message-Id:Date; b=U5WvkUdlwTTW1Lnd8qrxWzeC6dIlsyy32q8fxVP5ZIDZSgtmN+G5JkNVW8Vimlbf558J98dyL9k/ZFSLejSWn5vgB3mHMNBfLIgcqQf9WiSayOCzjrih9rIRZzVor/ULpqEiAtZ1wq82SRmBTicGi/dr6i5otY6faV7FqiZojT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNYRcLJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNYRcLJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0705C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 01:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718070502;
	bh=sy1HRb1FwEcurD8Sn6AuUNlj1HKx8JkRjlTQjUFpNag=;
	h=To:Subject:From:Date:From;
	b=dNYRcLJGVDmZlSoORGG2Du0V1048R50vB0xI7jtP5Tfvx1rzBo2ogh18vCUPPj9RK
	 78SWPfhmH2xGD1rNOo99vdui/dex9p9FxMMEKG1umr7g0uQE2FgJNMLb5S4XOb8Nn5
	 vlD76waE/AuJELBGqs6hOEbIOthtIGEP5tU1uMCKQAv8EX5HM/EDScUt0PyxHdqYMT
	 SRfvWwNJZPicFiuma8jwoUZLkh3W9LPsiPSvtZEMg6bxrMgRRFEr4USOsRiJEaOh0a
	 5q0+gd1KqqN5j8RpwV7okNV9sN23D1IDXJu0CVGAnbxwL9UhicmvZqw4Eb+kADv+jt
	 B0LAgBQOSz3fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9AEC27C55
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 01:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171807050276.31730.10033307333274259736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f0a348c43c7417b02c09ad8e9ee7fc7526d4385fda6ab24e54c1355fed88ddc
Date: Tue, 11 Jun 2024 01:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718070502
