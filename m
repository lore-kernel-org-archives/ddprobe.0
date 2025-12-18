Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EFF1BC3F
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766021634; cv=none; b=dvSs28b2qiHxPttz9AL0MXO5IGw+LLJHvayCwmHcfhUEQ0RzzK6USnS6R6vXbjSgY+FQ2AtIrst27QQ6hGwMoD4M3m2IX5fPdRN30x3p+3wpQjWLheSyRVRLTSQ2l+CdhHugqHUksuYPdudtAIze8eGa7OT2okgzmmYg8vRbmls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766021634; c=relaxed/simple;
	bh=B5e2bSq958jEbs9/Gmh50mS8bR5fNp+jT3hGRSLcBMg=;
	h=To:Subject:From:Message-Id:Date; b=CeUkZ+SNnzAfRAjaFyQmzTrNFMUyy392NkwVXrzPiJdjsHMs9yS8LHmAwBS5bBaQCWI1SJDmpUk+pzkwGKC7nzjPBrWJxHxioJL4ipzKs2f9lCTGSxuPGp08Jn1cpUgvTa1ZkTBf9kHnpexkoVfpLc+hvfrbnHKp1DXY50r+Xto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sc3HVq/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sc3HVq/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF89C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766021633;
	bh=B5e2bSq958jEbs9/Gmh50mS8bR5fNp+jT3hGRSLcBMg=;
	h=To:Subject:From:Date:From;
	b=Sc3HVq/obW5PPXXHBOsMD7fXAy3keY2ExkFBzX3Ye9bPDIYNuG/CMQVNlO9aBe0Sm
	 jJEwDXxLX/4inEogua61HHKEuju0ZBks3bsxk1BFPWXvax/YH0D5MCNttpNR0S9oIq
	 5DLMSHzdVJBds/bUs907YTWg/Bu1jxqNlmac0nUJp7nAPfERlVVewLgSTUGBOmje6x
	 qz7tFoOMGX/+yux2OMEV3GBXoGs264vFkzcx25t1/sZYx+Dickkyb+OxAHm2pabJ5s
	 TYThlsxe/iirCtrt+pw3UM8UGUoKcltB2ffEKXzKG2o2EEAsB/PPehNpKUJGmSCbp1
	 Y6MEHDosQkDqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A43ED65C7F
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176602163359.22401.9577756313307182565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2bb213855228b769dcc6e0151f0fd6b4167680aba75012bd5d7f15de778654
Date: Thu, 18 Dec 2025 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766021633
