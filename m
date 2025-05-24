Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCC22AF0E
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748096394; cv=none; b=gJ96hA86MNNF/ISRfZr1nfWHlHQVO7/8r9PkL8MJ54sRiteBrGFhE4muEWyryoxXPWH49F/u18uoT+MNOux7DSszO3cugQ8K0cH2l0WliXr7FqegBMjasNy7QOV9uKuFqkpVDUPmB6YhZHIVXtG6EO7x1psnSvKlMu+o5HlhYfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748096394; c=relaxed/simple;
	bh=ZrQLIT4pT9XRF5srTm3RdNNWUiaflu+sJUhWMSAMxHU=;
	h=To:Subject:From:Message-Id:Date; b=dMMu9Z7yGr/yA20q2ciNPXxhQHzb5kJKZxVsrDGLr7x+RYTCGkNYwttlx073KnGcG3lGGqa08mjz2gXiXkPGFztb8fzwToJ8yWGjz6LcXlPSX1T+Qwjpt7rrGfAHpmPJ2lSTjc6GlwCGkyc5tSPn7ynr18ZBnTmz1QuMniVuVMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idIG0ZWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idIG0ZWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBDDC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748096393;
	bh=ZrQLIT4pT9XRF5srTm3RdNNWUiaflu+sJUhWMSAMxHU=;
	h=To:Subject:From:Date:From;
	b=idIG0ZWuZ1DM4nASXkGvlLlZxcdLtedPv8mU1QFP+PkfeZhHoMsgPcnj9L//Dud/s
	 2uB6Nl5rW18ZVOdqpmV7Q8T1aF6U3WLHCi4vq0o4KCIbC1j0Sc7i3LfwLi9wzam7+v
	 dBAAekvq1fOie+oDsAVIXMGSGFSz337WV2JFsyBedVWBqH/uunYC4sZtl0zbDDGXU1
	 r0zHwz+m4/vjvcZKJ1/B+//aWB8RDTA7KfZ8b3xzNIO83TonmfT9FADZkb67Mrj0Bk
	 MvYLdUo/c4QjFhsZKp5D/rtRkPoSf2k+lppkOyJwLb2D+ake2xnS0fphew1yityvlj
	 2XuL3WJohLAiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E841C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809639357.20066.14750848302496264075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 440c20d6799a8b25799593ba0a4ce72ab1f3ab3e8b17d84dd54c8e8c928aff95
Date: Sat, 24 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748096393
