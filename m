Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9B53090C1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779559954; cv=none; b=UR/5uPNmk6tobZM0m0tnggsjbTa3C6S9KTwGfHaXKh4vf3JGRvzjO4AC64fkC40mTBcTE3eoMQkAXPSoNahYwZP+kD/HTHvDuMEVa3u6JUmI4mp5dMAzYYeirsCID6DJEmC5wDwTU47kjsPhV9Q/uxnIa6Np2NksiHt75GsXD4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779559954; c=relaxed/simple;
	bh=j5uSL1zZRfX0YXn3rLtPVBsLP/GiiN4XA4zH4MI3Ipg=;
	h=To:Subject:From:Message-Id:Date; b=ihnwfm3NH1a/1MC6sJNpqML8uMEQBKLXjZylba7GTxldI5qEOx2mv8Onool/EU+KebkNPiFXcaS77hOaeTzNRiVVZ5tG0ASlLBKRnekSFaCBYSEZuQZcTvIBhM5gZa7Nl8/YfffxI8TBBgjO6Aq6F3QiQNeTMvpjKQOoTiZC9Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATVcmi7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATVcmi7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B3DC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779559953;
	bh=j5uSL1zZRfX0YXn3rLtPVBsLP/GiiN4XA4zH4MI3Ipg=;
	h=To:Subject:From:Date:From;
	b=ATVcmi7xK/Z2Srkh0dy/ViDwOZDz6mrTGmoBTjreQR26rYXV3n7/8FTNjjPomHpyL
	 Ot+E/cuf5765Jho4Wpvq0xyvotqoPBPCXjwoiJxxvhoJqUUMQbBjDgnaJunD9JNxsU
	 jDMbyOq92njIkmEs+qFb7F50daPyJdMXjjNXAxG0BPs4UPSmOYq8r5rBRhkZpNJkio
	 854TEXxyprmPW9vi9XzjwGSYkrwaPR4jiLJxSn8RZYNQ8R3I1WHkbBHjElU/LL39a7
	 ClJQKH0MMe985S6ouf09+eBmc5QIc5i31NgSFf1AiyScm792JtQdyxBCSBcMQhLq3F
	 qQjwCrOg5Ce3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9DACD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955995368.27752.14775529206971536273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23bdf67cc8613596165b8fa684fc23b63e9408cc6e20092ccf1565d96d8572f
Date: Sat, 23 May 2026 18:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779559953
