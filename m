Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313361F12F8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755820194; cv=none; b=SbevYV56CUo9BmpeqEGfDjl8AKZGv/IvX1kM8NbKuaQXWOMbbwZTRlcs0dpQaiW4iA1fx6WKYOXuUrOOgQImjXpLR2eHZbRVX9XR67dFfcBMKEJQvHez8LQBO5meVlIprKLAGJlmOBlKzmg219gvPOhSbelf7gfFkm3tfV6L2ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755820194; c=relaxed/simple;
	bh=mgB2w+K4gtiwp4SNDb0N7bIDc+tgS6ykQNcZPyqL/EQ=;
	h=To:Subject:From:Message-Id:Date; b=P5Oa1R4pr0wkBQU3JzcjUwdb93G/hq+H/LYABAkIvmTq1e/zWwV5RC8g146WeRvBFg4aLAJjIarXpRDsVoJsWGhup5d83JoSxHIUKO3IoWyXFDmNDXD7OfN6cVTk2QMkBQQ60Nxd4KNkykqdrOxSxmUd8XszOMmgOOc2UFQl4PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a96Iiudo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a96Iiudo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05D0C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755820193;
	bh=mgB2w+K4gtiwp4SNDb0N7bIDc+tgS6ykQNcZPyqL/EQ=;
	h=To:Subject:From:Date:From;
	b=a96IiudoE8xEaYMzUeT1a38VtBz44q6YrGTp8vcqZQZ2Mmxsu7zmevkK9drCoQTTo
	 H9D6uvnZAPtsDzH1zYRK9psxZSmS+wRVWgsjxA3JODGiXwAgKdIKHv1IFCL0T7MzVh
	 XrGAhI0ox+o4+pc08XZ7o5Z0IQUY0PuJp00Icl0ctS8+JmyRKg8x+2Z9IeJBl/4eLc
	 KPSwWjDI6kyC2gzMbNpvpk3xOHbE0tsukOMxEtk6XiR/xbyw2ep+k1Bc2SFmpaAEaz
	 AuS/DyudzkRI811LoLB4jco1pqTZWTVdLK7AMlNY4jGgc/mAKI6qUo+H7OsLcc9Zb3
	 L1SSzOObBF9Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1A7CA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582019357.4192.3311048799107482140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d185edbc419c2059eef504a567dc7074c51d9d082da81be886b05102fe1f6e1
Date: Thu, 21 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755820193
