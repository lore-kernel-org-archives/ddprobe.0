Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4E17DA73
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732394754; cv=none; b=CR0iSd1Fxi12TK+V7jItpMX2noUJ4ymDHouQXFldjw+JfuB2JthcVp8Cgzc+ND1dXB01dL1itqqiefoznTtzitnYQyfP3Rrax1e8k0oMo89xssOnlB2N9zFEJqcDGziuCrIBKO13xcQFGQlJfbTbEe0vfbl7g7Ce7nuEY1KnTRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732394754; c=relaxed/simple;
	bh=TB84ecar3wYuSC9RLMrQZDVon957dRztW8ZHQERtk8U=;
	h=To:Subject:From:Message-Id:Date; b=Ht/GRft0XkBVjDfs7/5fewhJNizXc02w5PtUJu+A2SEuwgAx4DMp/pPL83uw4x+Y7+1CWLXgHWXMcpoxUR/AR1sBTtCRbhKkyLDt51HYoq4sXnkA7kjK3GCJGhoK1YPUU6dA2NOUi33dka0JRSnftfqtMn9Jb5jqXXCGrYNxJnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReZY+NiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReZY+NiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1B6C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732394753;
	bh=TB84ecar3wYuSC9RLMrQZDVon957dRztW8ZHQERtk8U=;
	h=To:Subject:From:Date:From;
	b=ReZY+NiEnMAz3B1aoIOT599IswsP7S3s9fgpzsiBQlohfqLJP9JofdtMjrehREem7
	 OpU0eTgukxHSnVsmRycZUDmOcxKRwFYS5rhxu1RiZD24UOPctXrJFlwHEs83vT8YW8
	 QqBiiGB8D7+ufUpItCF88gyG/tIMZoJpBKkpTozsDI8vfwz9OwihkHFE2jRU3z4kS3
	 Y7HaoHCDKxOpF1p4ftIQZ8dEryAvXLIRmZc/1jFe5P1eHBe8+oY1786U/daN9/jVwU
	 ouxVwkneBz8nYeyI2cNFLW6Rm20SIAb8CdplppvexBDqZFaHygezkK/H1v8MeKOY1X
	 wBmmX6CmINY6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9304FE66885
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173239475359.16464.17596961657642402416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02190b4f4abec48b386018c85a0a6ca8693e580da81647a7f6ad9131ec62666
Date: Sat, 23 Nov 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732394753
