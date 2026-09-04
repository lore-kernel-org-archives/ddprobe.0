Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462142475F7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788481834; cv=none; b=jSSZhAfXt0UjirDub38+TgET18htVF1IjyYk5H8aBDRy3I/kY2AHUEKVy1IksS/J0tXwfIQTh7DjncWca+nPk2v9QMbetCG0FZa1EspOn6rQCJVcclQcSSjZTVdbiFUta1Jfo9wJsL0q9Uml7zWi9RehShZC7G/bhStZUSaZ6Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788481834; c=relaxed/simple;
	bh=M5nAJYQhSBSOJZzFHTBi79leq8ODnk7cX6B+sXBglkg=;
	h=To:Subject:From:Message-Id:Date; b=YPLndek7nrq8ElQ4O74kyoSy903q9s+5DCD5dQxLSrRLAEW506fZlK1rzKjJBT9FtpN9PeD+V4x/9G2wGVSE55lc/7dnsPC5SAcOn4i+ZmnwLB4dDVBhdZ9O8y98Aj+/ecdJbVuHgURqL4Og1IIs4EKyjFrgubWVgKatV0TUHig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8Fds9eR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8Fds9eR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A72C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788481833;
	bh=M5nAJYQhSBSOJZzFHTBi79leq8ODnk7cX6B+sXBglkg=;
	h=To:Subject:From:Date:From;
	b=N8Fds9eRgKH/FpfW7S8PdcGqyXUrkO6Zwunzmiplxdab1P2MvSMl6HtfxoVgppigh
	 iuUHoIsLZ/yex6iF8YAy52RE7KN5ONIpy0DqPILN8OgSuN3UsJJ7iDDTzMyG0zyprC
	 NbfzveB9wo3rLpSg3T369Adl31N1GmUkcrSyBn+c7LvC3rsiN/FrQ66XRC22D5EIuf
	 zyWclP4ENPInFeVFo6uP7Qo0VeGEcPkL98wO2HP10JiWUEYXz2cuf3gWs7e3fE77J4
	 IaOKq/Mh7ISJtIEdhiK9aQ5SO3XLsJw9KsTon7lWCkipHjjcmXOuxoKiiPJsfA946M
	 6dLBdD8rs3nVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE937C624D4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848183370.8721.14000575897809316488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64c6bdd84f3f2c4614922355951c78bb0a49728a49b6072a43c05f6336ebf573
Date: Fri, 04 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788481833
