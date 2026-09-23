Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5362A4A2A6F
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790170834; cv=none; b=PH+K2DWFr/KLq7zBFNWLarMWaBlGsBpWAYfuf0yzgxoN3Gz1gYc28+7muFKLXIP0L+bkPCYFPN8AQ87BHQxlIqmP8XT3OATY/oPDcU67jvtY0/xN80GOH7NpbFTclN42G+DFM7yUOPfSPN3TlYPlzJnaP0WgQKAMxl9gayLJSNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790170834; c=relaxed/simple;
	bh=khfFx/iBl7RD/DNhK6GYlBV16G2hw7m25P920NeQGoU=;
	h=To:Subject:From:Message-Id:Date; b=ei0w8mSa4BlesHBgBjt3k/HT8Xpc7ichZhNkcZHAJzpOJGEefjWKBI6ML2uYP2u8X9bzl7SfzKeNpPHsj7jnlm4Zc8oSmfNJ6CIlQHrBQfcrt1A1m8I0tc+XFUisoj1Y72HGKDVMzz104/k7ngpHrxX8Lr0lJfm6satblKWZ+f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oX5qNhnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oX5qNhnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3778C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790170833;
	bh=khfFx/iBl7RD/DNhK6GYlBV16G2hw7m25P920NeQGoU=;
	h=To:Subject:From:Date:From;
	b=oX5qNhnXG13VFUrVX8a2mt4SKOWGmzdTBOZ+oov7No2AKWxRircIusdXAN8NyqSoi
	 +3yc6nFZuY7AJNp/BQJRBtQZhio0B3Bw140doudZKc7BA+LIuKMiLc5iew80f8ewdz
	 Nz6jseO6bwYq4X/b0QamsAKG3OgXyNdJ6RxzUoJiIoQp0x8lLRRMrMDk65ET0asqbC
	 +SsDKtteklasGFytdXZoZUfSAehszdsNZoxn2ZT6/d5s1ainNS9lgwNTHlkAdu37ir
	 0lTAsIt60Fzlb/SLlFqo9D+N3AP13QdhSLAo0Ogy4oNt1WO5vE9h+s+To9Flifme3u
	 soY7wd6pBXDYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB14C9830C
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017083370.19471.15057297443358249694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42508c2782539a35a952fa92eee3044e5c731f7dfa79f84a412d96a151e258a4
Date: Wed, 23 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790170833
