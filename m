Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56197EEA9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737213954; cv=none; b=svRdrIVBtW2KIUp01vAQ3Z64Yxdy51MKdmDhD+DOSZZD38+bF6PHV/VO3GzYR5doKukCVLdNGfpjbrIgjaEWrruHhhvlPya+lLTmdkstsRq6TD47DmF/MOSGCTiXtfkmvkwTip6h5/Xv+L7k/QDyd8DSH30ranfAOncKUHFaqxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737213954; c=relaxed/simple;
	bh=viCyqeSH2jWmQqyVwNy/m3zmE8YhrMb8fIWwasyDfB4=;
	h=To:Subject:From:Message-Id:Date; b=gwx+XgzvunaohcISJT+dBfJ+EiT4O5HlF0MIUnYFF7QgCvqJdJNbPZGC1zSUf+yntuwPcD9uBB/q1X+QAYsaJ9Rc8saidicZuHyGEki4D+o4F+TXip59qvYZotuxwt4Z0P7fQ92m0sxX/Bhi3icVG9NdSWe+bL9aGHncQ4hJy7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgth9CDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgth9CDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA500C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737213953;
	bh=viCyqeSH2jWmQqyVwNy/m3zmE8YhrMb8fIWwasyDfB4=;
	h=To:Subject:From:Date:From;
	b=pgth9CDiivPchHV8sRFUkF9IuGzTca5TUDAvRyc+PKMy9i8XvtxOS0/gBBxvpr7hY
	 oVlTdzIkMQIRsuTmXcTGANqGkTqzU61YPBvCwBA16lp75G1UyECBXowedF0LVZ1vok
	 ++IU37Y0F+kMGgcuokNsJm7OmsXG+VUx4XZOX4e7k68xqCknJ7agZchdKaf8ojpkMI
	 yxU5QOOAzQvgDZqPqv2s8JejFJj4RHuDnfYjhOm4pPRvMRLxiJHw50Cxhp7pzif0c1
	 V6VxUEKopyrQuZETvrDooxgvHj4IS6rt9M1v4KTG/PsT9rg66xohdrhdlp0M3aohGr
	 r0mOFCWFUm55A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99395C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173721395359.19674.2967802010746685891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed86106546c2f10c7d972f2d0f822bc8652db57fbacb4f84d0049d9c63e53620
Date: Sat, 18 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737213953
