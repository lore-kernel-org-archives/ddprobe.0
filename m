Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19354145FE0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768183434; cv=none; b=Bot+pGQvff5lF+U0BlMcSWUoQgKpIOJDRERdS1nkRgi8Oi31oxibYBFe1FRhoQdM0pKzFWAc5JD7ic4r+W4Kf6tHoJRyG/YZWrLFSNGGr7JyE5KHTc6byIzfZTUNPt4QLHQ9FIsDhSXjBV28nP5LLMPGc4sAnkZfyWkw+6/TB38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768183434; c=relaxed/simple;
	bh=VanHn06ZZQrinxbd//o9p75gF/PZxno2hvCMP26xtXY=;
	h=To:Subject:From:Message-Id:Date; b=sWdiiZy9WWtz8AhCBml/EwZmsXpQ+AUkTaS020qsHnR8e+pRKdGZLbj7aO2hO/rupZ+3ixw1vF1r3tUVEdic13nGVkvw6KLSz2rnjxGk/sJPplq+9HRjNK/WKv3FWAgz0oXl8eKirXxUrifnU6S9KzmRzAzkywLq0AXjexjp4R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7u1MhQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7u1MhQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31A5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768183433;
	bh=VanHn06ZZQrinxbd//o9p75gF/PZxno2hvCMP26xtXY=;
	h=To:Subject:From:Date:From;
	b=Q7u1MhQAJPWyiIY/0n35SQKv9WMg8hOt2ACRoUcfvIEeQ9bqKt04YO4cYjUDFpcj5
	 3jRqjmPtgPThJnps82hAdIJE/OAs14wo4ZC7LCnS551/pyMnae6q5yIBAvLyX2y9S5
	 3qNyQNtETLsPZ8EwDRIkKYPRM+U+sTt5Z7YXIEUaE07JjmVMO/AY35Ugio4RPikXyy
	 PF6qW2Fy+YgMiWLbPo1xMDz1zO0oLHvdnWOWO+4rI38ebVIZr24B6+n+lORkDrmgOs
	 33ZuWLGHAclMvSbzHeh7+XM6RufBzoSZm7EtDvDr0V4tepKSKMdyJyGg/85L6EZGHD
	 J1oRvHyHt0zxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E7AD25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176818343358.1913.12972114009474500690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a0f85335927fb7d8271b4ab90631407e69ed2718a79247ad578dd058b77745
Date: Mon, 12 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768183433
