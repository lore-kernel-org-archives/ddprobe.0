Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC21311C22
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762346994; cv=none; b=NL9xA4k9S9s7JRn17dUEduhbTzfZMSaWCuPHZKh4WkwXXHuSW44V/rBYzdKlp/DU26WQnwh71RLcqnZ/uWoxyD4ucR5msGVVbQqDqwu1ff3Vs/NGi/vSk4VJEk4PEzKsDxq3IsZNLroFBDOLnk9hOvT0pNySr2jMqOx9k7pRVck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762346994; c=relaxed/simple;
	bh=FbxCeA5otmjU6WZAt81L5/q8w3io3dN2h3KLQiGLzUI=;
	h=To:Subject:From:Message-Id:Date; b=tkFT0LHDYXyVqOYWJdeFLLgtC/0Wl7rI5uFTjsT1Rv6KB3lMoDBiYix4Jpfyxsms2JOrxyqrPjFkP8sT1dyzYIkUEjChFpg7vqxc63zPvsALBcAN8DpXwDbHk0co6U4ejWCSXo+9cJFWlItGdupb4Va8bdKDlXKOeVa0aBwWHls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fb93wuoC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fb93wuoC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB94C116C6
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762346993;
	bh=FbxCeA5otmjU6WZAt81L5/q8w3io3dN2h3KLQiGLzUI=;
	h=To:Subject:From:Date:From;
	b=Fb93wuoCvrl5I0SdD1I+Iv4EH39Nhv8SWRkMHtnLb1K4uDN+K3/EQniU5sxLBC9XP
	 5cGHpha5rNuWj3oVhr22D3xiKtu2TeF2VuxouoKBm0fFoO2X7ZmCzc0vFAnfkcRR9M
	 bpyMfgVVHDF3VBFaF1a2hYf9ciPnUidSf4eoZLVoNfds31m1FsdYj29gen0GRIJPdL
	 nOKXIKMvOVNuNuPAg/P62Db7Xgfkdi61qsJySrRs4+kwnkwGWs+xLGqHNwabC/oJNj
	 N8Ke36OWE+qNLSdbZTG3IdwasXrhr1exZpaOaqKkXP9+TexB8P58+H1jstq6S2b5nd
	 IteYHPU5+Sofw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904C3CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234699358.11865.12931625896038034950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21893f265bf4914cc72b617519e75f0a5fd6ae03519a0e6f2a36648777cb585b
Date: Wed, 05 Nov 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762346993
