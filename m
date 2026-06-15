Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB771EBFE0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781492794; cv=none; b=AHOI/TUgSxPX8+vwzB2xSDnq8S+L5btDfOom3E21zvSuH1M6pnZbwT+my5C+4mNLqScF6rsYZcf1psbOgCV/Lmv4SahuRUNtGcWK7BEuKnIqseudN/Q8zooZ6EPSrnduton1ImK9nTB8+UIg/gwx22oVF9nkAtE/XZA96glMCi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781492794; c=relaxed/simple;
	bh=zk6AqIY9TSOjVeOz5sYqhZqP80GnOnDieSTURrMr82w=;
	h=To:Subject:From:Message-Id:Date; b=KUMZ+XfpW3c30A+syi/WwbgUZdTzThd8crriZwyDG7MWbj4Y4P2Q2tW8ZqvCODNRQMW+1D85sxdyGzmWRX+FWjaNDDDGePE+NkiutELAP+jDxp+ArvVM9p+AlLpmH4CNS2CQTv9Y+E9wVGQkFaBpA0xTb9xcVRWZ2fpz1/ooHDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NodElsvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NodElsvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FEDC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781492793;
	bh=zk6AqIY9TSOjVeOz5sYqhZqP80GnOnDieSTURrMr82w=;
	h=To:Subject:From:Date:From;
	b=NodElsvWHVlgEiopgnciR/tLAZ/4EYfLmfLJm6qJg06Svqt4I9s+7Xajz5wLH+5Nw
	 LWoS7LSwl/NGTWDmve9frp3Z9yd9jsMnPzbAxh2crdrfjzNaJy3mKwuQpu07qKBzFe
	 bYE5IdpEgWXPOyS4BvOrRloXCH/2HnHvzJfg4qDKp2jZJzQNlP1AwZQmUfw6OEAvzk
	 PBdiwuwFiQGpAPJ/oouO6Ol/77VxB02KAcvU7SEUbOgIXJuakYFfhDcVqhGYc2cyyc
	 pEkUMEarlfMRnIV6V//mxzVstaDYqtxQaFtMKkS1Ur6HnRTgyraycI43tLD6bVT/GG
	 Hn5LrszcnjmqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE55BCD8CA8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149279369.14696.8709813222279619995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea263eed8ba26012192e3b0e116d7c594c2af6db5ef906dc66eeb070d05b345
Date: Mon, 15 Jun 2026 03:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781492793
