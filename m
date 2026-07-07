Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E4A42088F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783455514; cv=none; b=R7C5DDhg3Wp1ArQdNxefKC1C50Ai8khr0yBnlifPSYJDivFkYf/Ph4OBi5e2q2BuF5Xrz2pnJ9xcA88spwh304/mtTape8irdl32+V8mp4tjjgZjcBFnfXma/eDNW8AdpxMvEd1IxE44G/qGllREd5EvfYxvBVEy+0alWDeMLkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783455514; c=relaxed/simple;
	bh=eUo7DbQ49aVCJYk6ZoR9O3CExIHzwRdfTNeA4SNPwNo=;
	h=To:Subject:From:Message-Id:Date; b=AM23PpMRds3yQHjf2uYN7Ukg4lxa73i4CjlE/R5ooXR0cxmqTQXDzgo5iRS7Q9aozAORQO5gmIhMURxv4cgwnD658OXk6Z6aHA7wABgFYSt16xWyfWKhU5abxoQxUckX4GTvVDcEPCS4Udn2V7vqrshELNuX/Cn6w8LEH1VCCT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odgkap8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odgkap8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADFCC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783455513;
	bh=eUo7DbQ49aVCJYk6ZoR9O3CExIHzwRdfTNeA4SNPwNo=;
	h=To:Subject:From:Date:From;
	b=odgkap8R41IGUyo67ruPGNCUVet5ncmZJXKwYuaO2uDwGtNYMlZIYHG4UTWWPtFCD
	 f5JlAnfBFF/dfS2+7LLnFmdhKhIhfufPuSagNJZj0Ak3QG05uqI0qzTGxRmgOr/5FC
	 f/O4lsxnFaJNfPMVukZjbRd9WzM1LL2ooOVEkHpLgajPuirgxR8kD93lxTHxvIifbC
	 nN/cpJ+QgOHu7Y43p8+cvqHnmqO3II63/35NY5Uj5eo7nchH9V/PvBPMLAHOxUWYOk
	 HPzqOhVKMxzmMR5AEk6iSSEvEwzMF52KLVwsF/Zxxn/BHDGOVF84oIv/rfdaLjg/j1
	 gB19NPnFSd0mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8754C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345551368.13750.5199347126327051415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2711194e7138b1c92ac5a98b9eaebc862f90e5a1ec292b8fd7dfebad65b6a7d
Date: Tue, 07 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783455513
