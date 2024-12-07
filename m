Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3272F22C6DC
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733533554; cv=none; b=YGaXVdJt38G7eSkwUhURRlbI2R3nzCcK11luVded1Zlnjray4nXeHwxbjeAs8RHG4Ii4GOTVuT01XpSbPRg72fbHEMHS4b3k23Gn+lOo4w/+iNOHDhgxH9x8L8fXe1i9BFoWl/02/bm9KIEXov2moHzv3k1B0Ol8NrO0ScfGkU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733533554; c=relaxed/simple;
	bh=ujpGwMxK/ucFU8DbQ1T2b+bAnku4XhBF6kTQohN03FU=;
	h=To:Subject:From:Message-Id:Date; b=noMLD2fqW01zoeA6I1lVKexWZa1F993VIB2x1r7TjZUn0IRgRT+QHK3fXfE5w2Qfwmsv9sVuubqsC3+D4E8N3zfnE8aAuol0rwY/Kinv84V/6oOK4M7yHPtKa/RbC4OnJSsnvPO+mMoo0cnzDSD7jjhhHMCd03ootkgNooBa6JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNzqAWqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNzqAWqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B368CC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733533553;
	bh=ujpGwMxK/ucFU8DbQ1T2b+bAnku4XhBF6kTQohN03FU=;
	h=To:Subject:From:Date:From;
	b=PNzqAWqGSsRg8v0OBBG0pREeLA9pHWNDMEGFBC1es1UYIYC3fLLvnEMdMJF4NQitV
	 jO+6cG+N7hqav7tBxglD6lTmIRpk/pZ73B+L+6Vp5/wB540DxYp+QFRPe+FbEUQ2RX
	 Hyeg8mpWTlDAC7Jdy9PDF7ZSIV8Q2jCeEmRUokOmT64KNDCjpshSWxWdThl0o2aVyI
	 heWEfmydoLzh1KcPvDPBnLF243UqZNgku6oV/7gq5ZG3DnT8YNbt1q6kep3I3L1AJU
	 gTpl3v5lfRJXSKxhuzZKjXIYjpt0O7+NlhvBHt2U8GPjJWSddiSe8WLgw2bKv91oZe
	 a/fz1rFnQaRFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E59CE77173
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173353355361.30555.1404329374212723987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98f1708187d3e56ab3fdb42d26467bb305fca4e2a97ea94ccbd3538515aedfe
Date: Sat, 07 Dec 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733533553
