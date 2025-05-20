Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC14B67A
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747702194; cv=none; b=drO/sSnreBouLQq4fZI+iUAAuJcmXHPUp4SAZrAJPqngs6Def+zkZ99JbnXSfAQokK7njrGOLl+LCdPEhsV5+BYSKiAOR1xlUrB1aXxlcZtyX/1FN/ojxclPrUoJEIZlSRCpAQ/BEWAYV8I/GFG18Q0Q/8EeHbQH94GLeeYjqcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747702194; c=relaxed/simple;
	bh=YJ3AruQkcRz8ttdR7hfCUgsPctQvzKmGKT5ssnGjuJs=;
	h=To:Subject:From:Message-Id:Date; b=mIwI1Sg6+HVHbx4/BNHHvqm43+FmcTLhvFhd3Zu9VLy3tw2MAU+SaVJdqGrMf8o2o1r56H4Q2mpS3Rpn85l1RyA5jTF0R8x/jFd09DHw/+1kH+F7SDci62gm8DnTLjsUZoEs7mx7aRPCA/5ygehnSfY1Fanb46zysWZt6DqZwYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzqQiSwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzqQiSwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1069C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747702193;
	bh=YJ3AruQkcRz8ttdR7hfCUgsPctQvzKmGKT5ssnGjuJs=;
	h=To:Subject:From:Date:From;
	b=JzqQiSwC9aZeLWWGUJQi+3GIySJrS85jW/0ayC1w6p5bTkc0stU211ck/zWWbl3qE
	 TqbaY/AeWTCRI/1GQeggPp2ofQSnsWK+zmfjLyPOZALvv/DcXhKG9ZhTTuBSKnsqHr
	 f090/u8E09FMtQiy7vjBOxa9oLhG4+aUlifMGTx7wyKGAzcSJvQ+1s6QS+poUlwuB4
	 OayTffNzkZHAN0PsoaXS/dbQOn/WQWPE5P2W+fUSO96L4vd5j1iNHr3w70cmBDYoSC
	 uCoQ/cCcavTB5jJWl6g9YafLhow9c9K8f1ZY41maQaDQvka1M8DFzJ2yjdDWoKrs9y
	 TantcU32nosAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E947C2D0CD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770219357.19283.2948603902191518442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df3a26b28f4eab7b5f8ea23731b0a95a45365f3bc887e22b28eb0b521def89e3
Date: Tue, 20 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747702193
