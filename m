Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8B918BC3D
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768272234; cv=none; b=Jgr4uRWXvvmcWdwCbuc4bK3U3sHOPLZpIY0UtUnzRV3mDUEexJ3J4VFca8OObNFlhXjdmSHdxyz7w5kADwTfv/ZJPm4Em8hwdJL7G0sGUW3kExhw1AoBG4/Qha1ubfiKDVazOc9AhxcQ8Ks/6SsIaGfSpStS044Y9oYTuYJ1gBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768272234; c=relaxed/simple;
	bh=pM1jUySC17+baCF6MWBOrx+fIJqzpN2tZ0bhFwcAfHs=;
	h=To:Subject:From:Message-Id:Date; b=GfLIbzsQNcsx5Wh1nBpSeuzpOIezop42jtKKnoiLNKNAZZM8cEZbS+PXVXUAkYGci04X+GSuYaYE3plQbPIhV1P+wdqhoItzpCORDw0hnCDc4y7K8vfEhHuWVff6CSuKh3/ZTraRpq/hI3NHce+Rb9EJvDXviWpv4zfjHq7s/lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1KqwY4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1KqwY4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6E1C116D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768272233;
	bh=pM1jUySC17+baCF6MWBOrx+fIJqzpN2tZ0bhFwcAfHs=;
	h=To:Subject:From:Date:From;
	b=O1KqwY4ZAF13R9UrxBOyyCKqoH4/6Ur2h95cS5yHOcZ3u3WDyg8NZIJlOnqMD7j+g
	 UMs3cOEpe2/LM7vmBvMsvcrb+MMhbip/H39b0UFOPrYSJuFBocBS7p9uUErG7OEMdB
	 B2y/Zu1ZYVHWIBr0QRtgqJ+vfVYZ+vRvtG/xROT5AAdfw5psbSn0Hj8DL7YGwd2ehb
	 Sblk38IB/V+pcZQWDPn8RoDGa2m7IpveQ4Ekx7sJeuiY9x6d/RVq/P4iP3ohWejmTH
	 T8kVshpE6BD1qQ0/xVvLpaA2FsCkqtICZb2SM6EopsGW5IGwQw5CldF/em9vCv3/03
	 WKK9zfedhcOWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90426CF45D4
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176827223358.16300.9379063123695356922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1ba49b70eff0858012bd1bec24ebb3dc17a99caf474ff13fd2d1bcb3662445f
Date: Tue, 13 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768272233
