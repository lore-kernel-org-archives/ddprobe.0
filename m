Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1676C350293
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768374234; cv=none; b=K0VxVUTGTf0fQLelBXWPHiGiFrAwvtkdhvpX+1VGM8R2kr8nfeznMDxzQ/y/uby1GshXvlGixwNpgypbd62PQEnfK60wAhQGsIGPGpsYhFe6BVbebtiPa/62zNPH0DLsKi3yMrGlPan4YJ0yLrEd4DQMbafMT9kF7cy55/9xBmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768374234; c=relaxed/simple;
	bh=ETgnVD8CCz/IeHzjN0VpWvFLmxkwIaTdM9MDz0r6RPY=;
	h=To:Subject:From:Message-Id:Date; b=LlIxOd7Ps3g0tqxRZitvfYFX9V78LZ48V7LGpkGzzoU/ygdVKv8XxnRNy3jbLu2wMyHmo40IEdGSKQqreoAyGdeK/hhWHwK62bFROJ/SNyJwpPx8H/Eflk5zPG6IhCtx24cQoveRtoEvLHpmJOle8ewQHg1Ih7oLOXtCb9ONcrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLgtsea7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLgtsea7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A504FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768374233;
	bh=ETgnVD8CCz/IeHzjN0VpWvFLmxkwIaTdM9MDz0r6RPY=;
	h=To:Subject:From:Date:From;
	b=YLgtsea7QHQM38YQdHn4TEEZLOoAGUFojIjFrGFIH3TCv7tTDh1YUSCV957dENiCr
	 xbh8n6t4R5IKs2wQFb0AHfnxfsuGWVZQfDycDDOgC+fjYnX9/D0t5M05BtzJFZwsX/
	 4xR6BQzRZxPZ5Xifr9RnEFxFipCl8/A/A65dLsPnQPvUDREBUj0Bf3kYTfS1J+YU10
	 tq/dc2HxC5MyRxHthGn+fwP2YJfZ6KN1aZ65gIn3iTD0h1k7DIfQC/r2yzSZeb4v2q
	 PitLmXDurBs9Y3gmgHW8SbjfSMQUybmOkkknVeJm28OtcznrtoGHl4xx1rPFzYzxFz
	 1oWopSqDRlUwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A84D31A13
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837423357.19603.5123998967039463373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42172296690631a3bbb31ef1765a3d9910f81662651877eeaef77548b476598
Date: Wed, 14 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768374233
