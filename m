Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9DA3A6B6E
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774559094; cv=none; b=NG8+1S6/NY53eich1MswrT/gKRUYjZXY3C7qprf7miNqX1HOizgeFSBW003NAjMcyFGU27iZ4NNTP8svyQ4OSJvLY2qpkYeZfWZffYALm+4zC1GT62hKaKkxbOezbBapQLBrDk7ogI7vh9wNyMMnNp2b3zP0/8WpBrPIg0+Hgo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774559094; c=relaxed/simple;
	bh=Ec+N40O7IsCJ1sR45TfwlyEgBv/kituGMtdr+2OIkoo=;
	h=To:Subject:From:Message-Id:Date; b=MC/pfYj2hjsmDHsJIuSned/+7enmi9TmECf89Ih1dvWtvm2Yi5waVo6DV/uqMFXpBdSnijmACo6AZjCcDhW+lN9DRcQGOBOQWovKpnQl5PpotoSNJYnDiy2moTD0W6GelP5RzFZoAGk9UFmhWeYHPqBM01p5f69kOF4ozrUsQ0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJ+3XOFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJ+3XOFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA90C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774559093;
	bh=Ec+N40O7IsCJ1sR45TfwlyEgBv/kituGMtdr+2OIkoo=;
	h=To:Subject:From:Date:From;
	b=WJ+3XOFy2SEhfltr3VGSAXA1zSMJkiFBAc7aSMjFLJRCdyokIjSgiy5dk7EVmsrdy
	 EnBf5a9GxATKVZIsKjbvAIMMpeY4DuDftSuCL23a8hxWvttuSjWyvhr2cex51AHGHK
	 JFELhUP4NeBLkBylA5IuJmY68+7FbRsQcFGHwM3tPj3Gv+/w0rUbcq5Yp7qjpeOj/C
	 uvGQf1IjOe+MztpROd/TiQIzO2gCTmYNh69O2jH29pkaIc2AjE+xxlcFYFD2daxPAC
	 eO8RaqlzE3rZSD5ISJOf2DxxjVgwVO6kwK96u6CIBMjTb9R4Awvg3iwH/PHAKZoZOf
	 T4lMI5Y9jFq/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9406210AB829
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455909359.15714.1769528417192480771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f3393509bae8b5b184fd2f64e63e02ead52502dfc78182979db52aed14b49c
Date: Thu, 26 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774559093
