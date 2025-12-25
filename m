Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D8828C037
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766636034; cv=none; b=lIIsPnl9PQE8LVLBX8jwjNWQ64+xizb12Zdeb8KVeuXDdXiqtbJqyBxkdvGbdf6zoYbkgeTsFlY/1nj/vhquJFcc9KxBY5hAUBeW4jXlicTkEWNbcX4ag7te++7vjpyo83FgN81q6wc17wUVZqAFOg9S6VTRoqLvC+GwvIhzDkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766636034; c=relaxed/simple;
	bh=C/eQUZQUpGQUQXOnF49PhhI+DHB03QJ+GMCercGNbGM=;
	h=To:Subject:From:Message-Id:Date; b=mUYDGzJ00n5cw9x1YZme1oIVg/Wq8e7+/3kRt3Et4RScBZIsbo/infDZZfXeSqoRK4npiuaojoMhtjl4YbHWfr+HhXeFNOOPQ2AvPuOfTRIQjaVbDWy2l2mdOSyUlkPDB423blGJrs0Vv/fkXce4kAXgep6AxzWsnFZrMveWnbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkUHJuSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkUHJuSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A624CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766636033;
	bh=C/eQUZQUpGQUQXOnF49PhhI+DHB03QJ+GMCercGNbGM=;
	h=To:Subject:From:Date:From;
	b=ZkUHJuSCm5bfxf/JKztDYlZJwDSlUTHfEqrFJGr+Re0ojN4u4g+FdX9toPrQmQLfp
	 nfCFkmlQeEK2LC5k7PHCzVx32XSSAd1MSagd5mnYq11Bys2zjqxSYi34E6QMUMSl5u
	 ldfiaEwleaJOAEpm7lUg3EnZ/oXc4A3cwPLR7fHVBWFuFkeK/2P6Pxa+mGRllC2d/c
	 XPaHVoOBSA+DCwt9Qs7EdIhUp/U+eGahb7DqNv+1AAFhSyapDLhEAMDHZFTQVYGgV+
	 tK6E+M658JeZsGkg+o9uVt5FSFeRiRfW7MLw5s0dOnlvbjxrggmCkKmfhOwn82DDNc
	 PXbzlclKi27Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C4ED68BD5
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663603357.32072.1378738744161153600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd77665588ca7bf17cceff87899c81b33cfc05f492400903cbe0003d3ae2af5
Date: Thu, 25 Dec 2025 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766636033
