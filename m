Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EF629CFE
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724564754; cv=none; b=rJT7wQgNlIrr3438lXFN+WvkdIYomOcZGjNSi9rkvhOt5GPEHlSo9mdTXn9pWoDeCyDUJDGrZ5Y1M5TU1Upf72RoXtmYOucBFlswSLy+ZOveqHfSqleOdfr8ZJAXJckai5hal1aiFCo9mzNcpFtDgb3t4bQbYcXqYDnf4fpOjYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724564754; c=relaxed/simple;
	bh=55g3sApupveZPfyNdBXWcagcDlW3zyzxwQqieOSNDS4=;
	h=To:Subject:From:Message-Id:Date; b=tb+lBFQJ3vSpmU+Nl0t/Jaz0nYlKS5Bna42ZKcp91//uMIx4MCX5DOrMU6ZhoSmCjxDb9Cw/dgb9ap18asDvVwAKdbEWL/t28J092NmzGTrrUEhbBYCOMQm/WpILjCCDPfGQY10KRZewYDP+Oe6pMcT3c/258QdJporPOYEen9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7xW7h/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7xW7h/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9C1C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724564753;
	bh=55g3sApupveZPfyNdBXWcagcDlW3zyzxwQqieOSNDS4=;
	h=To:Subject:From:Date:From;
	b=Q7xW7h/R1tvksashwh6P2pWAxwRUuS9eSLHhX3h9L+YAshHOxxGdgN362oxM2ceni
	 Lax8lRvi6Bnzn9EAtVviKn6NTDKDJQ86o6k1lpt6o8nlPDw+MKl1WjJA9BAYP4ieoi
	 RH+X/hoDnK8GjLn4BbYLyTBSPFoYMRHG2MnGarwda629Adkn7oH0T4aE2n8Ti4FNIc
	 D1ruIfG/iVb1OLi09nqQc3RNLR0TxXMKAVUaqd2fayud5hVuLztuKn4Bnl6Ixn/oCK
	 +ZthIEe06j1yDFGkPABJ6fiBvcsHDH5bxAoN9onXPOjae/86yxm9c+uPdlPqm5Mm2z
	 hFil+5uMBRrNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5D8C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172456475359.9737.1290152147195034715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 360f1310645829740c1e95692479959b61194d03cc04dffa56fad11c71a18e23
Date: Sun, 25 Aug 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724564753
