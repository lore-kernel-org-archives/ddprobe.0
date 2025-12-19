Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635522FFF9A
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766141634; cv=none; b=Y6WqI0H5GLlYcqtte0+L1GZnX7nUecmpplDxSXWeT5zmfQUb19rLfLBcjXSA1VPAq4r04PfPo6KGbKAZwrc0zBnZ1mEiu/zNpj0zusKl9a1+hDxHudKylWBs3OeJf3anaIBtb6ye1P5Z+vbWPciEDj58rVnNWih3amErz4Xo3RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766141634; c=relaxed/simple;
	bh=OgfMIbo6FG5+QkUCOryDGX7FY9h2HRUC5xpGm3Btgv0=;
	h=To:Subject:From:Message-Id:Date; b=MRDFKXBKVEwqX7gQRZIcEZ3Bo36wYHizTmo3E4nqgTAIordoxfwenZu7/nYTPdHMTLPD3wYEyMepWfIWO1P7GpkPzk/+ZG/xZK2DA6m9+MqgAfRODte6V7gFDKDVJ+cMcOrDAm6qJLkqksW4pX1rx3o6qVU/02cIOckwyl/UcaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBoAOEa3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBoAOEa3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3F9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766141633;
	bh=OgfMIbo6FG5+QkUCOryDGX7FY9h2HRUC5xpGm3Btgv0=;
	h=To:Subject:From:Date:From;
	b=rBoAOEa3+wIb+gvxy7F6/5jSWz7z7ec7RvdIGjsXhNoet8K9NftztjI3dMaPBo/VV
	 361paOpLedka9xIIdRZDfOoAvE23juGTeDih++PeOnHrgqj+S7Hp3KtIylvw++hL9I
	 G1xGJMRBy7Gw6p9ZL0sZRhHg5/+FGp79S2A9ZkaziMHh+Kffj94XuY5kPv9pipxFSS
	 sj63DBkz4oqSEqppeSOopc4OiaeWYbwjlsj69grlp5Iwqoh34mb10D/guQKrWj9X2S
	 08bMHqQ51kWlbMZNGCkmMsQeuPQ56b57Jk7NZz+YFwOFK50I3BnBB/ZdzgNu7u98mS
	 qQTVjIs9tfqFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB5CD767CB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176614163358.12438.9544604593664587019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8cff37ba3666da3ad309946c2541634e3644daf114723b8287f4a6411631793
Date: Fri, 19 Dec 2025 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766141633
