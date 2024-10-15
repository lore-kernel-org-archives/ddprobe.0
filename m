Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7DB1F80A1
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729019154; cv=none; b=bIk38Ule0RDpdOXesZ3WaGLdDlwSKqON4p+XXHCAtu9bIkx9rbLzcPFxHlcnCrKfUT/rTsALTk5cB5tjd61sX2shN4uwAstlwseaRhYTEpJsQb2pyQc1RUa2iLCuZ83XSvn7NUh4fGO0J4k9Jkqe7fi2jtIAq2ov/C4liaR/A8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729019154; c=relaxed/simple;
	bh=lsooXoqE6oIBrOTAdpRS+UsPMLPr8UT9N30GXIl66lo=;
	h=To:Subject:From:Message-Id:Date; b=J96oS2LuMeMeWaHzIusIcp1FmRrpDH2iPqNYo/c56Vxvh47AXFj9VJlrHtDuO/g0/wpa4U22GmMCJ7q3TIVi+cD8HbA7UOw8xWaEWeNQIZXQ0oZr+Zlmmsnta+u73CxoqnU+3ole4zvIkC6w4notRKeiggqatQ4Tc0ghlXu1vwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dq9eLl3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dq9eLl3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB216C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729019153;
	bh=lsooXoqE6oIBrOTAdpRS+UsPMLPr8UT9N30GXIl66lo=;
	h=To:Subject:From:Date:From;
	b=Dq9eLl3LTNK3s+oxHWabQJFuBjYZPsEj2B+pyejnxwESZ266b3U9Zx7rn8yd42ue3
	 V31y/uAX3vtnCOj9ZnNoMNJyej/i8iyA+Bd0NE6PJzZzYUe5L8IbaKpWMmg7tuA8f5
	 ymKacuqPtZ75bzmt5JeBkrf3pOAO1/NxM0UpDn2jgCw5MWyUXkXVvDBZW9jMqsgMc1
	 KLM8Ht602Ung/DurQpyK5djlckhbzXgqQWNLzDI+tPWU0RC8H/hZ3cqbnV14JOOF7S
	 Dpx9jSbrXaHpviS/aJTwgk2Inzo9bA2oO5xvMyvWAi7rdlTvWnidjePD9eUYjE6Tn5
	 aNEu8rKfNAF6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F56D1F9C5
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172901915360.27465.17999807996742497318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1b5c86632179211fabbf71312175d807bc657b0519ef5d881fccff2f0aca25
Date: Tue, 15 Oct 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729019153
