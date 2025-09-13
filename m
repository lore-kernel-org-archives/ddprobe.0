Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FC042A8B
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757740194; cv=none; b=Ze8JwMdn8brYjVYFEDxnoIeW/wyzNJpfND9Tz45ZhfN/R00qy2NciFTc+fAQg/7438ZjMZY3WK1eiM/tk56NPa25VKCUYv41cvQyglBeYex3/5r38LGP/5ioban62BFPZN4H3FdDD6oGiX0gazFFD8eVUCr/eE6xjN8/Y/kZdag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757740194; c=relaxed/simple;
	bh=c8BEYTefqeyPPq+suuyIB3JHOxNwMhvEZ1DvGqnfABo=;
	h=To:Subject:From:Message-Id:Date; b=M/+io8t38w7X8tAZocCPfsFtp6kgWX9jMTodEXs72xq+heV8BvW1DlwTfeHSwvuMb03/PbGotCsBybHiUaSbK++b+q4N/qyd0PEE+Ko4cYblC1G/J+BtVmqcNOA7Lj2N3mg3Hj6DQf1g1wSSS4pWjojy2VFDRIlpcUU+bB00R9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDlrUi0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDlrUi0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F17C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757740193;
	bh=c8BEYTefqeyPPq+suuyIB3JHOxNwMhvEZ1DvGqnfABo=;
	h=To:Subject:From:Date:From;
	b=YDlrUi0mz06iBh+bJKPoALnF2VbDblUOY9FSMg8vjw+eXk2QkwHMoWamY2ZIbzvC8
	 pFsxdQDQtKxA1A8yvFuscfAA7H3TUTyMchrWruoern9dMQRmhLoFF0ZrPwLcdZBi/z
	 6E8RY+TxXwkFyYyImEcFZavL+o1JKg2DdrzawIMa6cJtlxeB17LLivIK/5teCc/lD4
	 ngKzHrhyGirAD2WBwkRzUt4spZC24WOIk5I+W9p0/ZUNp6syVRnPwrMf5FOxJ32+Az
	 AKr/N41gWhkkDJQsJz9veaqIc4DTepigmAydo11jGYMASRkUMPIHgLo2y8oXOq4LeV
	 hlh76IdssMi4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F56ECAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774019357.27685.15528384386836561317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643e60ce8f172e3f0d4e607f2bdd46bc1ab8ad86858e7f31e761bd8b31b9ce85
Date: Sat, 13 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757740193
