Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E56640D582
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781835394; cv=none; b=s26dFFMYCeg5is7JPooH7qMf2+nMgHp//Ws32xuNUbBKOF25HRK22vH/taK3rnik7zPymM0w18igLGHRJBoT6qn7ZXqLCDEjHWDBJ7EbkEnsZmLk1swE/7rdHLHJStuekIl4lpka0rl3pOU3wK0AdB7+5fKxrpCnp1z4wfNPL9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781835394; c=relaxed/simple;
	bh=b5vPRt+pexDXwDtNM1d7mtMLLoFIYLib1PzIT6hr/Y4=;
	h=To:Subject:From:Message-Id:Date; b=I/Gx36DuplG7dG5DtUUzvFMu7zxIGxgyDBVYJZjRYtBu3g9Z1RiVpYtCIcj8DQg3TLkpBq5lJUnyuLFpEjH1U6/22PkkE4fQLYF7+WatbpNCsCJkHz2mHXfqgCU9G4jAYQjLybk3nEF+Lr26nbWkjBqtKS/CfIPSX8dQnVouOCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6ltHK3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6ltHK3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7F5C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781835393;
	bh=b5vPRt+pexDXwDtNM1d7mtMLLoFIYLib1PzIT6hr/Y4=;
	h=To:Subject:From:Date:From;
	b=W6ltHK3UIl0alPxPM/TxP9nRftrEn/YeygHHyWzVu3CY/2U8OdP3JhRdvvYQ1eafK
	 Dqr5wO40ugjLaisgRArYef6mzlRNmF/p2EpHEoI2VH8P5tHb/lNll/KMDEH4iGcfAa
	 TgfiWZ9CFLs1c2Qz7GwZc1PgRAbzLRLLAQOzloyCqd1/D9X1bwpM24zoXXMkLm2nJo
	 U2YrUzuD2+axDrOp9ikoq/E2LyhLY7Ovltj4Ptt91K0IyZWzPbzn/tUrGOkk5ol0Qu
	 m4KNKe5u9aG3cYcvd0y0haML8qdPnB7c0vij2lj2jCvbxmOPyjOuMORKrKts9vPVUu
	 pHU3gzghDaiCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF0DCD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178183539368.17795.17073980308169353601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f2c67fc41431e44c5633a9d56db380e163e2f7ec63a099e44c313c87e55e8e
Date: Fri, 19 Jun 2026 02:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781835393
