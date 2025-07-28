Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3861417BBF
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753693194; cv=none; b=pCGH9igCAZ4iWXzMTQaWsXnwZzBSP9pVoYJy8U3AhWuHE5oYFLp2x1rxlGE/qnrCGfp0FylAv21alBJ6j9i/BT9gzyqMh+rPLFhF96n2Wb5wYz1/Z5Mygd07U8gP6M+tc1Ff2EHUHCBYVFgtAiG1ujIYTXdq6IYFV6UnQ/SJAY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753693194; c=relaxed/simple;
	bh=DzGW4wU990yN9F4C78MelbaEYEkP6E213HrQV9TwSx0=;
	h=To:Subject:From:Message-Id:Date; b=E5NZhQ+d9DocQheDu16EYC1wMK0WGwp6J1ZzUYHWRXLlDCfIcn5funnXuPXVEReYNKIvW/cvC5Sfx8OWBig1oHazhASeFPjDdZ+1/SNSPV19VVaG+gHVKlbm9nG4kdo+0eVlL/IKVk56dfZwwvAoyMMCybv0gypO8gTQrTm9s90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krXqfbAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krXqfbAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B62C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753693193;
	bh=DzGW4wU990yN9F4C78MelbaEYEkP6E213HrQV9TwSx0=;
	h=To:Subject:From:Date:From;
	b=krXqfbAsr0c1PXgDVzwjZG0Xe/M1F0KviZ5NCJmyzOyOnTQ4XxeZvhOE0ZwZfyGBl
	 4/fE3zdwV/g2NG7JgUuvTfC7dYe/H/KgB1cnBGfr8rJ/QFlkQI4DEYqD45clSJavI/
	 qmzHvTPjB5e6ALShIThRMDdYhHYgxHfDRP5mYPJFqIlXq60oUblLIHHOCHmx/r1nXn
	 PSv7FMY/XZkQSZMbKfzN5t21tIR/lN7UjzwFap7tPdWK83WhX5KB5OI4ZCxuyLVoJe
	 g+FdyGXUB19DNyomJBBn/yq211PAJ+f/L90au5ytA06+Z7sz4QVhm3m0WrDyOGEdE8
	 Kp/6mcplfWOvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F654C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369319357.3778.5581736283691658367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00eb1249c96047c2a67b5cde4a5ef6c59bfd386d4e380731a0f8f3b7b300eca8
Date: Mon, 28 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753693193
