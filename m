Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6327126F1E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724781354; cv=none; b=btziI+BGEBT5l391rGr3uF0xDoVWlSu/ScImRLyJo3BE2WZApfhp3WbelbDz6BjkWuTv3xoTIznDzL6RIE0O89BaaYumsY/x6zHlDEB2yBRzxQweE6L8/khFlL4j2CNn0+OTwjJQu8ZmXeyBVCd4mP0Wvc5A8b1AipkWzWSX/8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724781354; c=relaxed/simple;
	bh=QS6FwIZ5dj8xzt8UOlhpBGH3cF/GVMeityuDBzptkhc=;
	h=To:Subject:From:Message-Id:Date; b=kv5WtRupATm3iE4Wan4h2ZJ9DWDpur+gmyC6dfRPueEy9pwS6nR28a1LgfzvTfiR455ir4mspgo4X2XlSvESkRk4Qx8655rolliZly2wt6dURN2WAO/NHSnmm0BKOj2E9pOHpQNnKzCfN9QsDv68ijR3asHpAV+aDmPlPT301Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwnF8Nrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwnF8Nrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A7AC568CD
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724781353;
	bh=QS6FwIZ5dj8xzt8UOlhpBGH3cF/GVMeityuDBzptkhc=;
	h=To:Subject:From:Date:From;
	b=JwnF8NrqvRkKXFhtGd1bMG+iX3NfYd0o+n80W7DXhGYCD34DyyzfLw5DdI7WwcIF0
	 gDKxnwj0+g/tx6USZvuQATUXRbFvHlBjDhoBpRqhCsEF2fRBJaBLGmDODhvldoCOiT
	 h6O9BaVea3yQn5l5EWbZxA+S8uxi0KW+7iL5rQRCK4n/GmDQGtVsNPgJ62wlriLuZU
	 he2NqGS0Y+GzcairRGlPmDGcFOu8RDc3q8DxrWK+xQsXPCxpAP+ztjG9XfkB3rxm9A
	 wupxFeF307uqbNk6NlzdqVLOdXK2JE9IL3FY+FTlinmOFyg/mNaJg5UjPRxkLUSJfa
	 M3itQ80gNqREA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEB0C5472F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172478135363.7334.544962718510352147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fbdcf2a77183e43ff0920fd50d559b2de5065ed6604eda3ef102bd92d208bc7
Date: Tue, 27 Aug 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724781353
