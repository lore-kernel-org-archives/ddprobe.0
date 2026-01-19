Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B283500945
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768820634; cv=none; b=fFcz+Tcu6Wu8MqVbCz+FIFVJtoBWUel13WT5WaJfanDr2q/vkgpWvDDXm5SFFG3KRy1S9a30ejBlDjwFJlgnFm+Lrsg+wx0o7QM/guz/V4EFP6jyVivEsQ1wcNCHvapgAq3HQ5YUMJa7UHIYAJqi0zr5AaUaHkeoc0tQ3rxxyyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768820634; c=relaxed/simple;
	bh=FKwR7UULQTdDeOjZshuoKTU/ggl1n/t+xX8+c64QShE=;
	h=To:Subject:From:Message-Id:Date; b=rVAqTpdpBffrJmdp8G5TmMyV2LSRp43UdOD4GbDJTTzL0AZ0QmO/y9yptr+6808ktUlDjbyG9R0T+9oIOwne2biZkgsIg0p9+HS9RRPzLi9VzAzVw8QnEnz+yD4KNwYNVDmfqNMDvOUB56FvuswG/SgVQ0C/PxQieCanIJzFyRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNpW7b4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNpW7b4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E278C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768820633;
	bh=FKwR7UULQTdDeOjZshuoKTU/ggl1n/t+xX8+c64QShE=;
	h=To:Subject:From:Date:From;
	b=pNpW7b4KaTzB9UZxnwQPg9hqyMGYy2EbSzEyF0q8+Yxj1tRdkhvRUu+GiPG59cz/Z
	 d9ptqZGsMGQVe5vLOeq6nGWWoCKerjpI8DhqtsDyxv39tW4vVadEoygANJefef2HzY
	 jEgPHu62P4wlMWJcMKyTrtQQOoL1wojvh/mMMObn9h490MuaGvVSKwV8YdtzG5v/49
	 80WMQS3w4aueW8GK659KlW41mF3gs9tYkPUV8Yj1/nvspgLQixbq6kwGRy2QV0TB8y
	 MqA2n2ez9bY+YDjtxDbAGDJ2RAkhrnIPloUpHYeBPUjYSmuh8bgbro0B2tPve/aola
	 CahXmhM/e9Mug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900AECCF2DF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882063358.2637.16154665251776240742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ed64867696f1c2e4c45bbb21fa44c673b5d93194789c6e3497d6f777bc49b2
Date: Mon, 19 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768820633
