Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6C61BF3D
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708370897; cv=none; b=iDR2q2Lq1viMW4EsKn90lvUWsrV0CPO1sY5hLFZjYvtINfakI7a1ZVQ7/kfHK9u1uJeeI9DHI7a2HrJC0wAdj5Zh/0zgdGqaqjUfGUUIxPntMdIIcl2FTrGQHTU+qSNWlQE32CizDVbqAjeUcunRzpIjTf/wk+H7Qb+YQKf5Drk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708370897; c=relaxed/simple;
	bh=K1tqybZQ5nbcTXtzQlElu6b98xtqkUOsl0d5li8HSG0=;
	h=To:Subject:From:Message-Id:Date; b=Po9Nl10nN3UI4wfEVA3EK+MoHgZYXS/cwUs3PVXe8tR04kEr3ja8h2KUPdfbTLQvhBor6DrFndpqLOo5KgavakSHwk9/duDGNQ6K8WGoxEnj76fLOLcnT/piArDr26+xaGt2oDH54wgLzzIVfxOXGN1gGaN+TQnKyTr3me+XNqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UO1I8/20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UO1I8/20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A5DC433F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708370896;
	bh=K1tqybZQ5nbcTXtzQlElu6b98xtqkUOsl0d5li8HSG0=;
	h=To:Subject:From:Date:From;
	b=UO1I8/20TbdN64Rg1qhWFf8MmFGN6usl23XL2FbLoFYjiKQtp30CdZSzh98JRvLW/
	 nbJwNd8jQa9yRBq2UPOXgfrN3/WCLcz8hWNFY35JAgjT1vhHTKWN7A1qkPvmecQbKf
	 HHYv+AOgwI7p92mvFBaLpQLrk09mpFSKOzl7we/RMYOFQUVNGZ5QsbNCNNS+sPUlEn
	 spJa8r0btU4vOy/vROCfrqo9bnp7amB50Os5VgJkvyL6VM7Y9YFYdFnU0BInIJWjCR
	 xePO3k1nkzzknHmW2eA1WqN/+S6rP8LxBhZJBlkvGAUpuKr4cj8M32AxGcRjZVPAiq
	 Yl8gFlJ2YG+JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DABAC48BF8
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170837089637.23956.14213064276813669484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f13280b84d8c4b3b9940fb6cc99728226d1ab97495045156cfbc473e8ba051
Date: Mon, 19 Feb 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708370896
