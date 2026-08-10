Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCD82EEE6E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786398034; cv=none; b=Zh4v3c1izEQ7xLKbgA4LIK575MDErxh979cg+alVXqeXqIkoxVvF6TMHHLEdE1cba5UL+zgx4xFHx2ZUQK3K+S/f4ZpiedVUdPT9x0yACWJG8oQeYlEoJ3SHCHUr1TpkrzEwSxzDrN8ZpYRudCHT9gy6nIBDpcpF3NDYbLQMEjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786398034; c=relaxed/simple;
	bh=9RiXr7M3/TgbvdAL6qlKZm59Ymaryx6NuZUhUORN+eg=;
	h=To:Subject:From:Message-Id:Date; b=EdZ/ZZXMM8CEFv9vN80enKoU4Qv5Lm+noL9iUvLG3mhen51x/n9OTDCK3ourUfqLGHiC76BWkK4m9CBN8THEejHRSklVK0dCJj8bHqdAeXpREgFz2UTJuIx0d+YqMWyY3h8FxA5+FH3erIPILoEKzzqKacWkLqPqQl5DWkZZcE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjZ8tw0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjZ8tw0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB59C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786398033;
	bh=9RiXr7M3/TgbvdAL6qlKZm59Ymaryx6NuZUhUORN+eg=;
	h=To:Subject:From:Date:From;
	b=JjZ8tw0p9wRJvJ+3mN/czq2+c48jQi/5KR1bSpLM9nLAYiBleHOkGjI930ayQec1J
	 Q2V8SJRV/5BrEqzvaIfDlwq+L0+9JYGvGrElOPM8ed/U8sAUQBlF41FnUusrHPRJOG
	 5LwtB92zhIN7w7FgaQFHmfOcwqhL/hhJO5jp5n8cjuuaBWHPtgvxPG3ENjiP1hoiQ0
	 1jSc7nVyrE2k3Uqj2BHOi1vrsKQHnayzHSQHn3tgvpusBk10YvaLLXoUa+f5b5dxsx
	 UN3pqdas9JiMR0xG583jIbfX5mVIq6thHEd5JeC3tvklAlVg+pdG68OtXChSFidzbe
	 46W6EKHDTK1uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7692C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178639803367.6464.11432059831944420559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31b6d2327ea43a9d3359c23d748e32c86b7b19afdf0f21108a3d82759b3fb1b
Date: Mon, 10 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786398033
