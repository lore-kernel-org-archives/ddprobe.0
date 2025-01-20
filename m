Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C211FC8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737377154; cv=none; b=ErDvC7n9uEkz4wPTeDcKY6iY0JhCJoveBFMBx6QP0xPgfj3AiRtTljBUSQEindOvc8Y065cO89TTcebPWXhq5U2O/1qPKrt82svzccEtLNLYJcmys3hvIjITVnbDQLUa7cW0NQP/WoLtvBqs3DCcCwKH0/91m2RlZzdjfI05l/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737377154; c=relaxed/simple;
	bh=wi/EVl/GdOH1BX89Zb2mzTfPzO5vL8c2OYkn4+3/Haw=;
	h=To:Subject:From:Message-Id:Date; b=cqjtq2fKTBghQbEBU+IiEbhmTcYa95+tfBBaLLC/8LoG42JQQBgXIICGJ1oFuOF0enp58Bp/QJ8HsNixLV6lQ5oorPqzjTBwbfnEbClJ7K2LlPxyNua+OxqZiz61IA+aEEORTcrnqEZZ7x2TIjABj7stFZqIZcrfDhLdO80iDYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYDZAkOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYDZAkOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56B3C4CEE1
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737377153;
	bh=wi/EVl/GdOH1BX89Zb2mzTfPzO5vL8c2OYkn4+3/Haw=;
	h=To:Subject:From:Date:From;
	b=gYDZAkOlxfEZuzDcOKRHgnM4EapWwCNCYxKuzSVAiN2G2mszMgvZOXRFgbBLQG6Dc
	 PptTlOC55IfnHgKl6+gYHaNLp41fKATZAfoOoCzhNF0dowKH71tefac42+lTj/HQgl
	 e38RnIDLS9l1rrMYZPKqIvBaiQn3LO6dT+Cg7pi9fKcCsQ/oKnZj3gkOPguQ6cHF4E
	 VgvFUXjHdMb19lifKD/9fuWMexaUCSJ5Nz7GNLyIwJ/ifWPHrddX4doVZZTb95ct9j
	 IMAo3MtXqJnkIfiE6c/AGulVmYWYywA8PWqpqW4cb4VbzSNIWTxs4v7lg2p+uUCvT2
	 TaGcC2HUxh1kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFA1C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173737715361.31291.16985592827440854793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86aff29215a2b1e98d2f9e5574918c46023006863f0f074a466e9a75f3926d72
Date: Mon, 20 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737377153
