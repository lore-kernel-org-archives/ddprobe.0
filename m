Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256262D8393
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772423694; cv=none; b=hlirzO4tlT7U2QzoCvTG1CRMo8ju7UPe2Y8KaHqURhnqhg5UTLEOhS0WsE3UgRLFX67G69C8m8IrXPvtjU+1f7kGgqiuCzQswmHRyI4Onbl5K+PYRow/YucDFg+QnmRXOYRviHjKNpt1iqNv6I7wp7RR+/i5zYcnhI/2WHK0M8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772423694; c=relaxed/simple;
	bh=8MyRKC9JK3dzcF/Q9jrhm/yvmVyjVPCnP3XsyYO3JF0=;
	h=To:Subject:From:Message-Id:Date; b=OKNtuQUruXHbgYc3W4SmWyFW5A0em5wblQyKsnz5JePSAIPt7BK944tUAvFSHAYST/lFPzM5VvV5MGo120MHJmBqmH3ZkHiGLxlE5K5S8LJ5J0TLzEqKfO6dGPUvapP23hHlyrOWH4WHxXOyyH7tMdd/WWxgkFeMgMC2w7zm/HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUUlDhTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUUlDhTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6E6C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772423693;
	bh=8MyRKC9JK3dzcF/Q9jrhm/yvmVyjVPCnP3XsyYO3JF0=;
	h=To:Subject:From:Date:From;
	b=VUUlDhTOA0p1BbIDkuw63Hy1rSznu/PigSWAfPb4QiaOLe4znpiVlmMV1dOMtyCb7
	 wmHv/zaahZVU6Qhq3u6CPzxAV3NiEefKL3VhAl40oEcjnVuP38wQoum2rLXGQY5j1W
	 bao5yfpGodvANaTs/hug3lQds+eEjfZouI3dysCqtgXIMG526sjb/KAqHeWNS4J5np
	 Anuob73d9bJK9VuuYIuL9HbBd5yPVgcgTOwRvmkcDA0fDscd5gIjPYHBPT9UeV3hYs
	 M6sZA4aRjDI2fFOQeQF60davTEXVOvul2OVSfR2853DPA6exRpNN9ETh+QHkm1ww8D
	 8FOPveatnjMkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96400D58E4B
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242369360.12463.13433543127970656407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeaf8ad7971a578ded1623ee7e44db5691b8c8819557c481986e5276b955a0a8
Date: Mon, 02 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772423693
