Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580332BAF9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760413794; cv=none; b=G+HjoltxIGyEq3u7Awh8bDI5VsXvtnxt0lQtDWFllsrIXSlA0nWIO5FCfmZlXhFISnCZo1LxCOY6MVt7vvgO4S4G4fQRUAVq26jfSEa+c5lR4UbdHHlweRx89MXqnFFJH5uRZn0TezR7+7tp+q5/xjpWnnBthZl4JyevaJAg044=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760413794; c=relaxed/simple;
	bh=7yHKVZUS6t7VkOEEJm+nspK+AxiWoF+tCUk1ddee7Tw=;
	h=To:Subject:From:Message-Id:Date; b=QbuWrl+apHbC+KJ5u7CalYTBY4TplyTPdJSK5PDpm7Kn1cbR7GcYE1U5VxsEMEDdpkmr7frmmMoPlrus2H805hKvTcNdMV8z4ogjh8n4fsUdFAdvzfvq8a5uWs3I844gjoUn1UNsCIIGuXUhDC9yMnKQJjZJhEQYFDe0qPuEr0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXvXcI6o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXvXcI6o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0208C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760413793;
	bh=7yHKVZUS6t7VkOEEJm+nspK+AxiWoF+tCUk1ddee7Tw=;
	h=To:Subject:From:Date:From;
	b=HXvXcI6ovI/OkKJ+hyeP0rPQ2zvCIKrHvIFZmcJKY9MG77yxp+Ui1vEc+qvmA3hr1
	 kHmouFWOZF3b9AyxDHRByIiYFksNj1fFI67h2YA5Lx1BkhnNC4ej8JHhQNxiJVsTkR
	 Sdm5RsM63DQI4RCdJjQ+WTxlcXR72cwygYG+BjxkLYnWf5NyVFpEquVrwmmBTOjg23
	 1NIXHXOBoqZvQOFvBc09SGDNgboMcXvC8ZdFwW8PC5ZQZw0dsFKnkUBYMi75Ymu9cd
	 8JtPAI4e6UtjT4H3JjA2Mu+hk5bFRImCJifmNRoBj6hmMLC9yA1CXG8a5BL3UugqBy
	 AXwEC6iJ1zM+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E63ECCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041379357.25302.2275271072915515270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c3e3d08e8d4bc99517eff2aa57a767fea266c3e1202adca4e609c3094b44a7
Date: Tue, 14 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760413793
