Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198AB2222C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770049434; cv=none; b=U3WJkph3O1eKDQkaHTZZs+vO1tExs/WZQCYomvUQtovKK6GFJk4ImNvQgzBQqySnT/DLhO/cvgJIatbkqBROuLqVZqA5bIXtwor5S8pD41Oofrm77uuBc7eo2G1zk75DewO48VwA1o0TvC+8FfrJK5OzGDSEDNghWhcOpZhigmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770049434; c=relaxed/simple;
	bh=1Z4DdxBNQgabXzouwFVJ7X2fcfcj/leYH8O+xrk6K6I=;
	h=To:Subject:From:Message-Id:Date; b=elyWCoLRlJ7V9tSzZsL2c4/9Ni17RIzsXtrqW64jg3q7SW7u6LvIf1g9uAxDVFdykRxz8Nr67bc/DFKHv3W13HA563pd5+2/WbeGacPss4yGtbAcbX44OaTWr+CNw4hg3yGBLUsqs/6zbkZlLgFiteizFCloiW3cvRN7BlVdtMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJT7jL0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJT7jL0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B287DC19425
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770049433;
	bh=1Z4DdxBNQgabXzouwFVJ7X2fcfcj/leYH8O+xrk6K6I=;
	h=To:Subject:From:Date:From;
	b=EJT7jL0iSSnatEtxkbf0wb9mS+8zyAFcdHFrnBZm94OGv+iD08koyhUPGv3V7q+6c
	 ZAifUMSO6tSJ3KtyL0qHWydGjygPKzwn15fG8jQmobe5dRoxDNJ5uJ8/pgx7zuAn0B
	 R9bz6KrUGHi/XpcYz1sexTy0QPqLyGC+XIZtOL9F1W90SXf/nJ9ZC48Gq8onzEEK+C
	 ur2Vd7S3k7Cnfawr4vl+O4IcnqAXzPxdnYM7n8wYI7J691nUA+l81wjNkzULmfln7x
	 uLrtpbtB56B7PGD2WzVtJR6CrZZXp2Hg/Qy6MZ/v3B1pLYeIAfCgzwpaYjEcygCLcz
	 Y8CkikngaYIsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CE8E7DEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177004943361.24506.10265322607085230368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 218dc8b3968a7c9e992ac783092265ac2150451aaa22b554ad1864f1f12988a5
Date: Mon, 02 Feb 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770049433
