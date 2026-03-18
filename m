Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083152EAD1B
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773854694; cv=none; b=gK/x/oXmDIy/Ei4KxOgUvQVhWUv4t0JtZ5uA6N524wdTFpXbuIpuJ91Ak0ArYt9HSL+L+zcRo+0IMAq8ghsrGUX3HtP+i5/Bw05lK+p5Zy6VUOffij4fK0rtPXl2oznBpJE5r5w3xrIcjOtMt7z7aSHDmiQOYwj5u9FQj1OO+Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773854694; c=relaxed/simple;
	bh=4aFzA8LXF1vK9Z3V9qOAX2T6Fsq1vEP0fuNS4i6/23c=;
	h=To:Subject:From:Message-Id:Date; b=ASHjNSSZCUSK5458Y4fFByNVs14DNXRfNbTGS4RKxZqyzezThT7itAeFK6wBHnXFvFwWsO6aP8HawrFO5xTMtpImOUIhseIBwtvOFY7LDZLUAEFW1ZxK7eSrHQNMYxozhOJP4GmEMu7trZj8JmS8NRTEn9pk2eXhFGgVgEdRmCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G66jQoe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G66jQoe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98843C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773854693;
	bh=4aFzA8LXF1vK9Z3V9qOAX2T6Fsq1vEP0fuNS4i6/23c=;
	h=To:Subject:From:Date:From;
	b=G66jQoe3/TZsVmk2HGzuK0YgkQt/d33cp2D/O93GkzdwwFSjHoxB//AuR0R83OOO1
	 lNsmsvjBb0HJUIwRCClfPnDkcztcvQdp2tJpFkrrFdH8CNnZBiPA329DLbSLLvlKYt
	 hcL81TAK8bOKbVvfTq2xphrnAGRKwuc3lRNonrynGCM8QEHmcjo9SRjdd6WtobmEPp
	 Al03g2ie51OTwIhs1/WAqrqHK/NdCuzNeZjRu4XQub/TE7yLPB77sHN/kbo09bTpc5
	 fC46yDk+ikTkk8zYsd5hM56EHot+qdJHw7W9Sg5dpLlUpf6BM1MJsuM0KlcQgcowbv
	 rkGDcF7HX/IGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9064D10775F8
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177385469358.18997.8685249991278948270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42b77553c4c88e7d1ddea135a0a2c60978415b8d26365aaf64b3181ae7502ac
Date: Wed, 18 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773854693
