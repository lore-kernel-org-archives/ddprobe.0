Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA533AA9C4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787064635; cv=none; b=m1jdNyfkremIbb4VNvq0ZCMw7pqzSlgzS77Z7tPHK4WHpmZQJqs2w+uSd82fVdSEzrIrB4Ccrw6EmzQBJDPDw5pv57dbBRrepZkf1vyncBeT4tNSVhKswpMRtFh0qsmRiLMjdD1R196/hfulbMK45SCTxtUzFVTYSa+gGDJxoPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787064635; c=relaxed/simple;
	bh=Ga/DK1yDP0f/CMUHPLAhYEcmo7I10C0Gfh7DJ/iqsJE=;
	h=To:Subject:From:Message-Id:Date; b=Ty2H0Ne/nJxCC1lyItAgPHmARXT+S7QdDZtWDp019gt5hHN6CtGAkW8YUxsJLbpuMJvBDJy3pqbtB+bdwC8I7lzw5l1nRydt1Y+6WVWeWje+iC1QXEZ89MNWAb2oCm8BoKpAmAxJJflk6Myw2stz5dQWOTnwrnNqEO+NDjIeMLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIV/B3yD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIV/B3yD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC9BC2BCFB
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787064633;
	bh=Ga/DK1yDP0f/CMUHPLAhYEcmo7I10C0Gfh7DJ/iqsJE=;
	h=To:Subject:From:Date:From;
	b=GIV/B3yDFwj+KQm1JOVfT/5GLMNSWhYifD/7JYnQwhnQLUoqZM/u5vzf0OtXthkeb
	 gG0k2RptWFGDw+DzzcdeVCYEj2DCWCVXWxtK2UjS43LFHzFZQoJolZ/CdLYNlAwsST
	 xdfuGkpXGo3wGYwrq30UAdDkh2ELKpcsiYn6fNn9kN10Q8eJLKo8I9e5LGIZ+1Dth9
	 l0f53VT2VvbJwZ3LIlEZGMdLIOM4sTyCf7mdUrFgkMnYywz3Qo6S2mP6Uec6Y4DQks
	 qrhehs4t/ExtT46y6cUXsRzBnl6cvbLYt7iRcJ7Jt5nkUORYyPJtlX2wbSIbaCQ7F2
	 lQCP8BWa2Q54A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7BCC5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178706463370.23185.12288148205714062166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63773baa2184faec06a36235c9da684e1d0db68e42fdaf3446f52d090071a5cb
Date: Tue, 18 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787064633
