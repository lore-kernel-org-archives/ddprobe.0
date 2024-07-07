Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E892ED8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720314383; cv=none; b=PFHtGQTbTBr9fnbqnOKVCxo2DaCRlYQmCc3+RzMS6arAVPvfnaim4fMniF0Xid1rH6BvL20v79dG3idzYV34doMza7ZhZFxZjtP4Gi0UOKfs4HtfY5YTuhlFbUuPCYC9LALQutJWTm5VvTTX1HuUqB9jF2790gLePJx+hA1vsDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720314383; c=relaxed/simple;
	bh=3BTDW6VD4FBkk8/7JQClwXAhahB0pGNA0RZvzQa+G60=;
	h=To:Subject:From:Message-Id:Date; b=f+CzpJCnVB2gnEPqoaUETMJbhWe0xTFFQYyd2sfVmykpypESKjoNXySsTu1C4Oe6Eq8rskVm7wRvqhskpXE/7kVrjWbG+OaNaCPcphWJbisUkS54VACWz+COmW9cLr8YTRFBE3lCHd4dnGW6AuGcPl2KSYTVYlBndo8XWIEHA2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwlpJsZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwlpJsZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90FEC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720314382;
	bh=3BTDW6VD4FBkk8/7JQClwXAhahB0pGNA0RZvzQa+G60=;
	h=To:Subject:From:Date:From;
	b=rwlpJsZ9aw9EWNH7Ywp39wvZ1Xz2AFIOrio8+w5PNQIwDecmga4or8VlWbnLJjsP9
	 bdqqJ9u8+0xeB8ZWVIbRBYjuOWUK4kHWpOzxlZ3gcGbNjwh7+j6Vb6Wpi6GYHtSRLF
	 y/THsqJNvYH8UyUW7CCzXVdsY/UKzY9ceyf6ufonbAB2iPiuTbVrO2Xxvko9AhoLkG
	 bRsMUBvstNrkAXh1yuIhmQ6AJWptK339CoScM5nMNdVaXc0Axm0kyLFu1Qpyrnua2k
	 82/IHoCNET3/C4oA4i9ArlrKqcpxhe35ZQ7aAYrt/06k12Dv8OgNzIJI0+kiS2jz+K
	 W6xcfMeIjxPsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C132BC2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 01:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031438276.11451.9294890128982594685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331fc4b83cd783704bdb09e8521f40f9584818761edfcf44fda9a4788c034443
Date: Sun, 07 Jul 2024 01:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720314382
