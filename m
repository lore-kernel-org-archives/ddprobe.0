Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335E635F16F
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780397674; cv=none; b=ofcoss72QMt6yQIc4xv0/18b7NAzrHsNjaANNyzriJKePoHxRJtuNL+9XGN7AAL29eHeYxWrTV8a4jRmfLi2fl0CALy2EwgPdBDh6ug+rXgi4WiysI71kj1FQ1qx32ym2uHRFUfqMc4THqr/91Lrez+gsjEeLRFpp2LHNi2AglU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780397674; c=relaxed/simple;
	bh=30awoKqXh+oNRhVQpfs5SrXjaRXJpIsB2/rc0Hyspm8=;
	h=To:Subject:From:Message-Id:Date; b=qBrXDAcK7XinER8oK1uNyZyO+xchvbW5dtdS6zCxBMK9MFQfIiaItInSGQelowN/Iw0TWMzj69MAdG57N+R0FQRwk0WUmoOgbLV6ghVSQtPJPHFMS73bp3PbeYXV3vdG97oTCMog11CDZDwgwHTlmrQPRz+5jUQ++l/Z2FSqVK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYP3ZjCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYP3ZjCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43B6C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780397673;
	bh=30awoKqXh+oNRhVQpfs5SrXjaRXJpIsB2/rc0Hyspm8=;
	h=To:Subject:From:Date:From;
	b=qYP3ZjCQ7ImlqLXcEIc8xHA0ri//oFQ/qwK6yx/8uqHyCPzapFq9YL2FMBq/ouymZ
	 6LlxzIAAExOOprH33DO3G7blXoSfhfpbDhQT6KPH/aVzChBXevWc1x5lMP97KUvJ9q
	 aRqvRexOFgWLNfQck/NpHUmtpdcCRSy/kiuzlZrMTiGJlL/ibcIjIxXkHqU+59Sawx
	 q4wsbjbvGnf+NVB0DfAZcTFuXrRRFrLp2mP21mEBdmruo2B8/r0hf+qLZ/hejyLm2y
	 fX8FbEb34Avm4gqOgfDbjOZUVSyctDXaQ3w2g0H1UuvZ630UtkLpgwida5p21C2uZT
	 GFRfvSeiRr0KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC66CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178039767368.21339.1767757705377102450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74fd15188ec153018dfa7e59b747c90c0192baadfd75b5279698f80bfa6140fd
Date: Tue, 02 Jun 2026 10:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780397673
