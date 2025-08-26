Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFEEC257830
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756235993; cv=none; b=bhMEfJrp+N98M0oLC8LSPYO+2l5ET6esTmSvfBs8leZthYbtLT6IlGx5EdRB2x1/r41N4YWoQ7dRNWvxRqjwc3iGT78AWaX85o/51vowDYads7IBw4+c6nQNZBG9CftMM9WE7mZYqEsybAw5smmjgkp7kFBkHr9k5sdDJCXwLPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756235993; c=relaxed/simple;
	bh=eQAg15qTNOV6vcGypLjYYa/C1iqT+bb09mx3lajs97M=;
	h=To:Subject:From:Message-Id:Date; b=eVnPxJH5uoG6t6AKUEexsi1c73tclwlc44J976USA9Glk60OJlnsvWmd6BTXYXz7CxjD0VLyfVU/to0JvGS974FISSQ/Il/L2KwTvQ8JkRyHXmH5ytWeM3XECWVLhyqsP2neazdx16V6nJW3C/GQ2bMUmA5U9ejD84qXdpZVenE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myOeQC3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myOeQC3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5F2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756235993;
	bh=eQAg15qTNOV6vcGypLjYYa/C1iqT+bb09mx3lajs97M=;
	h=To:Subject:From:Date:From;
	b=myOeQC3ELJ7JiebPCMvtti74dXL9L/f4oFb055cMb/LfREf3n0yFTrxcAtYN+88pU
	 SQxEcsMgT5CDLU6t1FjqiAEix8dUGR/rh/v4Vr79Q8jhtS/fqmBFEoC97wsy9E9/Ak
	 DNVYx/zY8nn/wG6JmDis39V7x7i/HlzTrOaSY6U43yYJC6UzQUBnk6Alg+M1pXO7fS
	 uzN6uq82ih1CbwC13aCloGxVJGUJI+cxbFjDib10oshtLeMvBH4EngEpwibC/T2ofL
	 YrnoBQilh6cEfEaG1f9uOFk6L7gaZLP0T/tVCHRBSLkXT8rNFVqXkMJxXN2S+ZOWpR
	 u47jtCKvktxqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E115CA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175623599357.14244.18082220334967249444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c908d7f409661893b9cda8553657516211c00543d59a36a9d58f4a4e5c8c59d0
Date: Tue, 26 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756235993
