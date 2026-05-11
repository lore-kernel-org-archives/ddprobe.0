Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2942C2727F3
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778502634; cv=none; b=oD8gj2J6B2S7XEm8igZi+e7yKJFBarB9EDy0D7IbwBJ3D1P5o22R55mv/yyKRII4WVwZSFLWRV0oJo4aPxbJIGQAdgQZ+XULpBofydqFhITl3au145zNWpgOS3jBvJUEQ8EkT67hMWLsgZ6RpTIN/PNXyySjLGDa0DHtUSi75IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778502634; c=relaxed/simple;
	bh=1gmMwTmAlkV3EvbfkLKeNpuus0bEeMMqdjTIH/6XOe0=;
	h=To:Subject:From:Message-Id:Date; b=CNiquTwcb3EanaxQE3F493S3C7Vl6st9aCor9MDsskElrkVWM7g2xJrF+jvktMqt/y6p+taUA/trr2zm502X/iKd0JAKmb1XqVPaVpbL+adNQwSelIVlBiq66jp8Ch3wsCmrErVHKW9vg1W3t6D6e+MAzGUY8l50A5ZuyVWKYHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6N6hMjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6N6hMjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B936EC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778502633;
	bh=1gmMwTmAlkV3EvbfkLKeNpuus0bEeMMqdjTIH/6XOe0=;
	h=To:Subject:From:Date:From;
	b=Q6N6hMjhtvqv4Wux6pbsSoIGmkrltgdTWqkR8ZXcHqJMVnhazhiqpMY5zQqCUiSwm
	 d0Vb2/Dc3maO0JUhnJJzsKNJxHwEXVMxRiiSgjB9FSmMtl0BbXLUcwUm59dUNbRvbv
	 eM6gBZdWl5jhxz7fvNqj8ACeen6nkMhCzondwfwfDFvCOBIparYualzSeeLYzTkfpR
	 MehjLJM1fuXteqsMz0nPWsPWcv+WTXHOK//yJuK9D1x6au8ULOCgqGiHO7PXkqDCuj
	 2WTwsXGx7u/rl1WpBcFsQqX6TJVSbh7rnCaHTDfVRy5zbEGwqg+d6RHiWS5hyxRBby
	 eOsG9epuvvTYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2EACD4840
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850263369.11683.6596005077693291902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86ce6554d042c0c5655dfcf3db7755c069935b200c35277807a89375ea9f6e1
Date: Mon, 11 May 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778502633
