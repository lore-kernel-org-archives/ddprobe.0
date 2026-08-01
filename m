Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B75355F4E
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785583834; cv=none; b=O7XebofNgnKZ9C7pbN6yNn7dPn24mWFvkU+8M8m/hzoxzFkOENM6Ad/SBy4B9IwkHBLBR3oj6HczoQ9IalOdj12ARys0HFe5jVNNTJUTMEZ1KdG8RfCtNHUBsyirYy8d8DrQydQJyA31SplMtjd10ptRKkUACexVNcSEOAOChZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785583834; c=relaxed/simple;
	bh=ueH387gb9sP+EwracwbAehbs9c7BNqIvail8YnUY+9w=;
	h=To:Subject:From:Message-Id:Date; b=FTNOGyUGju3VnEwlBVAVSryQO1upJAnroeIgYEFjlH8Girp5ko2QY4a498v9UuLO9pj4JviCWuj2JsQHdYN/jtFm42mxXpen1GT+WDVA1w6DY65PUHRYnFk5uvvH2v7VLX7oo0eNvKWk741l07AEOwGhljzummubINNAOuI9ZGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trqNWm1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trqNWm1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDB8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785583833;
	bh=ueH387gb9sP+EwracwbAehbs9c7BNqIvail8YnUY+9w=;
	h=To:Subject:From:Date:From;
	b=trqNWm1L6rZ0qACB/WDEmC8PlWGmU6AvbckwkaEUpDbQG7hYtQMhrCEs84o40dH+c
	 R+sEeGFwbbEYxsOU4Q+Rkk8DDG2DDMgA4kz5tpGLISFu7byoXId5v6MwVHOvQyWIjW
	 fIY6Cr/OtFXeA9PZ+VowT4tgqMZOSY6rFeZ6RuE34nMJkxXAs27x3xQsO2U4quAf/J
	 QG4Eb9z+BJUmWbHjS9zrwv9t1iVpCzeT8WTdlMyKhyFEWjRtnson39n48mHNTyXhme
	 V7l3vy0lqriLiYJhk9X/tu/d7D0Fa7TzPUyYqGvvGMJqgbXKJCqu7Pjzaz14430bEq
	 AezDtMgjpxmOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99A9C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558383368.12282.17129684389208102312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65706d9a72712beec57236116310e8d9c62d5070232c3825ca45b3e1ba536c1a
Date: Sat, 01 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785583833
