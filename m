Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1C9393DD8
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774962894; cv=none; b=p6FnGn3SO79E7++CS8rGKdPL71Z+Y3FrqlK3Q4fRoIbGQkup33xOnnNMlcPBaAYIntP4WZrEFiHUnhkLlRKfyY21gG3RMqU/TY8+JkkwB1pDBxemzXhoM9q9hNSkE8C4/795ykXTvol01Lc6lODB/To1iS9Fxnp7fhd8KDd5MgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774962894; c=relaxed/simple;
	bh=TPz4lWN+hRxkFOqW2D5rA3TQOOLyzOhDmJIQ2YN2KNo=;
	h=To:Subject:From:Message-Id:Date; b=TDCXGLbkayL1PQKKe2AEeV+mhlI4dsyJGy9aVfkqcTiD6CarAqemZ2n8qMwwRs8K7I5butkpwMVEW096EHTjUk9Sd/2JKjAVlgySRISNQQFuV5CuBBncWs8eoOp7Qa/OXC1Gb849YH6wqL1ZZ1lCKGsNnUMg4Dg9zVk9XRfbVTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXrpMXnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXrpMXnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A514EC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774962893;
	bh=TPz4lWN+hRxkFOqW2D5rA3TQOOLyzOhDmJIQ2YN2KNo=;
	h=To:Subject:From:Date:From;
	b=cXrpMXnHiamHYGpL1fD0vc8fLnQ+o3scnUbY6fyX+Chsk54KSI4/LKXVKXiX/fymG
	 lchxzO3tYoTjA/gQT2GnA7xVzSDLedkPWtNT43dQ2Ww8E/LjY0Dzntd/XBRIMMyaSS
	 H38IYYQcnI0OBY1ZKY4PxCjTop1AO6bQGn4KRBHoNPF+DFk7j0E3+Bpgmcc3WOVYhk
	 tDMkCoiySx4rMJx/ezStGCNV0hp4maVLv1nwODDvR2Okjym8LWpazozLbHNhEaGMv+
	 BiXxSkLST+0sHiIhpN5iQtYvXk7q+W3mhcOupCnHc7ba2O1AG+QjrOWYy7AyFEPJZP
	 HF4ZDcT8OIkow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B9109B468
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177496289358.19451.10136553440947933204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8a0349647daabe9afe389bce95ec96f45d177a98e9e35be35a315da975d0d1f
Date: Tue, 31 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774962893
