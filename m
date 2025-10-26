Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2FB7081E
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761443994; cv=none; b=IEoXVWali2U09tNZlcc9B5Tv/HgGiPX0JMrg2oUnFOxnuo0+M9Ck5mLM3XQsasbrdxy2xvXUaes2LieiNL5++w14hlb3m3wRQUAiuJO+YMZy+U9GbRkkZjAYkz2hmu7Tlmi6l7Kf+Eh3M3TfkquDX2sLqmSY+27yllipksLvabo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761443994; c=relaxed/simple;
	bh=dt1Ys8LOS4Fr8/aNqQIibWGYjruTZ4v+n5BcwMjOl80=;
	h=To:Subject:From:Message-Id:Date; b=fZY0dYV01gp1e4aJ/lvpIoO1cJtNRvc44slipZHlkWDWNX+j3FeKJTNQjpwHbrCL0y/GDbHbnYYqQSC6AhyRCahdl9a1T3Fg88GkJAINqqnTPttb1CAdbM1oVd3vIvhlWznnKCewalGlzCTi3aub/W0vna24eLHfuwpURsrlh7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGKkWaHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGKkWaHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4560C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761443993;
	bh=dt1Ys8LOS4Fr8/aNqQIibWGYjruTZ4v+n5BcwMjOl80=;
	h=To:Subject:From:Date:From;
	b=QGKkWaHiyQVS+D2tjjMdEO/4Jl7mQy217FcwGDmkcDczD8Kl0dNDkjHyzLgCmoUdy
	 sfcbBS/Y8rPu+4DyajtuBbbOZV2seVHWiKh3+8uj3f+tq5fAujHzHGUwGxy/RhNm46
	 h19QzQPp/E/kLZAi64dWYp2JOg6vaqQBDdKz09Pqbo2RubKF0UsrEQKAySCstLXE/7
	 doB3FCcG2+IVWamGjotP7Aqo6CMjX3JfoGEcHzrduWnG/KdGRzqH9IATfbTbvbCZKX
	 behafYKJDFYflnbPbPXKSiyovmOOb45gva/EQwMrGevPtGHmU9dFCelnX8KsNZEUQT
	 O2oo8Z39O6KBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D8DCCD1BF
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144399358.7700.16415124159375102074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa9d1443df4ee9cd24be51737013067c3ede31151acfae25f10f6f0c3af97bc4
Date: Sun, 26 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761443993
