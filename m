Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E310F8BEB
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706241497; cv=none; b=ptkadFIHv1HnANJPjeYuZAAR+h6aFQ8sVg61gcFNgpyZOfePE6rLMufBN7SAcyTjxvhvxel2AtJ/Oq1CSfEgBG4Vn//6WPFB/7qE5UV8q105TyDCGpplRAAqH/6OrTqISdLtiR78ewpY8UtEMAO5ZCvxtVTWRtuMs6Wh09ydeyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706241497; c=relaxed/simple;
	bh=ulpt72sKwcJPTU7gu8Zc+xK5744nSvThpf4zliya4t4=;
	h=To:Subject:From:Message-Id:Date; b=MKjpSe8sL5Jv2UkuUmrwHxsDQcvt4s5LIOt1d9CjPRrAosyAo4eKqTW9RfV+oNWUR2sGaffa2wx7fEOXfGhzdlaR8kgTd64mRlbT4Xyp7yqUV4jTiUq5qwUNUSwO7/P7OTxl/Gt2r+wXcPlXGNaPUyZK+/HwIbcEJF/+JTS8NgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQUD9Ldc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQUD9Ldc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76DE6C433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706241496;
	bh=ulpt72sKwcJPTU7gu8Zc+xK5744nSvThpf4zliya4t4=;
	h=To:Subject:From:Date:From;
	b=bQUD9LdcGRbni/fI1VjHxgx8MrJjFxZB1T1mQRvIHFPir7q6Z6LQ6A2NnVFoepQik
	 0sv0Jv2wLY8/oAiJB9axT3kNAgTJXcKR+YbCiY/Gz/pLPeSYEvAStej+ilxxj7MkhL
	 c/CXh5rRz9lw2SKv1C731JXjbypl/KwRgEqiSQYUgpT49zkoPWjR+YSyTzWrebvjHT
	 aaJgFVtgdqIF2PTqyzKMEpQHb7fhsmyxPsw7qtPFEm2M1qvsYWgRbLMmZzVRzbSrSY
	 k4oMNWaMub8DTl3WwCPpC3XUpuN0IX5DPMK3hHrIkSuBxuFB3pP55o+0qY9Xvy0Wym
	 1PEmuRvLNFbaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C566C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170624149637.19567.16897745341529719535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8819fce1ad27a7710c5814cc891bb4601e91ea27bbfe0ed79d7cfec317d7d553
Date: Fri, 26 Jan 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706241496
