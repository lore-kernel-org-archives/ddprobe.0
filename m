Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CD53EBF3E
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769992434; cv=none; b=o16/S+0UVg0nuNDr9qX9CTjJJCdwZRz4e6n284BUrNAJ0HPoJunNBS/1SAOkl9G4CNAwDtbU16uSQLFDN67/22/J4AxOSgUlt+6AMTZDIZRSONQlKxf1tHLRMQNEgH//y1bqhby6baDyHivmZ+zL7uSVhOZ9RjHyaY+LHGFrl6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769992434; c=relaxed/simple;
	bh=GBYm/jyq7PkT+Vi7BYfacWEqwOseXp9BD+kAj6FNUB4=;
	h=To:Subject:From:Message-Id:Date; b=EAhsFGh/eMW3FwRIP3Tg3yq+HtAgoV4l2bt/w7vGMsQ0jI1xKl3EM2N7/FSSFXCfNhbfUCQaY7PLWEjA47M6mTo+WOYeZ6MQVErCkul/SGnomZbmA0bOFVOz24hPM3/tEqTUb/i9s9dy9H9wKUjJxDEiH12PDINmEycOzhna8Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYb7Rq5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYb7Rq5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F61C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769992433;
	bh=GBYm/jyq7PkT+Vi7BYfacWEqwOseXp9BD+kAj6FNUB4=;
	h=To:Subject:From:Date:From;
	b=TYb7Rq5OIb5oZ6M/9BycYFyXws7ggqoiN7J0i8Y1K7G7W7C6XNIUpUhQYiF3svBqd
	 NlMZsa3j76Hn/k/OtDy79VE8gx52XYVFP7NjW+22y2aHQ7d/GQLtKhGROtNgbC651t
	 jJNMKa9Mm0e3Uu0jOlPm/gxoIn1fGJR3Z3Gt2NE85nuu6/bAt/B1oVrIdOgz5TghFb
	 CBK/WFdstYWYpUXTtMwnVFhZaQ7RlJ1wQx1oTyG/0jWiMtF/5mqPqBCbpeRqgyU9kf
	 REEavyMt73GhTACKPBlI7bKvyKh+cqGDeE6oPm1SslFokB9kIqd8wVAzsH1WJn5sVY
	 DPjMfTDr9jI3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFAAE65298
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176999243361.20259.17965950962359199623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be68182076bcd5e3f3f162d129160cb5a00d244a7ab45f30572fbfbfafc69817
Date: Mon, 02 Feb 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769992433
