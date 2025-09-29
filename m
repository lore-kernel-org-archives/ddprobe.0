Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1853946BF
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759126194; cv=none; b=TSksgali8gP49A9d2PCVvzBF/Bh06T3scOdSk4lRiU+EUB0rS9TwHd3aV5xJODtQVF+lPYbYueY/pRvDzArlr3oGXBljJjxGskisNktX8Bagrbpbo4zmtd7+CvuxPMr4kbkP8ZM3kfOS7s2trbgnfA4S1+zHWx/aSKkV21ArQWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759126194; c=relaxed/simple;
	bh=Y8hRXWDNGbwSvzEd7jbiGQ4YzxrT3mqJ30uLEa2dM+0=;
	h=To:Subject:From:Message-Id:Date; b=rkhW5oSVyUlkQLywPECT5joRpOjtZzZtJE4/bTDlzjaeJxeu4KGhJ7A3Pu32EqEEKO2CH78T3IPr+OmrzNVzBuY4iQYSwMqmKLVQz9TD28Eie9GKSPGuXv7VF70KbLPt8SAnVxMUvxe4iZjrKoE9z1yt10JNDkjjpmgto6Zvkfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Amfq8ho4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Amfq8ho4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A686FC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759126193;
	bh=Y8hRXWDNGbwSvzEd7jbiGQ4YzxrT3mqJ30uLEa2dM+0=;
	h=To:Subject:From:Date:From;
	b=Amfq8ho4bkeOJAK+De2Wh9sqcZO2hVoAyTjPw315SEWkjc/XiMZ8WATdQ+tTmbpYB
	 s/9CAesCAHLCTJE9MAAZtEYOYotblkCoNhPbsqdp738hBi2oG24s9JAqBTeLYpJC6f
	 lyzos3nniaql6hVR96i0AqTfykC4YuunNABFD03xlNsIhvpjHn7wjU3FUf26U90IPy
	 ju0ohbkieG4/xs47a5IU/a4QrpowlX6epeF8pzEsckab4qBNitWeAGjrIXVXfPizv9
	 3WRh2ZWLCbgm+u2BXo7WBqtsOKZH7s8UKC8uLhXxXAowd+d7GeyEh+kl/Psk9teCfY
	 75mJ1MwpGZfgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9163CCAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912619358.9373.7130976266769768898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67969fe411c4729d1d6388d8cb9768927976048eddeacbebe8568ed807b7b4ea
Date: Mon, 29 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759126193
