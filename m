Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9B415B569
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 08:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713430763; cv=none; b=c4jWVa5liMW8wo+yXxD3vVwxSwv2jEd1Xzgl5/ILQttb0aeO6RJQhPt33iEL88G9DSLcuqqHoaztB7bX2233LrVlgA8T8pNlhdMengzjgN13PGIN759SzJjZvjOjdVv/PGC/4RZFjvxRxxE9/+Zr2ooJWvev1hCvkHGA/527N40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713430763; c=relaxed/simple;
	bh=EmbgUKefYx4grWz7M0IkL+8RYH/aQNcW97O1TW4rxM4=;
	h=To:Subject:From:Message-Id:Date; b=F+v2yEDmULb5l9uO71+3hcgWz7nl8EtbJSD2KKEutOOLRaYq4YH2TlEIMqFmj3Xma651LXBiTdy/2M44c3gBG7xR1T3IvGWlV+ah+z9F7BoAH8OQaoHlaxfukPQjvyV+t1ZpQtFpSIk42xLoYkDTmL3wyNuajbSY1lrpjjNpeBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwHvMD5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwHvMD5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DD1C3277B
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 08:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713430762;
	bh=EmbgUKefYx4grWz7M0IkL+8RYH/aQNcW97O1TW4rxM4=;
	h=To:Subject:From:Date:From;
	b=CwHvMD5JwAXIND+EA8EBp8sFCYbg+J96/IYxIWQsz6JjeSlqMAalUN+UxBfJ2RNZD
	 PMO7dpJXMxQdZSHdBpbWlvKpC6PH8U/Iw5Pn+MpBldKtOUKo+3dpSuk01lfZAZ45SP
	 bvWfQEAdQdTA3ub683gq0S7L0NFPFn0fwJb4uGW+TkfOR6Aq88nu71EtlDkpzYZuhX
	 HVPCaY6ZOoggkWegEzXl6frFyZ/g2zhL1IBuzpvP7W7z2RTZWZQzvgjvKlaRpHTxp2
	 9MMzFpmWqZZzI27DHCtw4zQL0mfEd+ajJR9FJMdUsjkOyei9BfpSYQ7HbXpHzRrEX1
	 eWROdZABrbxEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C71A1C04FF8
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 08:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171343076280.22569.3718991601269847161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c3284ad58a5aee06386a347f7030ea55526292b309280129b7e6766245b1b1a
Date: Thu, 18 Apr 2024 08:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713430762
