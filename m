Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE72258A
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745186994; cv=none; b=WPoF3F7o4co8nDyJe9Q0Sg+maV4seJuGR7EJOu4DGYnU0Z/jvGMWoByk2rHI9sAo/pq0bNS45wzV1I5PsgTQ5gPVVaCa1uT0O7DeMkT5tO914Uwys22HElazYatmM4X8e9mb1/+gLGbpbOIKredEJ91F/7a9sADOHELEUOQdT4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745186994; c=relaxed/simple;
	bh=OFOiQFVNJNpFwa+GCvcLjuFweYtYq/uFDftftgOQ+SM=;
	h=To:Subject:From:Message-Id:Date; b=mf9BI8vI1e2RKQ0G8P2E3LZOJznSQULqAupk3rKRgPStYqUEhgJe5gxbxKsjUPGSQNloAdpKVK1ICCbfyXAOjlX+v/DCRd125abKwUjLb0ygZvkzIB9DpFczGNHFW+zWoknHwS+622rVUk/k3jvzvY6DhhdO1AObltxIkJWGaZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GiIh7PSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiIh7PSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8EDC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745186993;
	bh=OFOiQFVNJNpFwa+GCvcLjuFweYtYq/uFDftftgOQ+SM=;
	h=To:Subject:From:Date:From;
	b=GiIh7PSSMvxAICJTEEXRSKUNoSAUE6vTPhH3Pr3ReHc/fmPSosWemOZxstMWCNKHl
	 +1RvYyDch/wFZ+CqV18l/TvXi+vtCt5ffi6TS8sA5emH5aK6g4xALm7ZRqtk6BY1YS
	 gg8PzMoRVo4cs4e8qR6BDOKy+pghhpgV8qEBkVGowI5v3kH1VG5PnnX4PuzYVYIjtc
	 BhcrITGf+gqxviIOMKVjzrGVuvAmoOra4WScoFY+yW2DZJrcS7wwv2Wpe74yveiBW6
	 4zB0evYuwVl2PQ50Zf2QQy+/BMXhiTjVB+ArWmXhucqYn83NPIyUcEUs/4zPFqNuFr
	 7lEvndG/goaSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEA7C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174518699358.32056.7470992163527935352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bdc90a7da63a6d7f933199fc3898bd108b5988a24ef529311b3fa8d058d87a4
Date: Sun, 20 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745186993
