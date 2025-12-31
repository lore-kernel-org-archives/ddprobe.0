Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B797310763
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767174234; cv=none; b=sWa6qFQ1ebiLz6be7A1/Ez3vKqqGW6AH+g6/N5gPmOEUB+KRZIEeEs93Tkm7736as+0h4s1qbx63AROTRzOjpLQ0GQK+CgE+5PasfuNlrHOKxqKsHFEzKl7xrI+LXpIcD61HbxM5xkWzTZidSrR3oa+xF5CONLlG2T0FZsIYTaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767174234; c=relaxed/simple;
	bh=Pr597X1zyaPU090oWJK4jqtgGd+gkcO/EF40Omq4ZMo=;
	h=To:Subject:From:Message-Id:Date; b=O3beqaGhXMdvZBACSIToUB53CqwvGOCHl6yDuqtH3+YsmEoiSLyLzyPfMNtPsFxPUdKoM9MX2K1+4VtYOobQwhWW6q6E83z1iIh5jbq061dM2OUL3raNwyd/RmMUXp3gc0+Bij0rf/nuQZ6homg0YJ+VwTMh28Y9dP8urGHFB1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgKHQym5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgKHQym5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1677C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767174233;
	bh=Pr597X1zyaPU090oWJK4jqtgGd+gkcO/EF40Omq4ZMo=;
	h=To:Subject:From:Date:From;
	b=UgKHQym5T0UIcbM/liaSCEmCzvY6J4j0SkQBuop3kmrdYtyN7PKjSuZEeK8xOQ63J
	 4pe9jIktikp6M9roWNZmNG76e35epGEnXlRCKZpSwKb3xxJJCZqBJFiOCcPBuhqSy5
	 kdzwfBqi8gwnIIxyr55ZaXCTmoULlRse8QIHayt3Y3lsabFq+rG90pmYp8U+jga6E7
	 7U5LFkqDmKCwEWVcTmi+bTrewHI9cl15T0wOjUWn4BcZgxJGDfLL6mHHH0tNp3PKjd
	 dFB02ZcKyaGUaVSUwNq7u8CsNUAvtVtTMO6lectVIVrvINrOoF/wKUW8FHtSCbbJsP
	 ArUCk5/0pX8PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1A2EE57F5
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717423357.23803.5455598414819829089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a63d9c91690afa30872360a0a0bb706bec222cf49712800be481d67751de20b
Date: Wed, 31 Dec 2025 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767174233
