Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3642C42048
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779682954; cv=none; b=iR7od++1+hNCpMuF1QxFYMk3gRH7IbRX3pol2tpM/0QNZleETzyoWjb+VGxPnQpt0J7uvYpVFYlilC5tWUPj99mQsA41WyGyXZTSuwaDhclnF8TMWHu3+/mTg5tJw25YdsUBKxtROuQfszc4JQc9MSc6UJ8vo01vFoCSQ1uYCQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779682954; c=relaxed/simple;
	bh=vuZaKuPHcX803ZP4dCYPonsXrr6HaCDXPInE//tKj14=;
	h=To:Subject:From:Message-Id:Date; b=C82zRHVfCvl8CaVY+yIFPsc93mIfPct3Yv4aENKUG4zy1Zk0xmQjVieytZyezLDWxX8dK5qVSO0qzsw1WyChT1GpLlfRvzLfFRLHK9Btghuc1iOR3PMsiYN+bPpwVder6phqWNYUz4NaLzK2xm2KoKb4hTBPq5PrhDw2X9/674I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUQCVJm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUQCVJm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD86BC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779682953;
	bh=vuZaKuPHcX803ZP4dCYPonsXrr6HaCDXPInE//tKj14=;
	h=To:Subject:From:Date:From;
	b=GUQCVJm+meoufwwxtKhALMg/aYqZkrmvdA2YBueeRmPp1FYK3ypl48EPrbHQ9hPCX
	 aDL6mAfp9K7sm5CYeznSnNsswll4aLHhtXeZvbQYJTvV+f4hHCFtJ8G0u9Ohk5BeFU
	 qSsPE06uMyEQoPbPWPwqy6cH6dn7Cy1SpbZnDVv6XV5A36Z3QU/vyEhUcCHGxSR9xX
	 /mEIN2v/mh4EVMqweBDf2XjlHpFS0SFzuBLGjreOIYllOCAq+f3Lri8tFmODHswEj1
	 ro0bANoEDXbEtdpt5iHK7g6BrrvX7QWZ9Bk0tKbqHeutIoAp4MSC8K3UQ+VXtKNXd9
	 4i8Kfbu1cckOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04E8CD5BBF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177968295371.32469.8177878877469297505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 722257b02911eabc551bee5349cf0ee4973ea3997832e0c4879a0920e2fd303f
Date: Mon, 25 May 2026 04:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779682953
