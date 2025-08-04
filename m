Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C374213237
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754303994; cv=none; b=Afg/Qt2jNJmh2RMgDNz9ChV8fXyDml9CuCINTAKK0u/FviJrT71stBhf2JyQxOLT62TWP4PHx+Sftgzn3iwq5wgJJON8Q0TThc9hRsUYHMLM8wrhTYstlD4B0PYY83+3dLr+x2EWa7tDwsNjHRYLfNTNMI7JxGpchyxuTTXz17w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754303994; c=relaxed/simple;
	bh=uKinx/cvr3BAw4lHaWr6bRKI98YFnXXyxHdhbxafGBI=;
	h=To:Subject:From:Message-Id:Date; b=LeOo913M+jBLDCJykS0+mHJ5UfkInOzPE6ZuJASsTqn3+IyE9PNPrH1UgPngXUa7qiRBmPM/Z4d0qMTShNOURZ/itNOnSObfF4NOD72IKWyfomUt2SpNs0ToKFTqQ4NM0oC3nK5sc9YKllRUF7+DAJhhUq60ViaP443taVUmI30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFL/rgku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFL/rgku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1084C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754303993;
	bh=uKinx/cvr3BAw4lHaWr6bRKI98YFnXXyxHdhbxafGBI=;
	h=To:Subject:From:Date:From;
	b=YFL/rgkuBtI1GUeuJRj53jhn0/c/sq6UM60Yse3ggPRQK8IaaQsxuiNM1ZHyFo5IA
	 H8RW4V36JMHDyQsBYRfN1QdaHY/S+absxELjPWbx+kyZ/FnR4EsGm8qrLcxyzA2IGj
	 ewzDV9/ifoCYWalt8eXn7V8BDnIa8V6vR92Q21t+c0jUYN6ly8sDDTCC6+amYPZw4N
	 YY9nAu6WmzQ4s6q9FKKoJd3HUbAZp2vQ6+Pw43jbmMzquEU+sa229EsuCZLuS1pUcN
	 s5zt19PzJW/OfSCDN61fRIgrV/lxFeNehyDPLMcOG05mCVxnZpfZWvRSfmqII8P2p0
	 92yS4v3ryR/dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E8C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430399357.1263.10495415749481860050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69a601002d5db99d1d3e8625a4db0024f85afd5baff362197383c11123aa704
Date: Mon, 04 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754303993
