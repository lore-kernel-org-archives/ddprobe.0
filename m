Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E03B78276
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 17:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714756343; cv=none; b=KzAIkAsCZAy0pG+Xtcj2AsWC2YPGNPVUWCP7H5EHASTRAyWVHy4qvo2XebEIvv2tyzmAtk47WWAqqGwxFqrtCrm6MGSTE94k5TFPUsPtyktMav7uNbLwcL2LQU5/biMqtyZOylSxxrmgaWRrodyBlbvY0RfgaHAfIDWA09zbgwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714756343; c=relaxed/simple;
	bh=FpoyPqDzeeB/3skpZiJz27jNG9mLK8GJ5+lEBZL+MuE=;
	h=To:Subject:From:Message-Id:Date; b=O+nf5NQlArKphNf7s/U0WzXGVY22u6A3x74SKg8s+XTQ0Y8SBYDJdve7iC0sj5ZWVTgCxyVBYz7Cupx7I5qFyzUJpiVnmPLH4spsgWHTYVCbuEgt84lDMWVLPUzyXuYIVGqKYzBoz8ZVsr0EFKSlX62QvaW3qVikeyqe1RcTlw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDGW7J7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDGW7J7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56F5C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714756342;
	bh=FpoyPqDzeeB/3skpZiJz27jNG9mLK8GJ5+lEBZL+MuE=;
	h=To:Subject:From:Date:From;
	b=KDGW7J7iiiO0Wyaxes7TAl6bE1+x0T6IgtcHWigZS02m4+Eh4QTd66SOX05WYKv+Y
	 SINr1eDiFUjlSw4eTXCfqY8hl8ndUAq9E4nz9Y1a+3yh/Ns2QmMUXxGBsFYfmEMGyp
	 wyvEcb0b30sPU6q8VERH2FUEXeqEXmj5eYX+ahZZefxAcu3KO0WhTUy5rhrJqgQGcT
	 aAiQNFy8nh281WkN69l5zVOi/Q74FdI4VEOXTOISLS2t1tHb+EntMbE0JSFTeyc9tB
	 kyEhB2AywoL/lR3wBh31ZzlIwNVVGPta88q38j1LlbeqVI1vmumtiSBX+nNcNzg5aP
	 EStsSkQbVNA8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E4CC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171475634278.32195.12121173530983658683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2cc22f7e04343f31352b2b47151d5c5c93bcf106b418d078224c52f4d0acf7d
Date: Fri, 03 May 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714756342
