Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B93D360ECF
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792316434; cv=none; b=nxW2G8JHSCPni5GSO1uK10hogpn3CcISHl2II3rQArhCEIRprgpi0C/PCz30YEQwCfTwuGp4oQ3NAMredFWYaWtggoDTNKClpkRTsJ02jh5er8sct05Hvn8M4CurTnGb9f+K42OQ2eVbXDjxrNGrlhQWVEeq7E3bV4Svhi2bYGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792316434; c=relaxed/simple;
	bh=LLZzajIJmzBFpXaJnaC2hMdHpMfM3zHGGzQjlXNj/EU=;
	h=To:Subject:From:Message-Id:Date; b=cUiMCXTD44LMwwMOV4ks0a/3QfMnqtpA/dv72VULbSC5kGOjjJVqKqx8v5GIWMKR84oAuAykuURGCoAkqPvZDEsWmMgSD/ckAwDRG7JImdCYR1lZ20lwNnGjMuFtomnrMj1gTKW99tFG6K6H5KiGElTcUKptRlSvPH8YKDaEtbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSCvy+mu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSCvy+mu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF24C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792316433;
	bh=LLZzajIJmzBFpXaJnaC2hMdHpMfM3zHGGzQjlXNj/EU=;
	h=To:Subject:From:Date:From;
	b=QSCvy+munyNi0LQkSLPY3wFrM2rf1Tu9VH7Fl8RLVF+giPr5I8lqbRtVfpXdChiyH
	 fdjp0WREo8XpaLW3+F9qgftcTQV5jww2J7yJUmhWOtiNlDVfzyqrLAIudS1bI+KkNX
	 t1oa8COS/jol7TSQqbozpIE6pTe8HcjqkF5QJTMQ25axAu7vjTvMw9/YGV2RjMI/JL
	 G7K27S4vsYurHEkr/12AkZE/v3TDs1j6cZLH+7LxaCHl0lbZs7vOY2q1neB8p9vp0G
	 bVAjHs00RDSkrCQXoyJ1yRS+kE3xh2AuQCgStzzY5uqUf/zdUQXvuzG5Jvii+LliDe
	 lfmdtq+QRdnug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB79CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179231643369.1393.6655282019162700216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0baf8cb00503b3a49fb884c41ae7668c2c7a92991d257f11bc5d5088a1501d
Date: Sun, 18 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792316433
