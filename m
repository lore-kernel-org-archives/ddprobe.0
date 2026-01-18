Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0641630FF33
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768775634; cv=none; b=I1785RA2KCz0MzeeKzOeqXeAIFFSg7JwatSJFyuOUWKIcbB+Smf07c9sQy/46jvbl4HM4VlX+yHBZCBuXsI1i602lqCynKJG+pKYVX3iFHgFNW2YaJEmJX8OikyOEiWH/UsmIFGgNWQCMZ+weori/KPwNSh8YJ63A+SulNzlLxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768775634; c=relaxed/simple;
	bh=ucF7Ug72vFeB4q9fJNT/w5xxWGhs3puzyOF8bKJhSJ0=;
	h=To:Subject:From:Message-Id:Date; b=OOVkbjSrgub2wbvV1rOShN/E1RHMR5oD1NJYxSTqw2SAT+SAZh30RCgFq/XJIMw8X/qCxzPc+sHn6j+jftHPGiGxkOAumBalbDgjCX5CLdxrKKoGaa9tqqLT1U95G2t6ipoEpQ2ptV6Cy4NjJCAUXk5rDQsQGAoSJL/Y+roWBXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DyzLmbGS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyzLmbGS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E18CC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768775633;
	bh=ucF7Ug72vFeB4q9fJNT/w5xxWGhs3puzyOF8bKJhSJ0=;
	h=To:Subject:From:Date:From;
	b=DyzLmbGSgcdhp2eEY4J32kH7QtaVuvp7zdbolU6lBq9shebjsNqs7vPX4O8qZldv6
	 1fhvI3IsMJR0YPg/OSCbWRJpDQKtsLNsQsC9LJg7GJhZHwasa+g1cW7phmldv+HgtD
	 6Y9xTe1vhtbtD1MM9+IBdO7zSlPFNFyA/1Y7YZvJ0tQMsl+uZbwHINmQI+JiXa8LAg
	 q/mhwznehdeqgEtRlbSK9htrT1+Z5enL2JY0ETIf1OT0jOhwgTqJDCbeTVOmO/0OwM
	 907reGrVGtu0W5GTZzTvulzt1RpDlmBeP8v4gUgd/TtHVmbYzK5FuoK4oNnnKdZVCe
	 rnhMWd82Sehfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9AC98315
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877563358.24084.16714703201803671993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c4aeadc0a3f6ce5acacc7bbac674b78cf415bac92c5fe0176a1a5f21405d9b
Date: Sun, 18 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768775633
