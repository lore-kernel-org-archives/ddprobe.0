Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152EF3191D9
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758564596; cv=none; b=ubShDTRj4O0i9scK+R1vjns/dleLD+uJyUD9eOXpPMQPtg09hOKqIiobqPdSam+NCyyc9ZqVFZlAsCfY1Txrl26SU5aoD9Z+VG8uI7/4FZ/VpzNZLDy6GTDc7tepMbuCWzFJPLjPptIGRAzlmrOreS3YUZ08MWWTujIHHS6JN78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758564596; c=relaxed/simple;
	bh=usc81159AH1L0TcvKPk607xxw4HeYhbGk1tYVj2zeng=;
	h=To:Subject:From:Message-Id:Date; b=DkNjj57ZjQrf/HIDbR7mOVWbsgHp35/QNfIEK0szc+037lY2bEzGEqmYfNeO8mg8IziEOs3Rkx6C3Yt0ov8vCOWLLUS50RTy4eGHFQx6gI9tz78Vd0OOWZqowgOU2C8Y+HxyMcvbAWK+GIbGsnGjuLVGq+aweblAABjRNCH+XNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExDu8s2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExDu8s2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F0EC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758564593;
	bh=usc81159AH1L0TcvKPk607xxw4HeYhbGk1tYVj2zeng=;
	h=To:Subject:From:Date:From;
	b=ExDu8s2lRo2VS0umqtkZ2H/uAHzgxLwCA2LKir7mUYEHEMT/4hvriA5hVEzXZzBj0
	 wsKT/WUPXfg2ZQSZ22VJgXePUpdlOd9c1ChseVAWI99ASV+nlwV1NT1nDuCxFCbBf4
	 38Plv2+BgSgSwSgPWBxUnuMG8mvhMiGtOpfQRbWbsNpJ5k3N5EOL2qoyRVBbaoR7Cw
	 y6hwUOzd7x5+/e0E4f9gq758L/8UuUviXbA+OvJ/eYN5iDg80cKHMUZ42Q0rIdAcxK
	 hWlkinFW8zkiUYoHTrKaE6BIHLVNcYue5vxlJqVJdJyrueHi1+nmpFatMHZbF+Swdg
	 8mOGkXUL7JIBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91323CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856459358.5827.9570494815636304505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc18f9881f8d186f8e0dcf988ffd20ec5be0434a4b3aef097aa724e48b000d9c
Date: Mon, 22 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758564593
