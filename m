Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8591DED64
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761606594; cv=none; b=BO5uNmPN3abzFvy2UKAmUlHKXPKQGONEifu1ENwxI4UXtEJ8+HZqvJKHPCHeezXeqw/i/h3XSv9cQ47WwWWq14opVKskM6SXcT8NrbV5JrKpEAb5JlnbGjKxZnwqgPkj8mySLc/1s0i91gUe0kHkweJqSlksmOscP08ACVLb2Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761606594; c=relaxed/simple;
	bh=32iBBLPLBHLmB6A3CByVV/xF04yg2KnchEvmLqVClbc=;
	h=To:Subject:From:Message-Id:Date; b=lZj2Co2YXv65peSNV8lRZwYivRUESBoaKGT+Agzfd+7aeC9wtb4C1K7aMxCRN8CoM2P1uxH8lgEn1vGxOIO+hXZnSyo56o41RhIh1A9A3Znb2mfpWSFqsWL8mUDI7XBpttWpixBO9PGHuIesuJ1HLStJR6PCR12Kwt/k79kE4XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vM4cEWQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vM4cEWQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F71C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761606593;
	bh=32iBBLPLBHLmB6A3CByVV/xF04yg2KnchEvmLqVClbc=;
	h=To:Subject:From:Date:From;
	b=vM4cEWQNYXjRYAWEk2PAN+QDfs8GDxWjXB+MerE/OBpiWEmT7nLahjy2E6Pj0HjGL
	 qgi27/FJleaQPQ2kIJPOzcRUoD4u9cGGLm5kYwpnfx9swFbQZ0DAZSN3z6Fvcv+QGO
	 Z0/I9g5fXX/YcODOVtVYUvfm2/7u67DUqB9NDw6nw4/JrCQqEMhYXMQscJ00koe470
	 QLfwb/TmAh/cMdTEj550Jm82VwqYOXPUrSv0Dh33G3Ng8ii23YejNvx2PnFgGg0bwJ
	 c9TVINkVuanyVoDTk6WA2fPnpt4drRqAckoDfGj8234kUiMhCreWkR9K12jWSJ4Ux1
	 Y99DdKhgQc4Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9450ACCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176160659359.1051.7848088246638936594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df7e775aeb5ad97261404d2b045555fe4add2365a4499429d06541e4ad5ecdd
Date: Mon, 27 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761606593
