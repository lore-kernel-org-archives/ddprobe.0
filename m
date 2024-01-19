Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2FD04EB23
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705664297; cv=none; b=joVI7jrePtzmy71sZbYb6ZtfmGqQf196s0xYEP98ot1oz5/0tP4gj/V53UeixtxmCs6G/+wG6FVw51/n2fleZfCCubj2DERPzfekbxrhtRtA2K0uQ6URtXLV7/J2hK3QBDKhB8GOc8dKEQFpPNCC3tUIN1eTQmb9De+Ww+TXbOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705664297; c=relaxed/simple;
	bh=BVzQi8f1tnZ0jNVFR0Llif2B2r7LmvCuwoufzjWbSSo=;
	h=To:Subject:From:Message-Id:Date; b=teGB+GSCLC9YQLGZy4LkIqimNAD6mLraS0tTAxUfjJRZi4wCuKBMGBbjYb1hx2He9vX+jkhphWpkDA8bnv2D0ei0RWA/RulSImLa5w6EOySCEkzsmLfqk6poEiRRwGdEVM4EI+8jwVS5dBUhgTWZSVcgOXqW0pVn+FIFlT1uUNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXegjXEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXegjXEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76EAFC43399
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705664296;
	bh=BVzQi8f1tnZ0jNVFR0Llif2B2r7LmvCuwoufzjWbSSo=;
	h=To:Subject:From:Date:From;
	b=KXegjXElSD2SOC78BvfYvliprjqb/tF1yLmch8bAu7YT7TxJdW+40Rz78megNlLTQ
	 Bp4RBOrOCN8iwcZoONvtsv6g1U5Qzi2VsKfuQgw+g7df0X6W6YmdxC1wwOCCL9nZss
	 bj33sNPFUMFoR+2Et0gERnQ+DlCLxiwJsgn4H/T7BZCTMw9CjLR84/AgDvjonbggvx
	 tZiWfm/MnyI3bfAgQHlUjQ7LzaliUUnXCh4oHlhBHXIsbiHFEOzglNoR3eMlwhq3n7
	 V9fjfIbrwd2s0oTIjcOMa/CuUNQirj4ro6ITTE0+RUAIsaU5mdtL+CyqqyMyKwJink
	 UChz1Z0+8segg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E1AEC47DAF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170566429637.27433.17955477747038222586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 249765ad7f0cc931110d5300693a22fb60280764c33ea96d90a68d71bc18753a
Date: Fri, 19 Jan 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705664296
