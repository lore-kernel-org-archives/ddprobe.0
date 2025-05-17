Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43766B67A
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747443595; cv=none; b=VHFAtr43p7tvS1E8ppMJ/ig2yFWOXOgYkUr4Uhv84wk55Hx3H887lEGuF1fyJgNsWyHG0ZPu0szCBC/ajfRxj5cudbN68nMz3/BMny9tQGJ/S+B+KATHCGjEL8agtipsJmbKW+KSajKxY4G98mijDy56MjDGftDN/KXBfFawLak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747443595; c=relaxed/simple;
	bh=QoiiKP39XfkXKHU2z0rkMGxPKHrCbop1xRWA6JzZD0o=;
	h=To:Subject:From:Message-Id:Date; b=k6Vec/ZQln5RvNJJdh7otXbrjL4q3KGfQqdj79rPTRvRvGhJKnmpGsZuOiKQ+DUK5fLQ1mBWWtehuykxA0Z5oU4IkB15mEyu1wT1Lw3Z1IFdxsWAplAEvTqZkuX/IEko65ze9PGGg7txDm4uHB1fCda2St1xyOpLnDuHH7JkUUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqc5pdiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqc5pdiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E14C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747443593;
	bh=QoiiKP39XfkXKHU2z0rkMGxPKHrCbop1xRWA6JzZD0o=;
	h=To:Subject:From:Date:From;
	b=cqc5pdiuPBIxGuYjvEvXXnsvT6WjQFw+f+MnV9ZRDFPGI6aVuap1zwry+Wiiu718a
	 7gjBUGd+4r/C6xDtnPnq4lQBOwqLfd8KM62HIrmExFZ0SWSoj5VKIra/dGx5EgEfTN
	 Qk7vG02E8+FHqS/lQq7aRI4Iaw0Tv/2ixi1hA+3APjx96swJI+6HNdr0Im6/fr2dL7
	 7hwzN/Gmo0vsC1PeW0OzBeZGD3gVr0HSkGRPWe4j5itO97EYFu4ss7S8lblUlrwpy2
	 yfCdirWXZPZEnN7sdjIly5TrfluB+FLbztWN0/aWn5p10CCYgg/dLRJAbQab+yjIbs
	 kcxq/KtsTBTjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C24C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174744359357.20852.12926219202469087007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfaf7785092bc62d9c50999290a58a75e2dfab37068966bd28672054d59eeb8e
Date: Sat, 17 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747443593
