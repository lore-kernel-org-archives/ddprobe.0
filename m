Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD551A00FA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746265195; cv=none; b=uK4KSRqrRkj9N3PCPKRCUENpLsTFtQQZsH/rn5S52kPNJ4USOXFsCPcXUbBFrNCznfjtt2tR0ZNpE3g8Kk1+irsGex51gaA4Lm2RHaIGzQK/nKCfbr2DxNOI4wH0STWoROShOSgLeRXZkbkO3S8/9UlRtUEEQv8+hSB6lvsBqzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746265195; c=relaxed/simple;
	bh=tseo262LMn6bvbG0BrTerT5yrVml+F3GD2GaQQmiRIU=;
	h=To:Subject:From:Message-Id:Date; b=Qu6JXKZzBAVVksntUrwkHByAo2YSxB+CKurn9tPbeSsOlbg/VDSqkcQxy0dNcW0adCjWYbPDkApJmoSv9k3kTF0uQGv1nrIiDqg8VY8cLRNK17brkHmitfBp2mAiNLWeaCzkJnMPQSsRrgeOu1L4rtSqGFHbPBpR33YnpRZFkSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ggb7gJhc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ggb7gJhc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6300C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746265193;
	bh=tseo262LMn6bvbG0BrTerT5yrVml+F3GD2GaQQmiRIU=;
	h=To:Subject:From:Date:From;
	b=Ggb7gJhcCTN69d4Vjmpgxj9IlyxTExmj/UsudG+t3dE4jkjn5e6NpP5uC3RseJzmh
	 eSFLO0L2SWAcyOfi9Q8dN139zk1RUs0hpdNuTXCflxlAikGpr7smA7YKXWyUDSZFOH
	 9Qn7RmqFe/FMERjSY5iyCZ1rsV5GLNgfcZQqbPjx6FMwjTk/gUXagtv75YwvVERiQx
	 6LdNpDOXDFeGZ9LoehCLhsEFqZWEbZwbGcjq8vl+cJ00Ung1Mz4ZhirvawJXxp7uul
	 FdMktLjWwnON5lgeYENqCh3bnycOAWO6U/tRNLNOly9aQiA9jU0tZClkS5hBswpL1l
	 wA7XnRjm87sVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B03C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626519357.26336.1989213642955335717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab4dd0ed85b2f3c0740ad70e6e33cb066eff91dcbcaf06339ed8ef38f2ce8bd
Date: Sat, 03 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746265193
