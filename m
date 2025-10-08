Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1576C2BCF7F
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759894194; cv=none; b=PCx3UBlklB2SgTaJlBYcM3wsHNyH7Lg0qCgtCoZGUv+51SxbFKgEnU2PEDbVmw/LF/GkG8FWMakQFne3flPGqqmcpnP8FuKceH1FW3+Fhok9ishpEJPpWjq8w8ELSIPWVHYDEFbPmfZO9WL44dd0qKdlrH6nh7GoB+r6VZsAwpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759894194; c=relaxed/simple;
	bh=nS9B4ZlOyh/IE6ALFWfwQ8OZdoqhvH4vzJYtbYwrKvM=;
	h=To:Subject:From:Message-Id:Date; b=tTQTYqcKzIWslhF/Xf9FXxw/uWq87H9y1n8dlAiUy+VJLtczNMhndv80o7DOngYH3959VxySgcLbNsKzK0W9/TcRLo85CO2BJn8WWRKVa8BMFGZAZc7Va1pERAwFAgHr4tqJoJ9TefvpsUedJ+0aQljBBY0AM1A+Mphn5WOhjKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGVhrHgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGVhrHgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCC6C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759894193;
	bh=nS9B4ZlOyh/IE6ALFWfwQ8OZdoqhvH4vzJYtbYwrKvM=;
	h=To:Subject:From:Date:From;
	b=EGVhrHgVIxyJTJYNmVJtvS7yu3m7ogoWsLuuM3KsR+AgUK2ApUGSN478xICfg0UIv
	 N/OKDAHXF/O6n/x+Cfbu8W+2ui4ssh5v+/8MXm1WBIWRi9GRG1Gr17saZLijKbgS21
	 wLdcetqnu1nge4wjABKQj8h+dtBxeBHk3DeHJPcRUBURPr9PbS6Vh8f6vMyMectwvh
	 HlpRMt/oQXrw69O117Hdk5BjVigLrgRtDkLwaimvIMhrp8iN8fONVA6N6RNN7kX0fb
	 DkSuqKcZvpoQjevRRQ2D1T6lUq8IQYeHHR7cG2slV+DrCFnqW+gyypeOfzduNliJiW
	 HJorQHicBzrSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9D8CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175989419358.8371.3066510859628906468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8320577438610e4b28b076fe0f60c49d7eb6ed28f76e1488dd31bc5176babd2e
Date: Wed, 08 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759894193
