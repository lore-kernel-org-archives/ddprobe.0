Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1838B6FC5
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768596234; cv=none; b=l6v/e9ABRzBzUeQ1L4aV5iBih5r2zfQ7ovPqPG0Y/mXfGw2gCzlObbwSLMSXJP/lfWv/in1/3ALuI50Ulq6VnPBZ01/OdT111n/nZqEUbrWoesO+Jx6eQ8tUkxgW7b8T6EsI/mCwM5wOdHsMzb1QaXKYPjC0uLIZLZeizECo9uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768596234; c=relaxed/simple;
	bh=9QmvD0VMk55/4umlWSOBDQtzJWV8JQMM80iLMcz3Zk4=;
	h=To:Subject:From:Message-Id:Date; b=Dyyck5LfSIcAY1qWCyapZSBskikC13P1CgkdjxzyeAZ38od0XRXFaMLsf7NrqLxbr+/4RBwxV8d2Mj+uclEBBDDNF8xXfmyqjjWMEyfBi3XeO9Q7clmeOl8++5uI1mFsv13dg/JOQbkoJkZhXReVdkTjG1+IkyVHRsR6QkuLCDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0ro0XvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0ro0XvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D840C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768596233;
	bh=9QmvD0VMk55/4umlWSOBDQtzJWV8JQMM80iLMcz3Zk4=;
	h=To:Subject:From:Date:From;
	b=t0ro0XvVzyypnQiV95tIc3wGU8eZPRRB206DtL1bgwcbgeoXghlPoGX6RyP2rbUkb
	 dNpio6WDek/FoDjg1mkZsLTFMATIoFHbaDeRQ6p9nSPRXxBBwJdPR7e0VJCbRADKac
	 PexW5m9us2aBIbZPnrsHH/RM8+7BfUlMJHtR9kejT8CEIHBmpcDb9gXDMjimbCOTIM
	 /Uy19eV49ZMY6ksdwirVGgrSi5w83PgxuLE2gMFqKYQR/DzchabVxBdCSG068RT97R
	 qa9NJdiKjVafEYbKXt3kZkohhiVy5LQwU3Nphy48pPugMNhxrYlpnTt4LBCterRsEl
	 I60wOIn6wr88w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF7CC982C3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859623358.17074.17344774154006426620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e829424f312630b1a622f021576d090517807cc9a4c6bb13ae2d57aaddbf249c
Date: Fri, 16 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768596233
