Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F8F9474
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 23:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720999883; cv=none; b=WPeSJgXZdFsZVRe6FQnP8yXMzrHxHlDSyX8dcz8O0/hTcVyBbKtVwB+47gTNJepA/UJ9UmT4dpvpHNA2HbJRzgz5B58bozB3w58ejjqY4+R9EZQ4crxjXB1OMoboERSRBRlG8f5ygpsUJ6dun+f0eWbSZLsGuheKq/8fDefsspU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720999883; c=relaxed/simple;
	bh=tPrgcKA24imSpaATHiobFYirugjRdHb2T2SCnAHGM/k=;
	h=To:Subject:From:Message-Id:Date; b=Vvy+HSykhheFoAelHFF8HBRw44qOgUgG6lKiM27pMzHA2zYap6Xki6UbyHoE7j+0RITIrrGbJt73LWegQWbjgNuZj9MzzSPE2R4q/1LjYO69oHyYg/eKcoaWuKBAxrKZcacBRufffZ3pSgVgqXAQSfpdiehxIxgqKRdFV9RxOzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atGGkaCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atGGkaCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94C4C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 23:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720999882;
	bh=tPrgcKA24imSpaATHiobFYirugjRdHb2T2SCnAHGM/k=;
	h=To:Subject:From:Date:From;
	b=atGGkaCpeaM5LeOfUaseN/pHCRSOzFjEbjLcDM3z/tbv7iurB67fZaNUd8+AldLiG
	 TJW5odMuZBsWrU/GINuTh4u6mfazGFxeeY4OndnuPqKSdk4KDBTnahsHkf+iaKr5Jm
	 FX7UTYXlDLlK5CY5DQgMEjcBaEBGVPmrUoq42HgfwoEj1BKG1Cleua2liCeFAN9tZg
	 f1QQs5++h66Nsjz53bNi2dAMv7ZS0WlY7MIgAZifyXNgUfkqmuFtht1f6Nwt6zK/Wn
	 NgAp+qpgbQUZlKXwVtJvTSLid3AJLrgkoQ+WcLDaVBlqeh42kKWIaso5S1pUh/cdyY
	 s3A19E4XyLa2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43DCC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 23:31:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172099988278.19290.4738902275249117240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa83256cb79ac48495be492fd6a991b8376b8b2e2a0405a10065f0aaee643b5
Date: Sun, 14 Jul 2024 23:31:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720999882
