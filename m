Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1E6154425
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763279454; cv=none; b=CMUyrUubh2rEEqTXrJwFenM6YTAnpjdTzKLLOk1gnLo2FEmsDgiZOoaj9xP8M/ST3WLgqzJ6cd08fypvj2vMzJrqHhCPhHiFBb0NkVLmUCwZyMNIdZUtMuiejXyK+oWPfhDVBCzfRK+bC580dZuV2t/nGoIC8pq3YGzodnY/CZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763279454; c=relaxed/simple;
	bh=6P8nX9nlCVMCnf+TaNEjR4r8q4DcW+PfqvueuJ0/WuU=;
	h=To:Subject:From:Message-Id:Date; b=KCoMm4019F/SB2TaxXgxbJkJRAj9vr/XkWHS55ZbURMuOalm5LZGD2j0P1OiJPmd+cTR3/11HwXwm1PVLTykxj6rv4g5VO+ev8B02IDLQuf1FR6BYdn1oRK8gQzqWweIvcG8bjtWS09wPExVSEEPG7Qc2zptwbod8E/B1CYtS/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQ7aeblE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQ7aeblE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72BCC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763279453;
	bh=6P8nX9nlCVMCnf+TaNEjR4r8q4DcW+PfqvueuJ0/WuU=;
	h=To:Subject:From:Date:From;
	b=oQ7aeblEfTYMLdomlwUYWM3s7OMoSOnKueCYgm+rRFw/bZflQwc4ypnoOe7xj+sLx
	 Y5N+/mMNk8HBpdoft0/oJSwyJ/8XpeeybbJhMiw3JPf22K0DvWuUBTQZIpUaGtxESe
	 Wc3UZMEna2ZuKB1R1hfMu+ujcD3FyT5jUQM4kdzY7QhEommp93Wipo/ONSDPzYTYaV
	 5+oAyaX9RsKVZULfTcD8Eo3YLVpO6zGahjJC75xGnfCN12lVu6jgRiJgnUTfLeJMMt
	 WEr2y0j+9P96gO9do5jp/DAxrNcsMP8Rw84S02Slr4FqTLepqZTAki17T2or97wZcj
	 8DfVRXwZhglRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADF3CEBF8A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176327945359.28989.12400055719869364246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c62273c4bea8e48792f71e4918846f9b172df560a34d32c4452addf423a2f03
Date: Sun, 16 Nov 2025 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763279453
