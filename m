Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616912110F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 06:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713163763; cv=none; b=YrNoRKh8/K8j4L/NH9AtLGz3RGmU4YdgZOHPHv/7GD/fJovYb7N4qFlT1NEt5KEprSyhDwiGlJHUKRfIbFYxNYGWB1LGIzcgm2KVSxIhLl4UY5a/jGoCdSq/ZV0zFfJ9SFgX9CAIMauC8ftxZzD21/iIGll2Ajj6O8mg7Z9Edls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713163763; c=relaxed/simple;
	bh=nfAqQAVZ/DR+sjxRvjgB+igy2R5je2+9fDf4EG29AvA=;
	h=To:Subject:From:Message-Id:Date; b=JyToDXCpt/hA68c0IWzd0U0XNSpGIGXl2tlA9rbY6K16BPCfknq1WYN99P4OHuiauivNrlgb5jIwV5FDb5vKPeweYR9E/bMOEyGv2ZXFjB+3q+IFnqjxOmYhLIye8joH2Pt/8SvIxfQsYkrefiUHeJzmAUFIWxc8rwUj/b9OPVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMRazRMo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMRazRMo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4FFC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 06:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713163762;
	bh=nfAqQAVZ/DR+sjxRvjgB+igy2R5je2+9fDf4EG29AvA=;
	h=To:Subject:From:Date:From;
	b=JMRazRMoPjm/9uGa/YJDcToNSvcNKICUuwIZ5N438CCC/wIeGBl3apKXRjyXPHcfS
	 neu0uAgPf/AurFbFYpq05ShTWU2hnodZwR2NLmC+WcYnxiIfmVmRsTW4lX8mhr65+T
	 M+djighezwIVIQ+i7RNdql0llKhAqxynbF+x4jx48w3qnSNarCyU/Ha7JifkFoSaj5
	 tvbnJrzcgnDOCEURRA31HZne+yxwCvdGdU0/780iWhWqqops11ItyFYHQFET7Y1a5u
	 qd9rm7vfCxQvZeMpGtzogJWC00FfLpT65Wvrlxr8lCF0Zp4T1qAliNcUt69kpPzGth
	 KTphAzSMQmGUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C846AC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 06:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171316376281.18784.10561103749761526977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0ef6099b69f759e597d71f03b8912ac3b86f1af719293dcf8256cc1f6e1999
Date: Mon, 15 Apr 2024 06:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713163762
