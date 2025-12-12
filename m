Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8AB1D5CC6
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765578174; cv=none; b=c0pFvnj09pMRuFV8ZE3NaE8YV+NOayBZSdnF32UCc/HY7HSk58P/mqcczkHQY6670SLLxQbFWPkSgUtqaAKAikx04RcSLdnhg4b2jHmjtq4+Ud+ZsRdQVx3AR0qUCCn1kPQMa49ox5CCRrsfzgACTyWMuJb7uFPsorO8f2yW71c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765578174; c=relaxed/simple;
	bh=3W1LIoliHOlneoZm75LBwesnkty2S8ZFrtas8Pk78BQ=;
	h=To:Subject:From:Message-Id:Date; b=GIT7orY4sGOtufiA1bzG1sn2UPcc43iDsBJ2oDzkhWHKcMw+qnm90UOyTD97NDMcX07t/FLYxzDuM5nzCOyMHO7rj/+6tb4JKgWkzLqo3eDLY0uc8yjmslMjl0KwZnlQyv+hVSGxp2LsyM5oCq06VngyPoBgRktyLMZTm90t+Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5O0N6Lx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5O0N6Lx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29C0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765578173;
	bh=3W1LIoliHOlneoZm75LBwesnkty2S8ZFrtas8Pk78BQ=;
	h=To:Subject:From:Date:From;
	b=r5O0N6Lx+Tj14hdDhBSLQhMggjNMxwC0TjiwLhdYo4uuRWrhghDeLNRxelMmdLWdl
	 bdnTBYD89lTWWTulfVzVZ837wOA4JKomztP8Qq0XNgjs4BrF420aE6LvGdpf2V4tO9
	 onDdbDCHTuEKJV0RfsNcR4SnC9N/46DNLPNbLR4eE9SYn+Fi8U5VPscRM8og4tXcUC
	 ul8T7vsHnfMoGPJ/vaLI0vyv44idzUCwSzoUeDhKEOpDmyARChY4v6M6IndcouvygQ
	 kOPj4pzAsbULgC3ZWeNNQ1QemMd2sTS26vO4GP4+fvCMHbC4dJl1cHNKRapDjiTTE/
	 FzU9hWMMucjVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A061FD59F50
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557817363.12197.9274467103323708696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd17c496d77344894c019f98b5fc2af74b572be0f08519a820249847c31d9d4c
Date: Fri, 12 Dec 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765578173
