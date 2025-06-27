Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D44F2EA723
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751042995; cv=none; b=aZNFOPJauwi/+yl/WIiI1GooZzHX70RjqBnNs0auW8eLzG7BoSFTQdtexAyHDyIeqHrrrH2xodjbZE9HQGUUccTCeDAA9QIEv837DlRgoKp5nA7ZJ1BtQJim+Jbnn2cQ2DreGEwGc/7lkS+qZc4v7byxKvZSospxp/EdY+XMJgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751042995; c=relaxed/simple;
	bh=ervXTzezsWoVzomHY5sI3E1OWnRTX8zUzVSlYQ2FEBE=;
	h=To:Subject:From:Message-Id:Date; b=LLOISMM3iPqzL5sdTF/bgpEq2mieM9QBG99E1ZrDpQ69wkCN+BAfKTpPl9LyoQLLBUGilu4kODvMfYDWxdSQZ0XoRd0pYHXOO4cAKyZSUPEmUOPluGgg8w56DvRe2P+6Xg+qiN4OeCD66OJqTmrwKToxuo7P9GSRW3mrTJ8Xjn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acurWEMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acurWEMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A449BC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751042993;
	bh=ervXTzezsWoVzomHY5sI3E1OWnRTX8zUzVSlYQ2FEBE=;
	h=To:Subject:From:Date:From;
	b=acurWEMivrdE41XPURWDuLPyo/ucCLXuFHsbzXpfNmocisy7HE8xmFLOApQ/O19bs
	 rLYHKFPipT8IsVXFOIv6VZ9reEMY/F9VQJUsBoaLO2IClCvkqx2KftBdIAL4UwzUDx
	 cGcAiwm23tH+0c77bBvyJOCV7Eq9ciu6ZMPx1XuHpq+qBwsChRWhZXmVMnLG7NTzRF
	 OT7YdWQDxdDH4D/qWjW2deYmH1PSeFzSVdfn25X3YB02Z7JPAjaNkMDUnbZyV/tbZZ
	 /pVdDwjrmESTDcGXXlLANnipKqYgWCY1IlgnIcYuNNdzQ1+CNf5UCfkcFVoETc7x2s
	 ytr9CHKbWR0Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F904C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175104299357.12210.16991001344420914427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809bdfdec4192c703ce838e4ea6f1596b14eb62c01bf467d5ff072afbf84d442
Date: Fri, 27 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751042993
