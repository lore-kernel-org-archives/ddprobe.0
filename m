Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114422F0C70
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762872594; cv=none; b=HevOCOO4rlEH0CKwRCt9iWff6i+RIrERDOMoJMhNtLT8OPYAsuQODZU7GYAScfGfq6aUy2G7bX8r8vCobAUtZ2wY6D0KzF6f8TT6bOU01r/hb/VhyV5opX9ajGf/em0eBfmJME9E06kv6w2W3h/cq8Lnw2cYwtZFTqJ3p9jvjQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762872594; c=relaxed/simple;
	bh=F8VnbDaSg0pR5z88CpL0PoRRguHFO7IhJ9rBxvnxjRo=;
	h=To:Subject:From:Message-Id:Date; b=F5NJoPcSkWSPXXKQwfCEa2S9SwOijyNXp59/BNn6XNdpfx3QkxgePUXtdyEuB4fpnW6/cpXciF55YXXKHFRlM0JaG8SEtkdBpPGiDYieXnxLYNKKB4HtJXBsjWN0znlh9YLxlEDj9/EUbkayGvpXgXDYS9jHCGLXP/xWWOMlp3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKyCtLG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKyCtLG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C54BC113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762872593;
	bh=F8VnbDaSg0pR5z88CpL0PoRRguHFO7IhJ9rBxvnxjRo=;
	h=To:Subject:From:Date:From;
	b=rKyCtLG6B78mkBWYDuxiF/vePSJbUXLyorn+vezYFO4GhOLpUFlJJb/5IHYlvdJR4
	 /eJClT4PwjOTzuSWHsYgnfQGDeoX51YJ9boFEOshyYj54e/A7YUbblIglnANgagPeP
	 ckL/U6x86NFu3vd4XI50M4A/1oZKw5JdUFZ/kzd7dQK8rDsZkXNxxbD9jGe4lD23gd
	 lGi6NdGE+miC5cOR8ioznil5LMa/BjxR+geymFWciuDPyGM77QkIVZeZPv7BIoM2TX
	 W0omJ8g4ZJmOlLHwWGx6pAmkM5TfhK/XZAey5eZQ9OHHkSAdX/XKzrJbw8t5dzzq5W
	 qIjUaaHCzPo3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FDCCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287259357.27003.13830011815804063274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d7092d57ceda7882fb5aab15afda71fff445b062146bbd5e61a717eb950e769
Date: Tue, 11 Nov 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762872593
