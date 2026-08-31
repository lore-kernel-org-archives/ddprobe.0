Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7DF357A3E
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788150034; cv=none; b=NEcSuVqtX3hX6vnLXtLWo4cV9ndzVHSeTvkdEbjxf8H8NZs3Ni639hmdPo+o/YC+CCG34uzgqbz42TLMoj4uXVrWKXAERG34ORH8gvGTfCNxb+YCrYR8SadNmEPt4iy0WCHSaLYOvPtDSwUGOYc5DS/c84y4xrHJmUlZfTwVxAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788150034; c=relaxed/simple;
	bh=ziO/s20y6SwsKXEwM/Gd0J7guNcevUypzPoTTbquqdY=;
	h=To:Subject:From:Message-Id:Date; b=HrRbjczADvUfye1VClbmLqRByBogA4tliJhCmFk5xRFDxoGLB1HtD885CO+ZDVfsW9Yr9TEXHPeYx6oXXcRqfJFLiRPNdF9Zg4dKRIrHCgLBYghhBJykBFeqkWXnz+fCaC5B6txsLVeuhFUfIat2v0PjfZU1flbb7BReHyVQMmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLj8Ooyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLj8Ooyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF402C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788150033;
	bh=ziO/s20y6SwsKXEwM/Gd0J7guNcevUypzPoTTbquqdY=;
	h=To:Subject:From:Date:From;
	b=QLj8OoyfX7dOBRs9miGRa9BRiHcmD2TyETnkK0Ba0ilmL6TJR7uH5E/8B0aXqMYMT
	 u0/iWWnaLeGNwZjeio59gd3uxC3zR8k6yr510xfWenlfyY/XQBF2nBuHXS1BCKuxVh
	 +2qX00tm3U4Ib3vasy3dQn0lacKF/Ow0FQC2+ZP+0Bku3bAvOshSMXTHiVWkh0wMg1
	 WQ2osSbs/kqgPMOIjfYgidNnzZ8BgEspWeYMTiF5rXqcONag7VCZGw9R9V2joixY95
	 CKhuIwLvMaqjbU+M3087petK6uFGq1B7O6N7N396idkJRrqL5zom76g1DMgZJau69X
	 YC7lE69omLQog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3461C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815003372.24297.15792166574302864340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30df043b394981ac48a5335153f015f3319e2c8b3eb60a4cf6fa5ea38218570a
Date: Mon, 31 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788150033
