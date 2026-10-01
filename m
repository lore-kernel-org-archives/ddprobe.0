Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90C795172C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790863834; cv=none; b=DoQPA/bbKoSivDJU1mLmu8te2JSO/cYU4/N2sUkdwtK32PkcT2e14McG8B8jVJcqPYjyBS3s4GIHMcF4PpIBrdvnJFvMpsq9SRzdSJjQOfxoLJxnjR8DahFwjjePk57qGvzhVPcEVKRtYkv0vu2yTgvnE/J6xNYa7tS9RJ85IjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790863834; c=relaxed/simple;
	bh=Ge/lMssfbZPHKxveqiTPE53qo059esG30vIOnSXbA/c=;
	h=To:Subject:From:Message-Id:Date; b=b6vZqH9IP/gAh4kG0mmmyXehmMDVx38JYyjP32mVwg3/oMtYjBg3TzS5xFz0ZfGzVWOdxJl3rAeJpnZ8qesMWEfQ+nBVKNgUyEvlaQaXskPeTGnwhGTjkJpsEnthtGpzCfFCNcpsjiKxe6gBPEdnsv4Sd1JYUI9YLgEjzg/+EeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fz6de/DS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fz6de/DS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC84BC4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790863833;
	bh=Ge/lMssfbZPHKxveqiTPE53qo059esG30vIOnSXbA/c=;
	h=To:Subject:From:Date:From;
	b=Fz6de/DSB53hTXZkIjkXlv8x+9aH0kkWwUCK4pDIbNe30W6wFcRyWfeWGH95qZ0nF
	 OSTMuLCytAgB1H+HKpp55fWexjHZKFiJCK/+hu/0UjnfJ7DjhTgbgyGBROYw9K5pHw
	 kwg/JAbHvViNfdoEXIpinL9wvP0udBZsxGXvfC2ujmRwLvhYlZyUhvMG8A800EsrgB
	 xBRAP5Z/nK8LIzq9zRxRBt0mcjSsIXqIwBCM4Jr7zUL7rRC9SsQRudXnjEo3jfgdcB
	 risrjZyQz4bN7/S4Z/1lp7+wS7M57HFAgv/Ceqcb4COhlA+B0NIQad84Kho5rB6h20
	 6E4BE8SSCej4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53A7CA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086383373.20456.5419419722809995597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2ff2f6c8de32dcc6ef0feff64c3a7d7d3a7b723f95631e9804cd91f748e278
Date: Thu, 01 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790863833
