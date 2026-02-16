Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3774C8F48
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771272294; cv=none; b=ttg/miKbgLRs8W5mjJbfyXtXTUgNTaJr3C6Py3ctN2HF4YQ4GiQIZc2X4nAcyKm+V3KNSpH/WCspzuUdi990ONIDGz6R78vx2jqS7Ci0syJ+51jnwV6ejtRBMik2cTFaTj3er49ZK9cJ5YTbmjtpj8Q3WCiRNf7Mj/YKur/UR2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771272294; c=relaxed/simple;
	bh=Z1Rn2T5U5KakxBLZyp3UaC4F5UnaxNgQ5MRbLfhYTVQ=;
	h=To:Subject:From:Message-Id:Date; b=p9dF+eUQifuUTn90v83xvfFgnSDVMRhKF9eWb+oV/Gm+bPpqhY8vqOGMnxMvubZNXFiYHcisPLXNo37fjD3m3TyqiFix+n9xAqNHzjp6pGEQNArrE+kTZ+V0u057Y6zAHNJTGW3r0e+R51hEsA1RtkIHSiZ+D0+fW6n/GJGCaF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rnxk/2Rc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rnxk/2Rc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EB3C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771272293;
	bh=Z1Rn2T5U5KakxBLZyp3UaC4F5UnaxNgQ5MRbLfhYTVQ=;
	h=To:Subject:From:Date:From;
	b=Rnxk/2RcQbs1uzAj9USUrPkCm7FnkrOhZt1n4LHA9tAdOHwLxKlBECiK6SwT6U0Gl
	 rec8cvCO7qs2+Kkf9BRDGrdccVuEuFpV0jVH9ovOA/Za+5ItZ/L1Gb4wfgk0MFDe16
	 yndGsRcy4vZEfzCTA4R36WoHZWhZp+FKs5NnLYFb8lLnj9+LJUk8IQNDgCIGQjT+MV
	 YEAgDUKu7QXD9AXL3+Z4BmJVJE+V5tyVtTVDD4xYrzY9UTj6y7h7EAp2hAU21/Su+r
	 Yan+cC2McEDWlx4joP5ShG77VMHEnd3DERdVz9h16AXB1uSj3JYmrR0FTKPq/4yN8+
	 Y8td7yyjb1kVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAC6E8382F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177127229361.22456.8349039008795771347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e16c3d1789b3f659bb63af3d9747066e5d8abee97949e53ea2700cf2e589431
Date: Mon, 16 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771272293
